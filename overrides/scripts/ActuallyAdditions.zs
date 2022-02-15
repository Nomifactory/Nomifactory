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
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal>, <gregtech:meta_item_1:8085>, <gregtech:meta_item_1:10237>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "sulfuric_acid", Amount: 1000}}), <extendedcrafting:material:19>, 1000000, 400);


//Empowered Palis 
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:1>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_palis_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal:1>, <gregtech:meta_item_1:8157>, <thermalfoundation:material:136>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "water", Amount: 1000}}), <extendedcrafting:material:16>, 1000000, 400);


//Empowered Enori
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:5>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_enori_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:5>, <actuallyadditions:block_crystal:5>, <gregtech:meta_item_1:8226>, <enderio:item_alloy_ingot:8>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "helium", Amount: 1000}}), <extendedcrafting:material:14>, 1000000, 400);


//Empowered Void Crystal
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:3>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_void_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal:3>, <actuallyadditions:item_misc:5>, <enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "carbon", Amount: 1000}}), <extendedcrafting:material:15>, 1000000, 400);


//Empowered Diamatine
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:2>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_diamatine_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:2>, <actuallyadditions:block_crystal:2>, <extendedcrafting:material:40>, <extendedcrafting:material:24>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "nitrogen_dioxide", Amount: 1000}}), <extendedcrafting:material:18>, 1000000, 400);



//Empowered Emerald
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:item_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<actuallyadditions:block_crystal_empowered:4>);
mods.actuallyadditions.Empowerer.removeRecipe(<moreplates:empowered_emeradic_gear>);
mods.actuallyadditions.Empowerer.addRecipe(<actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal:4>, <contenttweaker:stabilizeduranium>, <enderio:item_alloy_ingot:2>, <gregtech:meta_item_1:32762>.withTag({Fluid: {FluidName: "argon", Amount: 1000}}), <extendedcrafting:material:17>, 1000000, 400);

	
//Snad	
recipes.remove(<snad:snad>);
recipes.remove(<snad:snad:1>);
recipes.addShaped(<snad:snad>, [[<extrautils2:compressedsand:1>],[<extrautils2:compressedsand:1>]]);

	
	
//Long Range Breaker
recipes.remove(<actuallyadditions:block_directional_breaker>);
recipes.addShaped(<actuallyadditions:block_directional_breaker>, [
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_crystal:2>,<gregtech:meta_item_1:12702>], 
[<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>,<actuallyadditions:block_breaker>], 
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_crystal:4>,<gregtech:meta_item_1:12702>]]);	
	
//AA Ender Pearl Block
recipes.remove(<actuallyadditions:block_misc:6>);	
recipes.remove(<actuallyadditions:block_phantomface>);	
recipes.addShaped(<actuallyadditions:block_phantomface>, [
[null, <ore:chestWood>, null], 
[<actuallyadditions:item_crystal_empowered:2>, <gregtech:meta_block_compressed_13:10>, <actuallyadditions:item_crystal_empowered:2>], 
[null, <actuallyadditions:item_misc:8>, null]]);
	
//AA Iron Casing
recipes.remove(<actuallyadditions:block_misc:9>);	
recipes.addShaped(<actuallyadditions:block_misc:9>, [
[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>], 
[<gregtech:meta_item_1:12001>,<actuallyadditions:item_misc:5>,<gregtech:meta_item_1:12001>], 
[<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>,<gregtech:meta_item_1:12001>]]);
<actuallyadditions:block_misc:9>.displayName = "Aluminium Casing";	

//AA Atomic Reconstructor	
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);	
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [
[<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:32681>], 
[<gregtech:meta_item_1:12035>,<actuallyadditions:block_misc:9>,<gregtech:meta_item_1:15219>], 
[<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:12035>,<gregtech:meta_item_1:32681>]]);

//Display Stand
recipes.remove(<actuallyadditions:block_display_stand>);	
recipes.addShaped(<actuallyadditions:block_display_stand>, [
[<gregtech:meta_item_1:14704>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:14704>], 
[<gregtech:meta_item_1:12702>,<actuallyadditions:block_misc:9>,<gregtech:meta_item_1:12702>], 
[<gregtech:meta_item_1:14704>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:14704>]]);

//Empowerer
recipes.remove(<actuallyadditions:block_empowerer>);	
recipes.addShaped(<actuallyadditions:block_empowerer>, [
[<gregtech:meta_item_1:12300>,<actuallyadditions:block_crystal:5>,<gregtech:meta_item_1:12300>], 
[<actuallyadditions:block_crystal:5>,<actuallyadditions:block_display_stand>,<actuallyadditions:block_crystal:5>], 
[<gregtech:meta_item_1:12300>,<actuallyadditions:block_crystal:5>,<gregtech:meta_item_1:12300>]]);

//Basic Coil
recipes.remove(<actuallyadditions:item_misc:7>);	
recipes.addShaped(<actuallyadditions:item_misc:7>, [
[null,<gregtech:cable:700>,<actuallyadditions:item_crystal>], 
[<gregtech:cable:700>,<actuallyadditions:item_crystal>,<gregtech:cable:700>], 
[<actuallyadditions:item_crystal>,<gregtech:cable:700>,null]]);

//Advanced Coil
recipes.remove(<actuallyadditions:item_misc:8>);	
recipes.addShaped(<actuallyadditions:item_misc:8>, [
[<gregtech:cable:701>,<gregtech:cable:701>,<gregtech:cable:701>], 
[<gregtech:cable:701>,<actuallyadditions:item_misc:7>,<gregtech:cable:701>], 
[<gregtech:cable:701>,<gregtech:cable:701>,<gregtech:cable:701>]]);

//XU2 Machine Block
recipes.removeByRecipeName("extrautils2:machine_base");
recipes.addShaped(<extrautils2:machine>, [
[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>], 
[<gregtech:meta_item_1:12184>,<actuallyadditions:item_misc:5>,<gregtech:meta_item_1:12184>], 
[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>]]);		
	
var furnGen = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var redPlate = <gregtech:meta_item_1:12237>;

//XU2 Generators
recipes.remove(furnGen);
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}));	
recipes.remove(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}));	

recipes.addShaped(furnGen, [
	[<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>,<gregtech:meta_item_1:12197>],
	[<gregtech:meta_item_1:12197>,<minecraft:furnace>,<gregtech:meta_item_1:12197>],
	[<gregtech:meta_item_1:12237>,<gregtech:meta_item_1:12237>,<gregtech:meta_item_1:12237>]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"}), [
	[<minecraft:cobblestone>, <minecraft:cobblestone>, <minecraft:cobblestone>], 
	[<minecraft:cobblestone>, <extrautils2:machine>, <minecraft:cobblestone>], 
	[redPlate, furnGen, redPlate]]);

recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"}), [
	[<minecraft:potato>, <minecraft:potato>, <minecraft:potato>], 
	[<minecraft:potato>, <extrautils2:machine>, <minecraft:potato>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), [
	[<minecraft:lava_bucket:*>, <gregtech:meta_item_1:12026>, <minecraft:lava_bucket:*>], 
	[<gregtech:meta_item_1:12026>, <extrautils2:machine>, <gregtech:meta_item_1:12026>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"}), [
	[redPlate, <gregtech:meta_block_compressed_14:14>, redPlate], 
	[redPlate, <extrautils2:machine>, redPlate], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"}), [
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12218>], 
	[<gregtech:meta_item_1:12218>, <extrautils2:machine>, <gregtech:meta_item_1:12218>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), [
	[<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>,<minecraft:brewing_stand:*>], 
	[<minecraft:brewing_stand:*>,<extrautils2:machine>,<minecraft:brewing_stand:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"}), [
	[<minecraft:dye:9>, <minecraft:dye:9>, <minecraft:dye:9>], 
	[<minecraft:dye:9>, <extrautils2:machine>, <minecraft:dye:9>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"}), [
	[<extrautils2:redstoneclock>,<extrautils2:redstoneclock>,<extrautils2:redstoneclock>], 
	[<extrautils2:redstoneclock>,<extrautils2:machine>,<extrautils2:redstoneclock>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), [
	[<gregtech:meta_item_1:12701>,<gregtech:meta_block_compressed_20:5>,<gregtech:meta_item_1:12701>], 
	[<gregtech:meta_item_1:12701>,<extrautils2:machine>,<gregtech:meta_item_1:12701>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"}), [
	[<minecraft:slime>,<minecraft:slime>,<minecraft:slime>],
	[<minecraft:slime>,<extrautils2:machine>,<minecraft:slime>],
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_death"}), [
	[<gregtech:meta_item_1:12712>,<enderio:item_material:42>,<gregtech:meta_item_1:12712>],
	[<gregtech:meta_item_1:12712>,<extrautils2:machine>,<gregtech:meta_item_1:12712>],
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"}), [
	[<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>,<minecraft:enchanting_table:*>], 
	[<minecraft:enchanting_table:*>,<extrautils2:machine>,<minecraft:enchanting_table:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"}), [
	[<minecraft:purpur_block:*>, <minecraft:end_rod:*>, <minecraft:purpur_block:*>], 
	[<minecraft:purpur_block:*>, <extrautils2:machine>, <minecraft:purpur_block:*>], 
	[redPlate, <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"}), redPlate]]);
	
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"}), [
	[<minecraft:ice:*>,<minecraft:ice:*>,<minecraft:ice:*>], 
	[<minecraft:ice:*>,<extrautils2:machine>,<minecraft:ice:*>], 
	[redPlate, furnGen, redPlate]]);
	
recipes.addShaped(<draconicevolution:generator>, [
	[<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>,<draconicevolution:draconium_ingot>], 
	[<draconicevolution:draconium_ingot>,<extrautils2:machine>,<draconicevolution:draconium_ingot>], 
	[<gregtech:meta_block_compressed_14:14>, furnGen, <gregtech:meta_block_compressed_14:14>]]);
		
recipes.addShaped(<extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"}), [
	[<gregtech:meta_item_1:12331>,<gregtech:meta_item_1:12331>,<gregtech:meta_item_1:12331>], 
	[<gregtech:meta_item_1:12331>,<extrautils2:machine>,<gregtech:meta_item_1:12331>], 
	[<gregtech:meta_block_compressed_14:14>, <draconicevolution:generator>, <gregtech:meta_block_compressed_14:14>]]);
	
	
	
	
	
//Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [
	[<extrautils2:ingredients>, <gregtech:meta_item_1:12237>, <extrautils2:ingredients>], 
	[<gregtech:meta_item_1:12237>, <extrautils2:machine>,<gregtech:meta_item_1:12237>], 
	[<extrautils2:ingredients>, <gregtech:meta_item_1:12237>, <extrautils2:ingredients>]]);

//Farmer
recipes.remove(<actuallyadditions:block_farmer>);
recipes.addShaped(<actuallyadditions:block_farmer>, [
	[<actuallyadditions:block_crystal:3>, <minecraft:wheat_seeds>, <actuallyadditions:block_crystal:3>], 
	[<enderio:item_material:73>, <actuallyadditions:block_misc:9>, <enderio:item_material:73>], 
	[<actuallyadditions:block_crystal:3>, <enderio:item_material:73>, <actuallyadditions:block_crystal:3>]]);

//Drill
recipes.remove(<actuallyadditions:item_drill:3>);
recipes.addShaped(<actuallyadditions:item_drill:3>, [
	[<actuallyadditions:block_crystal:3>, <actuallyadditions:block_crystal:2>, <gregtech:meta_item_2:8111>], 
	[<gregtech:meta_item_2:26701>, <actuallyadditions:item_misc:16>, <actuallyadditions:block_crystal:2>], 
	[<enderio:block_alloy:1>, <gregtech:meta_item_2:26701>, <actuallyadditions:block_crystal:3>]]);	
	
//Drill Core
recipes.remove(<actuallyadditions:item_misc:16>);
<actuallyadditions:item_misc:16>.addTooltip(format.red("Acquired by exploration of Lost Cities buildings or vanilla dungeons."));
<actuallyadditions:item_misc:16>.addTooltip(format.red("Also can be purchased for Nomicoins."));

//Vertical Digger	
recipes.remove(<actuallyadditions:block_miner>);
recipes.addShaped(<actuallyadditions:block_miner>, [
	[<actuallyadditions:block_misc:9>, <gregtech:meta_tool:23>, <actuallyadditions:block_misc:9>], 
	[<actuallyadditions:block_crystal:3>, <thermalinnovation:drill:2>, <actuallyadditions:block_crystal:3>], 
	[<actuallyadditions:block_misc:9>, <actuallyadditions:item_drill:*>, <actuallyadditions:block_misc:9>]]);
	
//Ender Casing
recipes.remove(<actuallyadditions:block_misc:8>);	
recipes.addShaped(<actuallyadditions:block_misc:8>, [
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12703>, <gregtech:meta_item_1:12218>],
	[<gregtech:meta_item_1:12703>, <actuallyadditions:block_misc:2>, <gregtech:meta_item_1:12703>], 
	[<gregtech:meta_item_1:12218>, <gregtech:meta_item_1:12703>, <gregtech:meta_item_1:12218>]]);
	
	
	
//TE Drill
recipes.addShapeless(<thermalfoundation:material:640>, [<actuallyadditions:item_misc:16>]);
recipes.addShapeless(<thermalfoundation:material:656>, [<gregtech:meta_item_2:8183>]);
	
	
//medium crate
recipes.remove(<actuallyadditions:block_giant_chest_medium>);
recipes.remove(<actuallyadditions:block_giant_chest_large>);
recipes.addShaped(<actuallyadditions:block_giant_chest_medium>, [
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>], 
	[<actuallyadditions:block_giant_chest>,<ore:plankWood>, <actuallyadditions:block_giant_chest>], 
	[<actuallyadditions:block_crystal:2>, <ore:plankWood>, <actuallyadditions:block_crystal:2>]]);
	
recipes.addShaped(<actuallyadditions:block_giant_chest_large>, [
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>], 
	[<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_medium>], 
	[<actuallyadditions:block_crystal_empowered:2>, <ore:plankWood>, <actuallyadditions:block_crystal_empowered:2>]]);
	
	
recipes.remove(<extrautils2:passivegenerator>);	
recipes.remove(<extrautils2:passivegenerator:1>);	
recipes.remove(<extrautils2:passivegenerator:2>);	
recipes.remove(<extrautils2:passivegenerator:3>);	
recipes.remove(<extrautils2:passivegenerator:4>);	
recipes.remove(<extrautils2:passivegenerator:5>);	
recipes.remove(<extrautils2:passivegenerator:8>);	
recipes.remove(<extrautils2:chunkloader>);	

//GP Solar
recipes.addShaped(<extrautils2:passivegenerator>, [
	[null,<solarflux:solar_panel_1>,null], 
	[<extrautils2:decorativesolid:2>, <extrautils2:ingredients>, <extrautils2:decorativesolid:2>]]);

//GP Lunar
recipes.addShaped(<extrautils2:passivegenerator:1>, [
	[null, <extrautils2:ingredients:3>, null], 
	[<extrautils2:ingredients:3>,<extrautils2:passivegenerator>,<extrautils2:ingredients:3>],
	[null, <extrautils2:ingredients:3>, null]]);
	
//Lava Mill
recipes.addShaped(<extrautils2:passivegenerator:2>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <gregtech:machine:502>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <armorplus:block_infused_lava_crystal>, <extrautils2:decorativesolid:3>]]);
	
//Water Mill
recipes.addShaped(<extrautils2:passivegenerator:3>, [
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<gregtech:meta_item_1:32611>, <gregtech:machine:502>, <gregtech:meta_item_1:32611>], 
	[<extrautils2:decorativesolid:3>,  <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>]]);
	
//Wind Mill	
recipes.addShaped(<extrautils2:passivegenerator:4>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>], 
	[<gregtech:meta_item_2:18184>, <extrautils2:ingredients:1>, <gregtech:machine:502>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients>, <extrautils2:decorativesolid:3>]]);
	
//Fire Mill
recipes.addShaped(<extrautils2:passivegenerator:5>, [
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:1>, <extrautils2:decorativesolid:3>], 
	[<extrautils2:ingredients>, <gregtech:machine:502>, <extrautils2:ingredients>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:13>, <extrautils2:decorativesolid:3>]]);
	
//Chunk Loader
recipes.addShaped(<extrautils2:chunkloader>, [
	[<gregtech:meta_item_1:14701>, <extrautils2:ingredients:2>, <gregtech:meta_item_1:14701>], 
	[<gregtech:meta_item_1:14701>, <enderio:block_alloy:1>, <gregtech:meta_item_1:14701>], 
	[null, <enderio:block_alloy:1>, null]]);

//Dragon Mill
recipes.addShaped(<extrautils2:passivegenerator:8>, [
	[<gregtech:meta_block_compressed_4:8>,<gregtech:meta_block_compressed_4:8>,<gregtech:meta_block_compressed_4:8>], 
	[<extrautils2:ingredients:2>, <extendedcrafting:storage:2>, <extrautils2:ingredients:2>], 
	[<extrautils2:decorativesolid:3>, <extrautils2:ingredients:2>, <extrautils2:decorativesolid:3>]]);
	
//Iron Drum
recipes.removeByRecipeName("extrautils2:drum_256");
recipes.addShaped(<extrautils2:drum:1>, [
	[<gregtech:meta_item_1:12197>, <minecraft:heavy_weighted_pressure_plate:*>, <gregtech:meta_item_1:12197>], 
	[<gregtech:meta_item_1:12197>, <minecraft:cauldron:*>, <gregtech:meta_item_1:12197>], 
	[<gregtech:meta_item_1:12197>, <minecraft:heavy_weighted_pressure_plate:*>, <gregtech:meta_item_1:12197>]]);
	
//Reinforced Drum
recipes.removeByRecipeName("extrautils2:drum_4096");
recipes.addShaped(<extrautils2:drum:2>, [
	[<gregtech:meta_item_1:12702>, <gregtech:machine:2198>, <gregtech:meta_item_1:12702>], 
	[<gregtech:meta_item_1:12702>, <extrautils2:drum:1>, <gregtech:meta_item_1:12702>], 
	[<gregtech:meta_item_1:12702>, <gregtech:machine:2198>, <gregtech:meta_item_1:12702>]]);
	
//Demonic	
recipes.removeByRecipeName("extrautils2:drum_65536");
mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:drum:3>,[
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<extrautils2:drum:2>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<gregtech:machine:2199>,<gregtech:machine:2199>,<gregtech:machine:2199>,<extrautils2:simpledecorative:1>],
	[<extrautils2:simpledecorative:1>,<moreplates:demon_plate>,<moreplates:demon_plate>,<moreplates:demon_plate>,<extrautils2:simpledecorative:1>]]);		
	
//Solar
recipes.remove(<actuallyadditions:block_furnace_solar>);
recipes.addShaped(<actuallyadditions:block_furnace_solar>, [
	[<extrautils2:ingredients>, <solarflux:solar_panel_1>, <extrautils2:ingredients>],
	[null,<extrautils2:decorativesolid:3>,null]]);
	
	
	
mods.jei.JEI.addDescription(<actuallyadditions:item_misc:13>, "Canola can be turned into Canola Oil via a Canola Press. This is a somewhat slow machine and requres RF to function");
	
	
print("--- ActuallyAdditions.zs initialized ---");

