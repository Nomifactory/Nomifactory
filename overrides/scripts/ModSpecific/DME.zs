import crafttweaker.data.IData;
import scripts.CommonVars.makeShaped as makeShaped;

//Remove Data Module Recipes
recipes.remove(<deepmoblearning:data_model_zombie>);
recipes.remove(<deepmoblearning:data_model_skeleton>);
recipes.remove(<deepmoblearning:data_model_creeper>);
recipes.remove(<deepmoblearning:data_model_spider>);
recipes.remove(<deepmoblearning:data_model_slime>);
recipes.remove(<deepmoblearning:data_model_witch>);
recipes.remove(<deepmoblearning:data_model_blaze>);
recipes.remove(<deepmoblearning:data_model_wither_skeleton>);
recipes.remove(<deepmoblearning:data_model_enderman>);
recipes.remove(<deepmoblearning:data_model_wither>);
recipes.remove(<deepmoblearning:data_model_dragon>);
recipes.remove(<deepmoblearning:data_model_shulker>);
recipes.remove(<deepmoblearning:data_model_guardian>);
recipes.remove(<deepmoblearning:data_model_ghast>);
recipes.remove(<deepmoblearning:data_model_thermal_elemental>);

// Tag to mark Data Model as Basic tier with 0 iterations so crafting skips Faulty
val tag as IData = {totalSimulationCount: 0 as int, tier: 1 as int, dataCount: 0 as int} as IData;

recipes.addShapeless(<deepmoblearning:data_model_zombie>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:rotten_flesh>]);

recipes.addShapeless(<deepmoblearning:data_model_skeleton>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:bone>]);

recipes.addShapeless(<deepmoblearning:data_model_creeper>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:gunpowder>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>]);

recipes.addShapeless(<deepmoblearning:data_model_spider>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:web>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>]);

recipes.addShapeless(<deepmoblearning:data_model_slime>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:slime_ball>]);

recipes.addShapeless(<deepmoblearning:data_model_witch>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:glass_bottle>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>]);

recipes.addShapeless(<deepmoblearning:data_model_blaze>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:blaze_powder>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>]);

recipes.addShapeless(<deepmoblearning:data_model_ghast>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:ghast_tear>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>]);

recipes.addShapeless(<deepmoblearning:data_model_wither_skeleton>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:skull:1>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>, <deepmoblearning:living_matter_hellish>]);

recipes.addShapeless(<deepmoblearning:data_model_enderman>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:ender_pearl>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>]);

recipes.addShapeless(<deepmoblearning:data_model_wither>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:nether_star>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>]);

recipes.addShapeless(<deepmoblearning:data_model_dragon>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <contenttweaker:dragonlairdata>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>]);

recipes.addShapeless(<deepmoblearning:data_model_shulker>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:diamond>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>, <deepmoblearning:living_matter_extraterrestrial>]);

recipes.addShapeless(<deepmoblearning:data_model_guardian>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <minecraft:prismarine_shard>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>]);

recipes.addShapeless(<deepmoblearning:data_model_thermal_elemental>.withTag(tag),
	[<deepmoblearning:data_model_blank>, <thermalfoundation:material:1025> | <thermalfoundation:material:1026> | <thermalfoundation:material:1027>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>, <deepmoblearning:living_matter_overworldian>]);

recipes.remove(<deepmoblearning:extraction_chamber>);
makeShaped("loot_fabricator",
	<deepmoblearning:extraction_chamber>, [
		"ABA",
		"CDC",
		"AEA"
	], {
		A: <enderio:item_alloy_ingot:1>,
		B: <minecraft:glass_pane>,
		C: <ore:circuitGood>,
		D: <deepmoblearning:machine_casing>,
		E: <minecraft:hopper>
	});

recipes.remove(<deepmoblearning:machine_casing>);
<deepmoblearning:machine_casing>.displayName = "Dark Steel Machine Hull";
makeShaped("dark_steel_machine_hull",
	<deepmoblearning:machine_casing>, [
		"AAA",
		"ABA",
		"AAA"
	], {
		A: <ore:plateDarkSteel>,
		B: <gregtech:machine:501>
	});

recipes.remove(<metaitem:carbon.mesh>);
alloy.recipeBuilder()
	.outputs([<metaitem:carbon.mesh>])
	.inputs([<minecraft:string> * 4, <ore:dustCoal>])
	.duration(100).EUt(16).buildAndRegister();

alloy.recipeBuilder()
	.outputs([<metaitem:carbon.mesh>])
	.inputs([<minecraft:string> * 4, <ore:dustCarbon>])
	.duration(100).EUt(16).buildAndRegister();

alloy.recipeBuilder()
	.outputs([<contenttweaker:pulsatingmesh>])
	.inputs([<metaitem:carbon.mesh>, <ore:dustPulsating> * 4])
	.duration(200).EUt(16).buildAndRegister();

recipes.remove(<deepmoblearning:polymer_clay>);
<deepmoblearning:polymer_clay>.displayName = "Pulsating Polymer Clay";

alloy.recipeBuilder()
	.outputs([<deepmoblearning:polymer_clay> * 4])
	.inputs([<ore:dustPulsating>, <minecraft:clay>])
	.duration(240).EUt(24).buildAndRegister();

recipes.remove(<deepmoblearning:simulation_chamber>);
makeShaped("simulation_chamber",
	<deepmoblearning:simulation_chamber>, [
		"ABA",
		"CDC",
		"ACA"
	], {
		A: <ore:meshPulsating>,
		B: <minecraft:glass_pane>,
		C: <ore:circuitBasic>,
		D: <deepmoblearning:machine_casing>
	});

recipes.remove(<deepmoblearning:data_model_blank>);
makeShaped("blank_data_model",
	<deepmoblearning:data_model_blank>, [
		"AAB",
		"CDB",
		"AAB"
	], {
		A: <ore:plateElectricalSteel>,
		B: <ore:wireFineGold>,
		C: <ore:meshPulsating>,
		D: <ore:circuitBasic>
	});

recipes.addShapeless(<minecraft:rotten_flesh> * 12,
	[<deepmoblearning:living_matter_overworldian>, <minecraft:chicken>]);

recipes.addShapeless(<minecraft:rotten_flesh> * 24,
	[<deepmoblearning:living_matter_overworldian>, <minecraft:beef>]);

recipes.addShapeless(<minecraft:string> * 5, [<minecraft:web>]);

recipes.remove(<minecraft:magma_cream>);
alloy.recipeBuilder()
	.outputs([<minecraft:magma_cream>])
	.inputs([<minecraft:slime>, <minecraft:redstone>])
	.duration(40).EUt(8).buildAndRegister();

recipes.addShapeless(<minecraft:skull:1>,
	[<minecraft:skull>, <minecraft:skull>, <minecraft:skull>, <deepmoblearning:living_matter_hellish>]);

//Removes the unobtainable dirt recipe
recipes.removeByRecipeName("thermalfoundation:block_dirt");

//Add in a new dirt recipe
recipes.addShapeless(<minecraft:dirt> * 16, [
	<ore:treeSapling>, <ore:treeSapling>,
	<minecraft:clay>, <deepmoblearning:living_matter_overworldian>]);
