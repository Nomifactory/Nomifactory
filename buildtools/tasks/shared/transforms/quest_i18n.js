const fs = require("fs");
const path = require("path").posix;

const localPrefix = "omnifactory.quest.";
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
 * Escape text on quest books
 * 
 * @param {string} origin 
 * @returns {string}
 */
function escapeString(origin) {
    return origin
        .replace(/%/g, "%%")
        .replace(/\n/g, "%n");
}

function editKey(dbName, keyName) {
    const r = [];
    const db = data[dbName];
    const keys = Object.keys(db);

    for (const key of keys) {
        const storeKeyName = key.replace(/:10/g, "");

        const prefix = `${localPrefix}${keyName}.${storeKeyName}`;
        const props = db[key]["properties:10"]["betterquesting:10"];

        r.push(`# ${keyName} ${storeKeyName}`);

        r.push(`${prefix}.title=${escapeString(props["name:8"])}`);
        r.push(`${prefix}.desc=${escapeString(props["desc:8"])}`);

        r.push("");

        props["name:8"] = `${prefix}.title`;
        props["desc:8"] = `${prefix}.desc`;
    }

    return r;
}

async function mkdirp(dir) {
    await fs.promises.stat(path.join(dir, ".."))
        .catch(() => mkdirp(path.join(dir, "..")));

    await fs.promises.mkdir(dir);
}

const DEST_FOLDER        = global.CONFIG.buildDestinationDirectory;
const SHARED_DEST_FOLDER = path.join(DEST_FOLDER, "shared");

const questLocation    = "./config/betterquesting/DefaultQuests.json";
const langFileLocation = "./resources/questbook/lang";

/**
 * Extract lang entries from the quest book and transform the database.
 */
async function transfomLang(cb) {
    const questDatabasePath = path.join(SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, questLocation);
    const questLangLocation = path.join(SHARED_DEST_FOLDER, global.OVERRIDES_FOLDER, langFileLocation);

    data = JSON.parse((await fs.promises.readFile(questDatabasePath)).toString());

    const lines = [editKey("questDatabase:9", "db"), editKey("questLines:9", "line")]
        .reduce(flat, []);

    const text = lines.join("\n");

    await mkdirp(questLangLocation);

    await fs.promises.writeFile(path.join(questLangLocation, "en_us.lang"), text);
    await fs.promises.writeFile(questDatabasePath, JSON.stringify(data, null, 4));

    cb();
}

module.exports = transfomLang;
