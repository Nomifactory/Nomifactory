/**
 * Bytes to exclude from hashing.
 *
 * Why? I dunno.
 */
const MURMUR_SKIP_BYTES: { [key: number]: boolean } = {
	9: true,
	10: true,
	13: true,
	32: true,
};

import murmurhashV2 from "murmurhash-32/murmurhash2_gc";
import _sha1 from "sha1";

/**
 * Returns the hash sum of bytes of given bytes using MurmurHash v2.
 *
 * This is what Twitch is using to fingerprint mod files.
 */
export const murmurhash = (inputBuffer: Buffer, seed = 1): string => {
	const output = Array.from(inputBuffer).fill(0);

	let pos = 0;
	for (let i = 0; i < inputBuffer.length; i++) {
		const byte = inputBuffer.readUInt8(i);

		if (!MURMUR_SKIP_BYTES[byte]) {
			output[pos++] = byte;
		}
	}

	return murmurhashV2(output.slice(0, pos), seed);
};

import { HashDef } from "../types/hashDef";

/**
 * Returns the hash sum of bytes of given bytes using SHA1.
 *
 * This is what Forge is using to check files.
 */
export const sha1 = (inputBuffer: Buffer): string => {
	return _sha1(inputBuffer);
};

const hashFuncs: { [key: string]: (buffer: Buffer) => string } = {
	murmurhash: murmurhash,
	sha1: sha1,
};

/**
 * Compare buffer to the given HashDef.
 *
 * @param {Buffer} buffer
 * @param {HashDef} hashDef
 *
 * @throws {Error} Throws a generic error if hashes don't match.
 */
export const compareBufferToHashDef = (buffer: Buffer, hashDef: HashDef): boolean => {
	if (!hashFuncs[hashDef.id]) {
		throw new Error(`No hash function found for ${hashDef.id}.`);
	}

	const sum = hashFuncs[hashDef.id](buffer);
	return (Array.isArray(hashDef.hashes) && hashDef.hashes.includes(sum)) || hashDef.hashes == sum;
};
