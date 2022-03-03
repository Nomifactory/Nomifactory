import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import mods.inspirations.Cauldron;

import scripts.CommonVars.makeShaped as makeShaped;


//Wooden Gear
recipes.remove(<enderio:item_material:9>);
recipes.addShaped(<enderio:item_material:9>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[null,<minecraft:stick>,null]]);

//Wooden Shears
recipes.remove(<thermalfoundation:tool.shears_wood>);
recipes.addShaped(<thermalfoundation:tool.shears_wood>, [[null,<minecraft:stick>,null],
	[<minecraft:stick>,null,<minecraft:stick>],
	[<enderio:item_material:9>,<minecraft:stick>,null]]);

//Rubber Tree
recipes.addShapeless(<gregtech:sapling>, [<ore:treeSapling>,<gregtech:meta_item_1:32627>]);

//Fertilizer 
recipes.addShaped("actuallyadditions_fertilizer", <actuallyadditions:item_fertilizer> * 8, [[<minecraft:sand>,<gregtech:meta_item_1:8226>,<minecraft:sand>]]);

recipes.remove(<dimensionaledibles:overworld_cake>);
recipes.remove(<dimensionaledibles:nether_cake>);
recipes.remove(<dimensionaledibles:end_cake>);
recipes.remove(<dimensionaledibles:island_cake>);
recipes.remove(<dimensionaledibles:custom_cake>);
recipes.remove(<minecraft:cake>);
recipes.remove(<enderio:item_material:70>);

//Cake Base
recipes.addShaped(<enderio:item_material:70>, [[<minecraft:sugar>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:sugar>], [<actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>, <actuallyadditions:item_misc:4> | <actuallyadditions:item_misc:9>]]);

//Cake
recipes.addShaped(<minecraft:cake>, [[<minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>, <minecraft:milk_bucket> | <ceramics:clay_bucket:1>], [<minecraft:sugar>, <ore:egg>, <minecraft:sugar>], [<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>,<actuallyadditions:item_misc:4>]]);

//Overworld Cake
recipes.addShaped(<dimensionaledibles:overworld_cake>, [[<minecraft:redstone>, <gregtech:meta_item_1:2026>, <minecraft:redstone>], [<ore:treeSapling>, <enderio:item_material:70>, <ore:treeSapling>],[<gregtech:meta_item_2:32570>,<minecraft:diamond>,<gregtech:meta_item_2:32570>]]);

//Nether Cake
recipes.addShaped(<dimensionaledibles:nether_cake>, [[<gregtech:meta_item_1:2333>,<gregtech:meta_item_1:2333>,<gregtech:meta_item_1:2333>], [<minecraft:obsidian>, <enderio:item_material:70>, <minecraft:obsidian>],[<minecraft:soul_sand>,<minecraft:soul_sand>,<minecraft:soul_sand>]]);

//End Cake
recipes.addShaped(<dimensionaledibles:end_cake>, [[<ore:dustEndstone>,<ore:dustEndstone>,<ore:dustEndstone>], [<minecraft:ender_eye>, <enderio:item_material:70>, <minecraft:ender_eye>],[<gregtech:meta_item_1:12231>,<gregtech:meta_item_1:12231>,<gregtech:meta_item_1:12231>]]);

//Void World Cake
makeShaped("of_void_cake", <dimensionaledibles:custom_cake>.withTag({dimID: 119, cakeName: "Void World"}),
	["ABC",
	 "DED",
	 "FFF"],
	{ A : <actuallyadditions:item_crystal:0>,	// Restonia Crystal
	  B : <actuallyadditions:item_crystal:1>,	// Palis Crystal
	  C : <actuallyadditions:item_crystal:4>,	// Emeradic Crystal
	  D : <ore:dustPulsating>,			// Pulsating Dust
	  E : <enderio:item_material:70>,			// Cake Base
	  F : <metaitem:plateAluminium>
	}
);
