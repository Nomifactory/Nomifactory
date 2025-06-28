import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeExtremeRecipe5 as makeExtremeRecipe5;

//XU2 Machine Block
recipes.removeByRecipeName("extrautils2:machine_base");
makeShaped("machine_block",
	<extrautils2:machine>, [
		"SSS",
		"SQS",
		"SSS",
	], {
		S: <metaitem:plateSteel>,
		Q: <ore:gemQuartzBlack>
	});

	
var furnGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var survGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var culGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"});
var redGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"});
var lavaGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"});
var enderGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"});
var potGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"});
var pinkGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"});
var ocGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"});
var exploGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"});
var slimeGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"});
var deathGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"});
var enchGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
var dragGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"});
var iceGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"});
var netherGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});


recipes.remove(furnGen);
makeShaped("furnace_generator",
	furnGen, [
		"WWW",
		"WFW",
		"RRR",
	], {
		W: <metaitem:plateWroughtIron>,
		F: <minecraft:furnace>,
		R: <metaitem:plateRedAlloy>
	});

recipes.remove(survGen);	
makeShaped("survival_generator",
	survGen, [
		"SSS",
		"SCS",
		"RGR",
	], {
		S: <minecraft:cobblestone>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

recipes.remove(culGen);	
makeShaped("culinary_generator",
	culGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <minecraft:potato>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: slimeGen
	});

recipes.remove(redGen);	
makeShaped("redstone_generator",
	redGen, [
		"RBR",
		"RCR",
		"RGR",
	], {
		B: <ore:blockCobaltBrass>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: lavaGen
	});

recipes.remove(lavaGen);
makeShaped("lava_generator",
	lavaGen, [
		"LPL",
		"PCP",
		"RGR",
	], {
		L: <minecraft:lava_bucket:*>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen,
		P: <metaitem:plateGold>
	});

recipes.remove(enderGen);
makeShaped("ender_generator",
	enderGen, [
		"EEE",
		"ECE",
		"RGR",
	], {
		E: <metaitem:plateEnderPearl>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

recipes.remove(potGen);
makeShaped("potion_generator",
	potGen, [
		"BBB",
		"BCB",
		"RGR",
	], {
		B: <minecraft:brewing_stand:*>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

recipes.remove(pinkGen);	
makeShaped("pink_generator",
	pinkGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <ore:dyePink>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: potGen
	});

recipes.remove(ocGen);
makeShaped("overclocked_generator",
	ocGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <extrautils2:redstoneclock>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: exploGen
	});

recipes.remove(exploGen);
makeShaped("explosive_generator",
	exploGen, [
		"EPE",
		"ECE",
		"RGR",
	], {
		E: <metaitem:plateEnergeticAlloy>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen,
		P: <ore:blockPaper>
	});

recipes.remove(slimeGen);
makeShaped("slime_generator",
	slimeGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <minecraft:slime>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

recipes.remove(deathGen);
makeShaped("death_generator",
	deathGen, [
		"EPE",
		"ECE",
		"RGR",
	], {
		E: <metaitem:plateEndSteel>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: iceGen,
		P: <enderio:item_material:42> // Frank'N'Zombie
	});

recipes.remove(enchGen);
makeShaped("enchantment_generator",
	enchGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <minecraft:enchanting_table:*>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: potGen
	});

recipes.remove(dragGen);
makeShaped("dragon_breath_generator",
	dragGen, [
		"PRP",
		"PCP",
		"RGR",
	], {
		P: <minecraft:purpur_block:*>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: exploGen,
		R: <minecraft:end_rod:*> // Frank'N'Zombie
	});

recipes.remove(iceGen);
makeShaped("ice_generator",
	iceGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <minecraft:ice:*>,
		R: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

recipes.remove(netherGen);
makeShaped("netherstar_generator",
	netherGen, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <metaitem:plateNetherStar>,
		R: <ore:blockCobaltBrass>,
		C: <extrautils2:machine>, // Machine Block
		G: <draconicevolution:generator>
	});

makeShaped("draconic_generator",
	<draconicevolution:generator>, [
		"PPP",
		"PCP",
		"RGR",
	], {
		P: <ore:ingotDraconium>,
		R: <ore:blockCobaltBrass>,
		C: <extrautils2:machine>, // Machine Block
		G: furnGen
	});

//Resonator
recipes.remove(<extrautils2:resonator>);
makeShaped("resonator",
	<extrautils2:resonator>, [
		"RPR",
		"PCP",
		"RPR",
	], {
		R: <ore:gemRedstone>,
		P: <metaitem:plateRedAlloy>,
		C: <extrautils2:machine> // Machine Block
	});

//GP Solar
recipes.remove(<extrautils2:passivegenerator>);
makeShaped("gp_solar",
	<extrautils2:passivegenerator>, [
		" S ",
		"PRP",
	], {
		R: <ore:gemRedstone>,
		P: <extrautils2:decorativesolid:2>, // Polished Stone
		S: <solarflux:solar_panel_1>
	});

//GP Lunar
recipes.remove(<extrautils2:passivegenerator:1>);
makeShaped("gp_lunar",
	<extrautils2:passivegenerator:1>, [
		" L ",
		"LSL",
		" L ",
	], {
		L: <ore:dustLunar>,
		S: <extrautils2:passivegenerator>
	});

//Lava Mill
recipes.remove(<extrautils2:passivegenerator:2>);
makeShaped("gp_lava_mill",
	<extrautils2:passivegenerator:2>, [
		"SGS",
		"RHR",
		"SCS",
	], {
		S: <extrautils2:decorativesolid:3>, // Stoneburnt
		G: <ore:gearRedstone>,
		R: <ore:gemRedstone>,
		H: <meta_tile_entity:hull.mv>,
		C: <ore:blockInfusedLavaCrystal>
	});
	
//Water Mill
recipes.remove(<extrautils2:passivegenerator:3>);
makeShaped("gp_water_mill",
	<extrautils2:passivegenerator:3>, [
		"SGS",
		"PHP",
		"SGS",
	], {
		P: <metaitem:electric.pump.mv>,
		S: <extrautils2:decorativesolid:3>, // Stoneburnt
		H: <meta_tile_entity:hull.mv>,
		G: <ore:gemRedstone>
	});

//Wind Mill
recipes.remove(<extrautils2:passivegenerator:4>);
makeShaped("gp_wind_mill",
	<extrautils2:passivegenerator:4>, [
		"SRS",
		"AGH",
		"SRS",
	], {
		S: <extrautils2:decorativesolid:3>, // Stoneburnt
		G: <ore:gearRedstone>,
		R: <ore:gemRedstone>,
		H: <meta_tile_entity:hull.mv>,
		A: <metaitem:rotorSteel>
	});

	
//Fire Mill
recipes.remove(<extrautils2:passivegenerator:5>);
makeShaped("gp_fire_mill",
	<extrautils2:passivegenerator:5>, [
		"SGS",
		"RHR",
		"SCS",
	], {
		S: <extrautils2:decorativesolid:3>, // Stoneburnt
		G: <ore:gearRedstone>,
		R: <ore:gemRedstone>,
		H: <meta_tile_entity:hull.mv>,
		C: <ore:xuRedstoneCoil>
	});

//Dragon Mill
recipes.remove(<extrautils2:passivegenerator:8>);
makeShaped("gp_dragon_mill",
	<extrautils2:passivegenerator:8>, [
		"TTT",
		"ENE",
		"SES",
	], {
		T: <ore:blockTitanium>,
		S: <extrautils2:decorativesolid:3>, // Stoneburnt
		N: <ore:blockNetherStar>,
		E: <ore:eyeofredstone>
	});

//Chunk Loader
recipes.remove(<extrautils2:chunkloader>);
makeShaped("xu_chunkloader",
	<extrautils2:chunkloader>, [
		"RER",
		"RBR",
		" B ",
	], {
		R: <metaitem:stickEnergeticAlloy>,
		B: <ore:blockEnergeticAlloy>,
		E: <ore:eyeofredstone>
	});

//Iron Drum
recipes.removeByRecipeName("extrautils2:drum_256");
makeShaped("iron_drum",
	<extrautils2:drum:1>, [
		"WPW",
		"WCW",
		"WPW",
	], {
		W: <metaitem:plateWroughtIron>,
		P: <minecraft:heavy_weighted_pressure_plate:*>,
		C: <minecraft:cauldron:*>
	});

//Reinforced Drum
recipes.removeByRecipeName("extrautils2:drum_4096");
makeShaped("reinforced_drum",
	<extrautils2:drum:2>, [
		"VTV",
		"VDV",
		"VTV",
	], {
		V: <metaitem:plateVibrantAlloy>,
		D: <extrautils2:drum:1>,
		T: <meta_tile_entity:drum.stainless_steel>
	});

//Demonic	
recipes.removeByRecipeName("extrautils2:drum_65536");
makeExtremeRecipe5(<extrautils2:drum:3>,
	[
		"BPPPB",
		"BTTTB",
		"BTDTB",
		"BTTTB",
		"BPPPB",
	], {
		B: <ore:blockDemonicMetal>,
		P: <ore:plateDemonicMetal>,
		T: <meta_tile_entity:drum.titanium>,
		D: <extrautils2:drum:2> // Reinforced Drum
	});