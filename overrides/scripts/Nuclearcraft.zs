import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;

import mods.gregtech.recipe.RecipeMap;

val macerator = RecipeMap.getByName("macerator");
val mixer = RecipeMap.getByName("mixer");
val alloy = RecipeMap.getByName("alloy_smelter");
val thermal_sep = RecipeMap.getByName("thermal_centrifuge");
val compressor = RecipeMap.getByName("compressor");
val canner = RecipeMap.getByName("canner");
val fluid_canner = RecipeMap.getByName("fluid_canner");
val reactor = RecipeMap.getByName("chemical_reactor");

/*
[[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>],
[<>, <>, <>, <>, <>, <>]]); */

//////////////////////////////////////////////////////////////
/////////////       Nuclearcraft       //////////////////
//////////////////////////////////////////////////////////////

recipes.remove(<nuclearcraft:compound:2>);
mixer.recipeBuilder().inputs([<minecraft:redstone>,<minecraft:glowstone_dust>]).outputs(<nuclearcraft:compound:2> * 2).EUt(22).duration(40).buildAndRegister();

mods.nuclearcraft.manufactory.removeAllRecipes();
mods.nuclearcraft.isotope_separator.removeAllRecipes();
mods.nuclearcraft.decay_hastener.removeAllRecipes();
mods.nuclearcraft.fuel_reprocessor.removeAllRecipes();
mods.nuclearcraft.alloy_furnace.removeAllRecipes();
mods.nuclearcraft.infuser.removeAllRecipes();
mods.nuclearcraft.melter.removeAllRecipes();
mods.nuclearcraft.supercooler.removeAllRecipes();
mods.nuclearcraft.electrolyser.removeAllRecipes();
mods.nuclearcraft.irradiator.removeAllRecipes();
mods.nuclearcraft.ingot_former.removeAllRecipes();
mods.nuclearcraft.pressurizer.removeAllRecipes();
mods.nuclearcraft.chemical_reactor.removeAllRecipes();
mods.nuclearcraft.salt_mixer.removeAllRecipes();
mods.nuclearcraft.crystallizer.removeAllRecipes();
mods.nuclearcraft.dissolver.removeAllRecipes();
mods.nuclearcraft.extractor.removeAllRecipes();
mods.nuclearcraft.centrifuge.removeAllRecipes();
mods.nuclearcraft.rock_crusher.removeAllRecipes();
mods.nuclearcraft.decay_generator.removeAllRecipes();
mods.nuclearcraft.fusion.removeAllRecipes();
mods.nuclearcraft.salt_fission.removeAllRecipes();

recipes.remove(<nuclearcraft:reactor_casing_transparent>);
alloy.recipeBuilder().inputs([<nuclearcraft:fission_block>,<minecraft:glass>]).outputs([<nuclearcraft:reactor_casing_transparent>]).duration(50).EUt(16).buildAndRegister();
recipes.remove(<nuclearcraft:part>);
alloy.recipeBuilder().inputs([<ore:ingotFerroboron>,<ore:ingotLithium>]).outputs([<nuclearcraft:alloy:1>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:dustFerroboron>,<ore:ingotLithium>]).outputs([<nuclearcraft:alloy:1>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotFerroboron>,<ore:dustLithium>]).outputs([<nuclearcraft:alloy:1>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:dustFerroboron>,<ore:dustLithium>]).outputs([<nuclearcraft:alloy:1>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>,<ore:ingotBoron>]).outputs([<nuclearcraft:alloy:6>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:dustSteel>,<ore:ingotBoron>]).outputs([<nuclearcraft:alloy:6>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:ingotSteel>,<ore:dustBoron>]).outputs([<nuclearcraft:alloy:6>*2]).duration(300).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<ore:dustSteel>,<ore:dustBoron>]).outputs([<nuclearcraft:alloy:6>*2]).duration(300).EUt(16).buildAndRegister();
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2713> * 4,<gregtech:meta_item_1:2017> * 4,<thermalfoundation:material:1028>]).outputs(<gregtech:meta_item_1:2714> * 4).EUt(30).duration(400).buildAndRegister(); //Manyulyn
mixer.recipeBuilder().inputs([<gregtech:meta_item_1:2232> * 3,<minecraft:blaze_powder>]).outputs(<gregtech:meta_item_1:2713> * 4).EUt(30).duration(200).buildAndRegister();	//Ardite
mixer.recipeBuilder().inputs([<thermalfoundation:material:1028>,<gregtech:meta_item_1:2072>]).outputs(<thermalfoundation:material:72> * 2).EUt(30).duration(200).buildAndRegister();	//Mana Infused

	

canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustRedstone>*16]).outputs([<nuclearcraft:cooler:2>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustNetherQuartz>*16]).outputs([<nuclearcraft:cooler:3>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustGold>*16]).outputs([<nuclearcraft:cooler:4>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustGlowstone>*16]).outputs([<nuclearcraft:cooler:5>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustLapis>*16]).outputs([<nuclearcraft:cooler:6>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustDiamond>*16]).outputs([<nuclearcraft:cooler:7>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustEnderium>*16]).outputs([<nuclearcraft:cooler:9>]).duration(400).EUt(9).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustIron>*16]).outputs([<nuclearcraft:cooler:11>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustEmerald>*16]).outputs([<nuclearcraft:cooler:12>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustCopper>*16]).outputs([<nuclearcraft:cooler:13>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustTin>*16]).outputs([<nuclearcraft:cooler:14>]).duration(400).EUt(2).buildAndRegister();
canner.recipeBuilder().inputs([<nuclearcraft:cooler>,<ore:dustMagnesium>*16]).outputs([<nuclearcraft:cooler:15>]).duration(400).EUt(2).buildAndRegister();
fluid_canner.recipeBuilder().inputs([<nuclearcraft:cooler>]).fluidInputs([<liquid:water>*1000]).outputs([<nuclearcraft:cooler:1>]).duration(400).EUt(2).buildAndRegister();
fluid_canner.recipeBuilder().inputs([<nuclearcraft:cooler>]).fluidInputs([<liquid:helium>*1000]).outputs([<nuclearcraft:cooler:8>]).duration(400).EUt(2).buildAndRegister();
fluid_canner.recipeBuilder().inputs([<nuclearcraft:cooler>]).fluidInputs([<liquid:cryotheum>*1000]).outputs([<nuclearcraft:cooler:10>]).duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:1>);
recipes.remove(<nuclearcraft:cooler:2>);
recipes.remove(<nuclearcraft:cooler:3>);
recipes.remove(<nuclearcraft:cooler:4>);
recipes.remove(<nuclearcraft:cooler:5>);
recipes.remove(<nuclearcraft:cooler:6>);
recipes.remove(<nuclearcraft:cooler:7>);
recipes.remove(<nuclearcraft:cooler:8>);
recipes.remove(<nuclearcraft:cooler:9>);
recipes.remove(<nuclearcraft:cooler:10>);
recipes.remove(<nuclearcraft:cooler:11>);
recipes.remove(<nuclearcraft:cooler:12>);
recipes.remove(<nuclearcraft:cooler:13>);
recipes.remove(<nuclearcraft:cooler:14>);
recipes.remove(<nuclearcraft:cooler:15>);
recipes.remove(<nuclearcraft:part:1>);
recipes.remove(<nuclearcraft:part:2>);
recipes.remove(<nuclearcraft:part:3>);
recipes.remove(<nuclearcraft:cobblestone_generator>);
recipes.remove(<nuclearcraft:water_source>);
recipes.remove(<nuclearcraft:fission_controller_new_fixed>);
recipes.remove(<nuclearcraft:fission_block>);
recipes.remove(<nuclearcraft:fission_block:1>);
recipes.remove(<nuclearcraft:cell_block>);


recipes.addShaped(<nuclearcraft:cobblestone_generator>, [[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>], [<minecraft:water_bucket:*>, null, <minecraft:lava_bucket:*>], [<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>]]);
recipes.addShaped(<nuclearcraft:cobblestone_generator>, [[<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>], [<minecraft:lava_bucket:*>, null, <minecraft:water_bucket:*>], [<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>,<gregtech:meta_item_1:12184>]]);
recipes.addShaped(<nuclearcraft:water_source>, [
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>], 
	[<minecraft:water_bucket:*>, null, <minecraft:water_bucket:*>], 
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>]]);

//Uranium RTG
recipes.remove(<nuclearcraft:rtg_uranium>);
recipes.addShaped(<nuclearcraft:rtg_uranium>, [[<ore:plateBasic>, <ore:ingotGraphite>, <ore:plateBasic>], [<ore:ingotGraphite>, <gregtech:compressed_3:12>, <ore:ingotGraphite>], [<ore:plateBasic>, <ore:ingotGraphite>, <ore:plateBasic>]]);
	
	
//Basic Plating
recipes.addShaped(<nuclearcraft:part> * 2, [
	[<ore:ingotTough>,<ore:plateTungsten>,<ore:ingotTough>],
	[<ore:plateTungsten>,<contenttweaker:steelplating>,<ore:plateTungsten>],
	[<ore:ingotTough>,<ore:plateTungsten>,<ore:ingotTough>]]);	
	
//Advanced Plating
recipes.addShaped(<nuclearcraft:part:1> * 2, [
	[<ore:ingotHardCarbon>,<ore:plateYttriumBariumCuprate>,<ore:ingotHardCarbon>],
	[<ore:plateYttriumBariumCuprate>,<nuclearcraft:part>,<ore:plateYttriumBariumCuprate>],
	[<ore:ingotHardCarbon>,<ore:plateYttriumBariumCuprate>,<ore:ingotHardCarbon>]]);
	
recipes.addShaped(<nuclearcraft:part:3>, [
	[<nuclearcraft:gem_dust:1>,<ore:plateEnderium>,<nuclearcraft:gem_dust:1>],
	[<ore:plateEnderium>,<nuclearcraft:part:2>,<ore:plateEnderium>],
	[<nuclearcraft:gem_dust:1>,<ore:plateEnderium>,<nuclearcraft:gem_dust:1>]]);

recipes.addShaped(<nuclearcraft:fission_block> * 8, [
	[<nuclearcraft:part>,<nuclearcraft:part>,<nuclearcraft:part>],
	[<nuclearcraft:part>,<gregtech:metal_casing:7>,<nuclearcraft:part>],
	[<nuclearcraft:part>,<nuclearcraft:part>,<nuclearcraft:part>]]);		
	
recipes.addShaped(<nuclearcraft:fission_controller_new_fixed>	, [
	[<nuclearcraft:part:1>,<ore:circuitExtreme>,<nuclearcraft:part:1>],
	[<ore:circuitExtreme>,<gregtech:metal_casing:7>,<ore:circuitExtreme>],
	[<nuclearcraft:part:1>,<ore:circuitExtreme>,<nuclearcraft:part:1>]]);		
	
alloy.recipeBuilder().inputs([<ore:gemDiamond>,<ore:ingotGraphite> * 2]).outputs([<nuclearcraft:alloy:2> * 2]).duration(300).EUt(500).buildAndRegister();
alloy.recipeBuilder().inputs([<nuclearcraft:part:1>,<contenttweaker:stabilizeduranium>]).outputs([<nuclearcraft:part:2> * 2]).duration(400).EUt(2000).buildAndRegister();
alloy.recipeBuilder().inputs([<nuclearcraft:alloy:2>,<ore:ingotTough>]).outputs([<nuclearcraft:alloy:10>]).duration(200).EUt(1000).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10038>,<gregtech:meta_item_1:2009> * 2]).outputs([<nuclearcraft:alloy:3> * 3]).duration(100).EUt(200).buildAndRegister();
alloy.recipeBuilder().inputs([<gregtech:meta_item_1:10207>,<thermalfoundation:material:167>]).outputs([<nuclearcraft:alloy:11> * 2]).duration(100).EUt(200).buildAndRegister();
alloy.recipeBuilder().inputs([<thermalfoundation:material:166>,<nuclearcraft:ingot:10>]).outputs([<nuclearcraft:alloy:12> * 2]).duration(100).EUt(200).buildAndRegister();
reactor.recipeBuilder().inputs([<ore:orePyrolusite> * 6]).fluidInputs([<liquid:sulfuric_acid> * 3000]).outputs(<nuclearcraft:gem_dust:1>).fluidOutputs([<liquid:manganese> * 4320]).EUt(2000).duration(200).buildAndRegister();
reactor.recipeBuilder().inputs([<ore:oreRedstone> * 12]).fluidInputs([<liquid:sulfuric_acid> * 6000]).outputs(<nuclearcraft:gem_dust:1>).fluidOutputs([<liquid:redstone> * 19008]).EUt(2000).duration(200).buildAndRegister();
reactor.recipeBuilder().inputs([<contenttweaker:t2laser>]).fluidInputs([<liquid:radon> * 1000]).outputs(<contenttweaker:t3laser>).EUt(2000).duration(200).buildAndRegister();
reactor.recipeBuilder().inputs([<nuclearcraft:thorium>]).fluidInputs([<liquid:oxygen> * 16000]).outputs(<nuclearcraft:thorium:1>).EUt(500).duration(100).buildAndRegister();
recipes.remove(<nuclearcraft:fission_port>);
recipes.remove(<nuclearcraft:part:4>);
recipes.remove(<nuclearcraft:part:5>);
recipes.addShapeless(<nuclearcraft:fission_port>, [
	<nuclearcraft:fission_block>,<minecraft:hopper>]);

recipes.addShaped(<nuclearcraft:part:4>, [
	[<ore:wireFineCopper>, <ore:wireFineCopper>, <ore:wireFineCopper>], 
	[<ore:wireFineCopper>, <gregtech:meta_item_1:14183>, <ore:wireFineCopper>], 
	[<ore:wireFineCopper>, <ore:wireFineCopper>, <ore:wireFineCopper>]]);

recipes.addShaped(<nuclearcraft:part:5>, [
	[<ore:wireFineTungsten>, <ore:wireFineTungsten>, <ore:wireFineTungsten>], 
	[<ore:wireFineTungsten>, <nuclearcraft:alloy:3>, <ore:wireFineTungsten>], 
	[<ore:wireFineTungsten>, <ore:wireFineTungsten>, <ore:wireFineTungsten>]]);

thermal_sep.recipeBuilder().inputs([<gregtech:meta_item_1:2076>]).outputs(<nuclearcraft:uranium:4>).EUt(48).duration(3200).buildAndRegister();
thermal_sep.recipeBuilder().inputs([<gregtech:meta_item_1:10076>]).outputs(<nuclearcraft:uranium:4>).EUt(48).duration(3200).buildAndRegister();








