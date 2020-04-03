/**
 * Bytes to exclude from hashing.
 * 
 * Why? I dunno.
 */
const MURMUR_SKIP_BYTES = {
	9: true
	, 10: true
	, 13: true
	, 32: true
};

const murmurhashV2 = require('murmurhash').v2;

/**
 * Returns the hash sum of bytes of given bytes using MurmurHash v2.
 * 
 * This is what Twitch is using to fingerprint mod files.
 * 
 * @param {Buffer} inputBuffer Input Buffer
 * @param {number} [seed] Optional seed.
 * @returns {Number} The MurmurHash hash of file contents.
 */
exports.murmurhash = (inputBuffer, seed = 1) => {
	var buff = new Uint8Array(inputBuffer.length);
	var output = "";

	for (let i = 0; i < inputBuffer.length; i++) {
		const byte = inputBuffer.readUInt8(i);

		if (!MURMUR_SKIP_BYTES[byte]) {
			output += String.fromCharCode(byte);
		}
	}

	return murmurhashV2(output, 1);
};

const sha1 = require("sha1");

/**
 * Returns the hash sum of bytes of given bytes using SHA1.
 * 
 * This is what Forge is using to check files.
 * 
 * @param {Buffer} inputBuffer Input Buffer
 * @returns {Number} The SHA1 hash of file contents.
 */
exports.sha1 = (inputBuffer) => {
	return sha1(inputBuffer);
};

/**
 * @typedef {object} HashDef
 * @property {string} id Hash algorithm.
 * @property {any|any[]} hashes Hashes to compare against.
 */

const hashFuncs = {
	murmurhash: exports.murmurhash
	, sha1: exports.sha1
}
 
/**
 * Compare buffer to the given HashDef. 
 * 
 * @param {Buffer} buffer 
 * @param {HashDef} hashDef
 * 
 * @throws {Error} Throws a generic error if hashes don't match.
 */
exports.compareBufferToHashDef = (buffer, hashDef) => {
	if (!hashFuncs[hashDef.id]) {
		throw new Error(`No hash function found for ${hashDef.id}.`);
	}
	
	const sum = hashFuncs[hashDef.id](buffer);
	if (Array.isArray(hashDef.hashes) && hashDef.hashes.includes(sum) || hashDef.hashes == sum) {
		return true;
	} else {
		throw new Error(`Hash sum mismatch. (expected ${hashDef.hashes.toString()}, got ${sum})`);
	}
}