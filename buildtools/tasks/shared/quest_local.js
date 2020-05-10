const fs = require('fs');
const path = require('path');

const localPrefix = 'omnifactory.quest.';
let data = {};

/**
 * Flatten Lists
 * 
 * @param {string[]} cur 
 * @param {string[]} pre 
 * @returns {string[]}
 */
function flat(cur, pre) {
    return [...pre, ...cur];
}

/**
 * Covert text on quest books
 * 
 * @param {string} origin 
 * @returns {string}
 */
function covertString(origin) {
    return JSON.stringify(origin.split("\n").join('%n')).substr(1, origin.length);
}

function editKey(dbName, keyName) {
    const r = [];
    const db = data[dbName];
    const keys = Object.keys(db);

    for (const key of keys) {
        const storeKeyName = key.replace(/:10/g, '');

        const prefix = `${localPrefix}${keyName}.${storeKeyName}`;
        const props = db[key]["properties:10"]['betterquesting:10'];

        r.push(`# ${keyName} ${storeKeyName}`);

        r.push(`${prefix}.title=${covertString(props['name:8'])}`);
        r.push(`${prefix}.desc=${covertString(props['desc:8'])}`);

        r.push('');

        props['name:8'] = `${prefix}.title`;
        props['desc:8'] = `${prefix}.desc`;
    }

    return r;
}

async function mkdirp(dir) {
    await fs.promises.stat(path.join(dir, '..'))
        .catch(() => mkdirp(path.join(dir, '..')));

    await fs.promises.mkdir(dir);
}

/**
 * Transform questbook file
 * 
 * @param {string} file 
 * @param {string} langFile
 * @returns {() => Promise<string>}
 */
function transformFile(file, langFile) {
    return async function() {
        data = JSON.parse((await fs.promises.readFile(file)).toString());

        const lines = [editKey('questDatabase:9', 'db'), editKey('questLines:9', 'line')]
            .reduce(flat, []);

        const text = lines.join('\n');

        await mkdirp(langFile);

        await fs.promises.writeFile(path.join(langFile, 'en_US.lang'), text);
        await fs.promises.writeFile(file, JSON.stringify(data, null, 4));
    }
}

module.exports = {
    transformFile,
    questLocation: './config/betterquesting/DefaultQuests.json',
    langFileLocation: './resources/minecraft/lang'
}