import scripts.CommonVars.makeShaped as makeShaped;

print("--- loading ActuallyAdditions.zs ---");
	
# *======= Empowerer =======*
	
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:1> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:2> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:3> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:4> * 4);
mods.thermalexpansion.Compactor.removeGearRecipe(<actuallyadditions:item_crystal_empowered:5> * 4);



//Empowered Restonia
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_restonia_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered>, // Empowered Restonia Block
	<actuallyadditions:block_crystal>, //Restonia Block
	<metaitem:gemAlmadine>,
	<metaitem:ingotRedAlloy>,
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), // Sulfuric Acid Cell
	<extendedcrafting:material:19>, // Conflux Component
	1000000, 400);

//Empowered Palis 
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:1>, // Empowered Palis Block
	<actuallyadditions:block_crystal:1>, // Palis Block
	<metaitem:gemSapphire>,
	<ore:ingotMithril>, // Mana Infused Ingot
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), // Water Cell
	<extendedcrafting:material:16>, // Elite Component
	1000000, 400);

//Empowered Enori
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:5>, // Empowered Enori Block
	<actuallyadditions:block_crystal:5>, // Enori Block
	<metaitem:gemApatite>,
	<ore:ingotEndSteel>,
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}), // Helium Cell
	<extendedcrafting:material:14>, // Basic Component
	1000000, 400);

//Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:3>, // Empowered Void Block
	<actuallyadditions:block_crystal:3>, // Void Block
	<ore:gemQuartzBlack>,
	<ore:ingotDarkSteel>,
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "carbon", Amount: 1000}}), // Carbon Cell
	<extendedcrafting:material:15>, // Advanced Component
	1000000, 400);

//Empowered Diamatine
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:2>, // Empowered Diamantine Block
	<actuallyadditions:block_crystal:2>, // Diamantine Block
	<extendedcrafting:material:40>, // Endest Star
	<ore:ingotCrystaltine>,
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "nitrogen_dioxide", Amount: 1000}}), // Nitrogen Dioxide cell
	<extendedcrafting:material:18>, // Crystaltine Component
	1000000, 400);

//Empowered Emerald
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.addRecipe(
	<actuallyadditions:block_crystal_empowered:4>, // Empowered Emeradic Block
	<actuallyadditions:block_crystal:4>, // Emeradic Block
	<contenttweaker:stabilizeduranium>, // Stabilized Uranium
	<ore:ingotVibrantAlloy>,
	<gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "argon", Amount: 1000}}), // Argon Cell
	<extendedcrafting:material:17>, // Ultimate Component
	1000000, 400);

//Snad
recipes.remove(<snad:snad>);
recipes.remove(<snad:snad:1>);
recipes.addShaped(<snad:snad>, [[<extrautils2:compressedsand:1>],[<extrautils2:compressedsand:1>]]);

//Long Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
makeShaped("long_range_breaker",
	<actuallyadditions:block_directional_breaker>, [
		"VDV",
		"AAA",
		"VEV",
	], {
		A: <contenttweaker:steelplating>,   // Auto Breaker
		V: <metaitem:plateVibrantAlloy>,
		D: <actuallyadditions:block_crystal:2>, // Diamantine Block
		E: <actuallyadditions:block_crystal:4> //Emeradic Block
	});

//AA Ender Pearl Block
recipes.remove(<actuallyadditions:block_misc:6>);

// Phantomface
recipes.remove(<actuallyadditions:block_phantomface>);
makeShaped("phantomface",
	<actuallyadditions:block_phantomface>, [
		" C ",
		"DED",
		" A ",
	], {
		A: <actuallyadditions:item_misc:8>,   // Advanced coil
		C: <ore:chestWood>,
		D: <actuallyadditions:item_crystal_empowered:2>, // Empowered Diamantine Crystal
		E: <ore:blockEnderPearl> // Ender Pearl Block
	});

//AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);
makeShaped("aluminium_casing",
	<actuallyadditions:block_misc:9>, [
		"PPP",
		"PQP",
		"PPP",
	], {
		P: <metaitem:plateAluminium>,
		Q: <actuallyadditions:item_misc:5> // Black Quartz
	});

<actuallyadditions:block_misc:9>.displayName = "Aluminium Casing";

//AA Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
makeShaped("atomic_reconstructor",
	<actuallyadditions:block_atomic_reconstructor>, [
		"LLE",
		"LCG",
		"LLE",
	], {
		L: <metaitem:plateLead>,
		G: <metaitem:lensEnderEye>,
		C: <actuallyadditions:block_misc:9>, // Aluminium Casing
		E: <metaitem:emitter.mv>
	});

//Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);
makeShaped("display_stand",
	<actuallyadditions:block_display_stand>, [
		"RPR",
		"PCP",
		"RPR",
	], {
		R: <metaitem:stickDarkSteel>,
		P: <metaitem:plateVibrantAlloy>,
		C: <actuallyadditions:block_misc:9> // Aluminium Casing
	});

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);
makeShaped("empowerer",
	<actuallyadditions:block_empowerer>, [
		"PEP",
		"EDE",
		"PEP",
	], {
		P: <metaitem:plateTungstenCarbide>,
		E: <actuallyadditions:block_crystal:5>, // Enori Crystal Block
		C: <actuallyadditions:block_display_stand> // Display Stand
	});

//Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);
makeShaped("basic_coil",
	<actuallyadditions:item_misc:7>, [
		" CR",
		"CRC",
		"RC ",
	], {
		R: <ore:wireGtSingleConductiveIron>,
		C: <actuallyadditions:item_crystal> // Restonia Crystal
	});

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);
makeShaped("advanced_coil",
	<actuallyadditions:item_misc:8>, [
		"EEE",
		"ECE",
		"EEE",
	], {
		E: <ore:wireGtSingleEnergeticAlloy>,
		C: <actuallyadditions:item_misc:7> // Basic Coil
	});

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
makeShaped("farmer",
	<actuallyadditions:block_farmer>, [
		"VSV",
		"GCG",
		"VGV",
	], {
		V: <actuallyadditions:block_crystal:3>, // Void Crystal Block
		S: <minecraft:wheat_seeds>,
		C: <actuallyadditions:block_misc:9>, // Aluminium Casing
		G: <ore:gearDark>
	});

//Drill
recipes.remove(<actuallyadditions:item_drill:3>);
makeShaped("aa_drill",
	<actuallyadditions:item_drill:3>, [
		"VDT",
		"GCD",
		"EGV",
	], {
		V: <actuallyadditions:block_crystal:3>, // Void Crystal Block
		D: <actuallyadditions:block_crystal:2>, // Diamantine Crystal Block
		C: <actuallyadditions:item_misc:16>, // Drill Core
		G: <metaitem:gearEnergeticAlloy>,
		E: <ore:blockEnergeticAlloy>,
		T: <metaitem:toolHeadDrillDiamond>
	});

//Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
<actuallyadditions:item_misc:16>.addTooltip(format.red("Acquired by exploration of Lost Cities buildings or vanilla dungeons."));
<actuallyadditions:item_misc:16>.addTooltip(format.red("Also can be purchased for Nomicoins."));

//Vertical Digger
recipes.remove(<actuallyadditions:block_miner>);
makeShaped("vertical_digger",
	<actuallyadditions:block_miner>, [
		"CGC",
		"VTV",
		"CAC",
	], {
		V: <actuallyadditions:block_crystal:3>, // Void Crystal Block
		A: <actuallyadditions:item_drill:*>, // AA Drill
		C: <actuallyadditions:block_misc:9>, // Aluminium Casing
		G: <ore:gtceMiningDrills>, //GTCE Drill
		T: <thermalinnovation:drill:2> //Thermal Drill
	});

//Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);
makeShaped("ender_casing",
	<actuallyadditions:block_misc:8>, [
		"EPE",
		"PQP",
		"EPE",
	], {
		P: <metaitem:platePulsatingIron>,
		E: <metaitem:plateEnderPearl>,
		Q: <ore:blockQuartzBlack>
	});

//Medium Crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
makeShaped("medium_crate",
	<actuallyadditions:block_giant_chest_medium>, [
		"DWD",
		"CWC",
		"DWD",
	], {
		D: <actuallyadditions:block_crystal:2>, // Diamantine Block
		W: <ore:plankWood>,
		C: <actuallyadditions:block_giant_chest> // Crate
	});

// Large Crate
recipes.remove(<actuallyadditions:block_giant_chest_large>);
makeShaped("large_crate",
	<actuallyadditions:block_giant_chest_large>, [
		"DWD",
		"CCC",
		"DWD",
	], {
		D: <actuallyadditions:block_crystal_empowered:2>, // Empowered Diamantine Block
		W: <ore:plankWood>,
		C: <actuallyadditions:block_giant_chest_medium> // Medium Crate
	});

//Solar
recipes.remove(<actuallyadditions:block_furnace_solar>);
makeShaped("aa_solar",
	<actuallyadditions:block_furnace_solar>, [
		"GSG",
		" B ",
	], {
		G: <ore:gemRedstone>,
		B: <extrautils2:decorativesolid:3>, // Stoneburnt
		S: <solarflux:solar_panel_1>
	});

mods.jei.JEI.addDescription(<actuallyadditions:item_misc:13>, "Canola can be turned into Canola Oil via a Canola Press. This is a somewhat slow machine and requres RF to function");

mods.jei.JEI.addDescription(<actuallyadditions:block_canola_oil>, "Canola can be turned into Canola Oil via a Canola Press. This is a somewhat slow machine and requres RF to function");
	
mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:flint>, <gregtech:meta_item_1:2159>, 1000);

print("--- ActuallyAdditions.zs initialized ---");

