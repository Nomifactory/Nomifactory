module.exports = {
	/**
	 * Max retries per downloaded file.
	 * 
	 * Applies to:
	 * * Forge jar
	 * * Forge libraries
	 * * Minecraft server jar
	 * * Modpack mods
	 * 
	 * @default 5
	 */
	downloaderMaxRetries: 5,

	/**
	 * Max amount of concurrent downloads.
	 * 
	 * Applies to:
	 * * Forge libraries
	 * * Modpack mods
	 * 
	 * @default 50
	 */
	downloaderConcurrency: 50,

	/**
	 * Compare checksums?
	 */
	downloaderCheckHashes: true,

	/**
	 * Defines the min amount of RAM.
	 * 
	 * Replaces `{{minRAM}}` in launch scripts.
	 * 
	 * @default "2048M"
	 */
	launchscriptsMinRAM: "2048M",

	/**
	 * Defines the max amount of RAM.
	 * 
	 * Replaces `{{maxRAM}}` in launch scripts.
	 * 
	 * @default "2048M"
	 */
	launchscriptsMaxRAM: "2048M",

	/**
	 * Extra JVM args.
	 * 
	 * Replaces `{{JVMArgs}}` in launch scripts.
	 */
	launchscriptsJVMArgs: "",

	/**
	 * Files to copy from overrides into the server.
	 * Relative to the overrides folder.
	 */
	copyOverridesServerGlobs: [
		"config/**/*",
		"mods/**/*",
		"scripts/**/*",
	],

	/**
	 * Files to copy from overrides into the client.
	 * Relative to the overrides folder.
	 */
	copyOverridesClientGlobs: [
		"/**/*"
	],

	/**
	 * As you might've guessed, build destination directory.
	 */
	buildDestinationDirectory: "../build",

	/**
	 * 
	 */
	buildSourceDirectory: "../"
}
