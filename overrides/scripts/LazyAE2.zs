import mods.gregtech.recipe.RecipeMap;
import mods.appliedenergistics2.Inscriber;
import mods.jei.JEI;
import mods.threng.Aggregator;
import mods.threng.Centrifuge;
import mods.threng.Etcher;

// carbonic fluix complex
recipes.remove(<threng:material:1>);
Aggregator.removeRecipe(<threng:material:1>);
mixer.recipeBuilder()
  .inputs([<appliedenergistics2:material:8>, <gregtech:meta_item_1:2012>, <gregtech:meta_item_1:2061>])
  .outputs(<threng:material:1> * 2)
  .duration(60)
  .EUt(22)
  .buildAndRegister();
Aggregator.addRecipe(<threng:material:1> * 3, <appliedenergistics2:material:8>, <gregtech:meta_item_1:2012>, <gregtech:meta_item_1:2061>);

// fluix-plated iron
Inscriber.removeRecipe(<threng:material:2>);
alloy.recipeBuilder()
  .inputs([<ore:ingotIron>, <threng:material:1>])
  .outputs(<threng:material:2>)
  .duration(60)
  .EUt(22)
  .buildAndRegister();

// fluix steel
furnace.remove(<threng:material:0>);
Aggregator.removeRecipe(<threng:material:0>);
blast_furnace.recipeBuilder()
  .inputs([<threng:material:2>])
  .outputs(<threng:material:0>)
  .property("temperature", 1700)
  .duration(600)
  .EUt(120)
  .buildAndRegister();


// fluix logic unit
recipes.remove(<threng:material:4>);
assembler.recipeBuilder()
  .inputs([<ore:circuitAdvanced>, <threng:material:1> * 2, <gregtech:meta_item_2:32481>, <appliedenergistics2:material:24>])
  .outputs(<threng:material:4>)
  .duration(100)
  .EUt(360)
  .buildAndRegister();

// resonating crystal
Aggregator.removeRecipe(<threng:material:5>);
autoclave.recipeBuilder()
  .inputs([<redstonearsenal:material:160>])
  .fluidInputs([<liquid:ender> * 500])
  .outputs(<threng:material:5>)
  .duration(150)
  .EUt(400)
  .buildAndRegister();

// logic processor
Etcher.removeRecipe(<appliedenergistics2:material:22>);
Etcher.addRecipe(<appliedenergistics2:material:22>, <gregtech:meta_item_1:12026>, <ore:circuitBasic>, <gregtech:meta_item_1:12061>);

// calculation processor
Etcher.removeRecipe(<appliedenergistics2:material:23>);
Etcher.addRecipe(<appliedenergistics2:material:23>, <gregtech:meta_item_1:12202>, <ore:circuitBasic>, <gregtech:meta_item_1:12061>);

// engineering processor
Etcher.removeRecipe(<appliedenergistics2:material:24>);
Etcher.addRecipe(<appliedenergistics2:material:24>, <gregtech:meta_item_1:12111>, <ore:circuitBasic>, <gregtech:meta_item_1:12061>);

// massively parallel processor
Etcher.removeRecipe(<threng:material:6>);
Etcher.addRecipe(<threng:material:6>, <threng:material:5>, <ore:circuitAdvanced>, <gregtech:meta_item_1:12061>);

// speculative processor
Etcher.removeRecipe(<threng:material:14>);
Etcher.addRecipe(<threng:material:14>, <thermalfoundation:material:358>, <ore:circuitElite>, <gregtech:meta_item_1:12061>);

// fluix aggregator
recipes.remove(<threng:machine:0>);
recipes.addShaped(<threng:machine:0>, [
  [<threng:material:0>, <gregtech:meta_item_2:26299>, <threng:material:0>],
  [<gregtech:meta_item_1:32602>, <gregtech:machine:503>, <gregtech:meta_item_1:32602>],
  [<threng:material:0>, <threng:material:4>, <threng:material:0>]
]);

// pulse centrifuge
recipes.remove(<threng:machine:1>);
recipes.addShaped(<threng:machine:1>, [
  [<threng:material:0>, <appliedenergistics2:quartz_vibrant_glass>, <threng:material:0>],
  [<gregtech:meta_item_1:32683>, <ae2stuff:grower>, <gregtech:meta_item_1:32683>],
  [<threng:material:0>, <threng:material:4>, <threng:material:0>]
]);

// circuit etcher
recipes.remove(<threng:machine:2>);
recipes.addShaped(<threng:machine:2>, [
  [<threng:material:0>, <gregtech:meta_item_1:32643>, <threng:material:0>],
  [<gregtech:meta_item_1:32683>, <appliedenergistics2:inscriber>, <gregtech:meta_item_1:15111>],
  [<threng:material:0>, <threng:material:4>, <threng:material:0>]
]);

// preemptive assembly unit
recipes.remove(<threng:machine:3>);
recipes.addShaped(<threng:machine:3>, [
  [<threng:material:0>, <threng:material:14>, <threng:material:0>],
  [<gregtech:meta_item_1:32655>, <appliedenergistics2:interface>, <gregtech:meta_item_1:32695>],
  [<threng:material:0>, <threng:material:4>, <threng:material:0>]
]);

// level maintainer
recipes.remove(<threng:machine:4>);
recipes.addShaped(<threng:machine:4>, [
  [<threng:material:0>, <appliedenergistics2:part:280>, <threng:material:0>],
  [<appliedenergistics2:material:53>, <gregtech:machine:503>, <gregtech:meta_item_1:32692>],
  [<threng:material:0>, <threng:material:4>, <threng:material:0>]
]);

// mass assembler frame
recipes.remove(<threng:big_assembler:0>);
recipes.addShaped(<threng:big_assembler:0> * 3, [
  [<threng:material:0>, <gregtech:meta_item_1:12235>, <threng:material:0>],
  [<gregtech:meta_item_1:12235>, <threng:material:6>, <gregtech:meta_item_1:12235>],
  [<threng:material:0>, <gregtech:meta_item_1:12235>, <threng:material:0>]
]);

// mass assembler vent
recipes.remove(<threng:big_assembler:1>);
recipes.addShaped(<threng:big_assembler:1> * 3, [
  [<enderio:block_dark_iron_bars>, <gregtech:meta_item_2:18235>, <enderio:block_dark_iron_bars>],
  [<threng:big_assembler:0>, <threng:big_assembler:0>, <threng:big_assembler:0>],
  [<enderio:block_dark_iron_bars>, <gregtech:meta_item_1:32604>, <enderio:block_dark_iron_bars>]
]);

// mass assembler controller
recipes.remove(<threng:big_assembler:2>);
recipes.addShaped(<threng:big_assembler:2>, [
  [<threng:big_assembler:0>, <ore:circuitElite>, <threng:big_assembler:0>],
  [<appliedenergistics2:part:16>, <appliedenergistics2:molecular_assembler>, <appliedenergistics2:part:16>],
  [<threng:big_assembler:0>, <threng:material:4>, <threng:big_assembler:0>]
]);

// mass assembler pattern provider
recipes.remove(<threng:big_assembler:3>);
recipes.addShaped(<threng:big_assembler:3>, [
  [<threng:big_assembler:0>, <appliedenergistics2:material:52>, <threng:big_assembler:0>],
  [<appliedenergistics2:part:16>, <appliedenergistics2:crafting_storage_4k>, <appliedenergistics2:part:16>],
  [<threng:big_assembler:0>, <threng:material:4>, <threng:big_assembler:0>]
]);

// mass assembler crafting coprocessor
recipes.remove(<threng:big_assembler:4>);
recipes.addShaped(<threng:big_assembler:4>, [
  [<threng:big_assembler:0>, <appliedenergistics2:material:30>, <threng:big_assembler:0>],
  [<appliedenergistics2:part:16>, <appliedenergistics2:crafting_accelerator>, <appliedenergistics2:part:16>],
  [<threng:big_assembler:0>, <threng:material:4>, <threng:big_assembler:0>]
]);

// remove extraneous recipes and hide items from JEI
Centrifuge.removeRecipe(<appliedenergistics2:material:45>); // sky stone dust
Centrifuge.removeRecipe(<appliedenergistics2:material:46>); // ender pearl dust
Aggregator.removeRecipe(<threng:material:7>); // speculative core 1x...
JEI.removeAndHide(<threng:material:7>);
Aggregator.removeRecipe(<threng:material:8>);
JEI.removeAndHide(<threng:material:8>);
Aggregator.removeRecipe(<threng:material:9>);
JEI.removeAndHide(<threng:material:9>);
Aggregator.removeRecipe(<threng:material:10>);
JEI.removeAndHide(<threng:material:10>);
Aggregator.removeRecipe(<threng:material:11>);
JEI.removeAndHide(<threng:material:11>);
Aggregator.removeRecipe(<threng:material:12>);
JEI.removeAndHide(<threng:material:12>);
Aggregator.removeRecipe(<threng:material:13>); // ...speculative core 64x
JEI.removeAndHide(<threng:material:13>);
JEI.removeAndHide(<threng:material:3>); // coal dust
