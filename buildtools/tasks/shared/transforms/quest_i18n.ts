import fs from "fs";
import upath from "upath";
import { overridesFolder, sharedDestDirectory } from "../../../globals";
import { QuestBook } from "../../../types/bqQuestBook";

const questLocation = "config/betterquesting/DefaultQuests.json";
const langFileLocation = "resources/questbook/lang";

function escapeString(string: string) {
	return string.replace(/%/g, "%%").replace(/\n/g, "%n");
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
	Object.keys(questBook["questDatabase:9"]).forEach((key) => {
		const quest = questBook["questDatabase:9"][key];

		const properties = quest["properties:10"]["betterquesting:10"];

		const titleKey = `omnifactory.quest.line.${quest["questID:3"]}.title`;
		const descKey = `omnifactory.quest.line.${quest["questID:3"]}.desc`;

		// Push lang file lines.
		lines.push(
			...[
				`# Line ${quest["questID:3"]}`,
				`${titleKey}=${escapeString(properties["name:8"])}`,
				`${descKey}=${escapeString(properties["desc:8"])}`,
				"",
			],
		);

		properties["name:8"] = titleKey;
		properties["desc:8"] = descKey;
	});

	const text = lines.join("\n");

	await fs.promises.mkdir(questLangLocation, { recursive: true });

	await fs.promises.writeFile(upath.join(questLangLocation, "en_us.lang"), text);
	return fs.promises.writeFile(questDatabasePath, JSON.stringify(questBook, null, 4));
}
