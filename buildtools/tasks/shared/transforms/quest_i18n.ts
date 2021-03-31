import fs from "fs";
import upath from "upath";
import { overridesFolder, sharedDestDirectory } from "../../../globals";
import { Quest, QuestBook, QuestLines as QuestLine } from "../../../types/bqQuestBook";

const questLocation = "config/betterquesting/DefaultQuests.json";
const langFileLocation = "resources/questbook/lang";

function escapeString(string: string) {
	return string.replace(/%/g, "%%").replace(/\n/g, "%n");
}

function transformKeyPairs(
	database: { [key: string]: Quest } | { [key: string]: QuestLine },
	namespace: string,
	lines: string[],
) {
	Object.keys(database).forEach((key) => {
		const storeKey = key.replace(/:10/g, "");
		const item = database[key];

		const properties = item["properties:10"]["betterquesting:10"];

		const titleKey = `omnifactory.quest.${namespace}.${storeKey}.title`;
		const descKey = `omnifactory.quest.${namespace}.${storeKey}.desc`;

		// Push lang file lines.
		lines.push(
			`# ${namespace} ${storeKey}`,
			`${titleKey}=${escapeString(properties["name:8"])}`,
			`${descKey}=${escapeString(properties["desc:8"])}`,
			"",
		);

		properties["name:8"] = titleKey;
		properties["desc:8"] = descKey;
	});
}

/**
 * Extract lang entries from the quest book and transform the database.
 */
export default async function transfomLang(): Promise<void> {
	const questDatabasePath = upath.join(sharedDestDirectory, overridesFolder, questLocation);
	const questLangLocation = upath.join(sharedDestDirectory, overridesFolder, langFileLocation);

	const questBook: QuestBook = JSON.parse((await fs.promises.readFile(questDatabasePath)).toString());

	// Traverse through the quest book and rewrite titles/descriptions.
	// Extract title/desc pairs into a lang file.
	const lines: string[] = [];

	// Quest lines.
	transformKeyPairs(questBook["questLines:9"], "line", lines);

	// Quests themselves.
	transformKeyPairs(questBook["questDatabase:9"], "db", lines);

	await fs.promises.mkdir(questLangLocation, { recursive: true });
	await fs.promises.writeFile(upath.join(questLangLocation, "en_us.lang"), lines.join("\n"));
	return fs.promises.writeFile(questDatabasePath, JSON.stringify(questBook, null, 4));
}
