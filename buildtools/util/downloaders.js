const request = require("request-promise");
const Promise = require("bluebird");
const EventEmitter = require('events');

const { compareBufferToHashDef } = require("./hashes.js")

/**
 * @typedef {object} FileDef
 * @property {string} url File URL.
 * @property {HashDef[]} [hashes] Optional hashes to compare.
 */

/**
 * @typedef {object} ConcurrentRetryDownloaderOptions
 * @property {number} [maxRetries=5] Max retries.
 * @property {number} [maxRetries=30000] Read timeout. (milliseconds)
 * @property {number} [concurrency=5] Max amount of concurrent downloads.
 * @property {boolean} [checkHashes=true] Check hashes of downloaded files.
 * @property {boolean} [json=false] Don't save and output JSON instead.
 */

/**
 * Concurrent downloader.
 * 
 * Supply with files. Subscribe to events. Call download.
 * 
 * @extends EventEmitter
 * @fires ConcurrentRetryDownloader#complete
 */
class ConcurrentRetryDownloader extends EventEmitter {
	/**
	 * @param {ConcurrentRetryDownloaderOptions} options 
	 */
	constructor(options = {}) {
		super();
		this.maxRetries  = options.maxRetries || 5;
		this.readTimeout = options.readTimeout || 30000;
		this.concurrency = options.concurrency || 5;
		this.checkHashes = options.checkHashes == undefined ? true : options.checkHashes;
		this.json        = options.json;
	}

	/**
	 * @param {FileDef} fileDef 
	 */
	__emitStart(fileDef) {
		/**
		 * Download start event.
		 *
		 * @event ConcurrentRetryDownloader#complete
		 * @type {object}
		 * @property {object} fileDef File definition.
		 */
		this.emit("start", {
			fileDef: fileDef
		});
	}

	/**
	 * @param {FileDef} fileDef 
	 */
	__emitComplete(fileDef, index, total, output) {
		/**
		 * Download completion event.
		 *
		 * @event ConcurrentRetryDownloader#complete
		 * @type {object}
		 * @property {object} fileDef File definition.
		 * @property {number} index File index.
		 * @property {Buffer|object} output Output.
		 */
		this.emit("complete", {
			fileDef: fileDef
			, index: index
			, total: total
			, output: output
		});
	}

	/**
	 * @param {FileDef} fileDef 
	 */
	__emitRetry(fileDef, error, attempt) {
		/**
		 * Download retry event.
		 *
		 * @event ConcurrentRetryDownloader#complete
		 * @type {object}
		 * @property {object} fileDef File definition.
		 * @property {Error} error Error.
		 * @property {number} attempt No. of attempt.
		 */
		this.emit("retry", {
			fileDef: fileDef
			, attempt: attempt
			, error: error
		});
	}	

	/**
	 * Downloads files in arbitrary order.
	 * 
	 * @param {FileDef[]} files
	 * @returns {Promise<void>}
	 */
	download(files) {
		const total = files.length;
		var countDownloadedFiles = 0;

		/**
		 * Map given file definitions to an array of Promises.
		 */
		return Promise.map(files, fileDef => {
			return new Promise((resolve, reject) => {
				this.__emitStart(fileDef);

				const retry = (counter = 0) => {
					counter++;

					/**
					 * Make a request.
					 */
					const opts = {
						timeout    : this.readTimeout
						, json     : this.json
						, encoding : null
					}

					request(fileDef.url, opts)
						.then((buffer) => {
							/**
							 * Check hashes if requested and the hashDef array is present.
							 */
							if (this.checkHashes && fileDef.hashes) {
								/**
								 * Check given hashes and throw if something doesn't match.
								 */
								fileDef.hashes.forEach((hashInfo) => compareBufferToHashDef(buffer, hashInfo));
							}

							this.__emitComplete(fileDef, countDownloadedFiles++, total, buffer);
							resolve();	
						})
						.catch((error) => {
							if (counter >= this.maxRetries) {
								reject({
									fileDef: fileDef
									, error: error
								});
							} else {
								this.__emitRetry(fileDef, error, counter);
								setTimeout(() => retry(counter), 1000);
							}
						})	
				}

				return retry();
			})
		}, {concurrency: this.concurrency});
	}
}

exports.ConcurrentRetryDownloader = ConcurrentRetryDownloader;

/**
 * @typedef {object} ConcurrentRetryDownloaderOptions
 * @property {number} [maxRetries=5] Max retries.
 */

const retryRequest = (maxRetries = 5, ...args) => {
	return new Promise((resolve, reject) => {
		const retry = (counter = 0) => {
			counter++;

			request(...args)
				.then(resolve)
				.catch((err) => {
					if (counter == maxRetries) {
						reject(err);
					} else {
						retry();
					}
				})
		}

		retry();
	})
}

exports.retryRequest = retryRequest;
