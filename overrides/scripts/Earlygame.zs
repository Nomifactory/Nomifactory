import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeShapeless3 as makeShapless;
import mods.gregtech.recipe.Recipe;
import scripts.CommonVars.Components;


var debug = false;







//Plant Balls from Vines
makeShaped("of_plantball_vine", <gregtech:meta_item_2:32570>,
	["SSS",
	 "S S",
	 "SSS"],
	{ S : <minecraft:vine> //Vines
	  });

//Plant Balls from Leaves
makeShaped("of_plantball_leaves", <gregtech:meta_item_2:32570>,
	["SSS",
	 "S S",
	 "SSS"],
	{ S : <ore:treeLeaves> //Leaves
	  });

//Plant Balls from Saplings
makeShaped("of_plantball_sapling", <gregtech:meta_item_2:32570>,
	["SSS",
	 "S S",
	 "SSS"],
	{ S : <ore:treeSapling> //Sapling
	  });

//Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
makeShaped("of_upgrade_template", <storagedrawers:upgrade_template>,
	["SSS",
	 "SDS",
	 "SSS"],
	{ S : <ore:stickWood>, //Stick
	  D : <storagedrawers:customdrawers> //Framed Drawer
	  });

//Iron Shears
recipes.remove(<minecraft:shears>);
recipes.addShaped(<minecraft:shears>,[
[<gregtech:meta_tool:6>,<ore:plateIron>],
[<ore:plateIron>,<gregtech:meta_tool:9>]]);
<minecraft:shears>.displayName = "Iron Shears";

//Rubber Hammer
makeShaped("of_rubber_hammer", <gregtech:meta_tool:7>.withTag({"GT.ToolStats": {PrimaryMaterial: "rubber", MaxDurability: 256, DigSpeed: 4.0 as float, AttackDamage: 1.0 as float, HarvestLevel: 1}}),
	["RR ",
	 "RRS",
	 "RRR"],
	{ S : <ore:stickWood>, //Stick
	  R : <gregtech:meta_item_1:12152> //Rubber Sheets
	  });


//T1 Storage Upgrade
recipes.remove(<storagedrawers:upgrade_storage>);
makeShaped("of_storage_upgrade_1", <storagedrawers:upgrade_storage>,
	["SSS",
	 "CTC",
	 "SSS"],
	{ S : <ore:stickWood>, //Stick
	  C : <minecraft:coal>, //Coal
	  T : <storagedrawers:upgrade_template> //Upgrade Template
	  });

//Compacting Drawer
recipes.remove(<storagedrawers:compdrawers>);
makeShaped("of_compacting", <storagedrawers:controller>,
	["III",
	 "PDP",
	 "III"],
	{ I : <gregtech:meta_item_1:12033>, //Iron Plate
	  P : <gregtech:meta_item_1:32640>, //LV Piston
	  D : <storagedrawers:customdrawers> //Framed Drawer
	  });

//Controller with Diamond Block
recipes.remove(<storagedrawers:controller>);
makeShaped("of_controller_diamond", <storagedrawers:controller>,
	["III",
	 "CDC",
	 "IBI"],
	{ I : <gregtech:meta_item_1:12033>, //Iron Plate
	  C : <ore:circuitBasic>, //T1 Circuit
	  D : <storagedrawers:customdrawers>, //Framed Drawer
	  B : <minecraft:diamond_block> //Diamond Block
	  });

//Controller with Emerald Block
makeShaped("of_controller_emerald", <storagedrawers:controller>,
	["III",
	 "CDC",
	 "IEI"],
	{ I : <gregtech:meta_item_1:12033>, //Iron Plate
	  C : <ore:circuitBasic>, //T1 Circuit
	  D : <storagedrawers:customdrawers>, //Framed Drawer
	  E : <minecraft:emerald_block> //Emerald Block
	  });

//Controller Slave
recipes.remove(<storagedrawers:controllerslave>);
makeShaped("of_controller_slave", <storagedrawers:controllerslave>,
	["III",
	 "CDC",
	 "IGI"],
	{ I : <gregtech:meta_item_1:12033>, //Iron Plate
	  C : <ore:circuitBasic>, //T1 Circuit
	  D : <storagedrawers:customdrawers>, //Framed Drawer
	  G : <minecraft:gold_block> //Gold Block
	  });


//Ender Pump
recipes.remove(<rangedpumps:pump>);
makeShaped("of_ender_pump", <rangedpumps:pump>,
	["OPO",
	 "PEP",
	 "OPO"],
	{ P : <gregtech:meta_item_1:32610>, //LV Pump
	  O : <ore:obsidian>, //Obsidian
	  E : <gregtech:compressed_9:14> //Ender Pearl Block
	  });
<rangedpumps:pump>.displayName = "Ender Pump";

//Ender Tank
recipes.remove(<enderstorage:ender_storage:1>);
makeShaped("of_ender_tank", <enderstorage:ender_storage:1>,
	["BWB",
	 "OCO",
	 "BEB"],
	{ B : <minecraft:blaze_rod>, //Blaze Rod
	  W : <minecraft:wool>, //Wool
	  O : <ore:obsidian>, //Obsidian
	  C : basictank, //Basic Tank
	  E : <gregtech:compressed_9:14> //Ender Pearl Block
	  });

//Mechanical Crafter
recipes.remove(<extrautils2:crafter>);
makeShaped("of_mechanical_crafter", <extrautils2:crafter>,
	["RGR",
	 "GCG",
	 "RGR"],
	{ R : <extrautils2:ingredients>, //Resonating Redstone Crystal
	  G : <gregtech:meta_item_2:17184>, //Small Steel Gear
	  C : <avaritia:compressed_crafting_table> //Compressed Crafting Table
	  });

//Redstone Gear
recipes.remove(<extrautils2:ingredients:1>);
makeShaped("of_redstone_gear", <extrautils2:ingredients:1>,
	[" R ",
	 "RGR",
	 " R "],
	{ R : <actuallyadditions:item_crystal>, //Restonia Crystal
	  G : <gregtech:meta_item_2:26700> //Conductive Iron Gear
	  });

//Leather Strap
recipes.remove(<simplyjetpacks:metaitem:4>);
recipes.addShaped(<simplyjetpacks:metaitem:4>, [[<minecraft:leather>, <ore:plateSteel>, <minecraft:leather>]]);

//Ender Chest
recipes.removeByRecipeName("enderstorage:ender_chest");
makeShaped("of_ender_chest", <enderstorage:ender_storage>,
	["BWB",
	 "OCO",
	 "BEB"],
	{ B : <minecraft:blaze_rod>, //Blaze Rod
	  W : <minecraft:wool>, //Wool
	  O : <ore:obsidian>, //Obsidian
	  C : <gregtech:machine:803>, //Steel Chest
	  E : <ore:enderpearl> //Ender Pearl
	  });

//LV Macerator
recipes.remove(<gregtech:machine:60>);
makeShaped("of_lv_macerator", <gregtech:machine:60>,
	["PMB",
	 "CCH",
	 "AAC"],
	{ P : <gregtech:meta_item_1:32640>, //LV Piston
	  C : <ore:cableGtSingleTin>, //1x Tin
	  B : <gregtech:meta_item_2:14197>, //Buzzsaw Blade
	  M : <gregtech:meta_item_1:32600>, //LV Motor
	  A : <ore:circuitBasic>, //T2 Circuit
	  H : <gregtech:machine:501> //LV Machine Hull
	  });

//MV Macerator
recipes.remove(<gregtech:machine:61>);
makeShaped("of_mv_macerator", <gregtech:machine:61>,
	["PMB",
	 "CCH",
	 "AAC"],
	{ P : <gregtech:meta_item_1:32641>, //MV Piston
	  C : <ore:cableGtSingleCopper>, //1x Copper
	  B : <gregtech:meta_item_2:14184>, //Buzzsaw Blade
	  M : <gregtech:meta_item_1:32601>, //MV Motor
	  A : <ore:circuitGood>, //T2 Circuit
	  H : <gregtech:machine:502> //MV Machine Hull
	  });

//LV Piston
makeShaped("of_lv_piston", <gregtech:meta_item_1:32640>,
	["PPP",
	 "CRR",
	 "CMG"],
	{ P : <gregtech:meta_item_1:12197>, //Wrought Iron Plate
	  C : <ore:cableGtSingleTin>, //1x Tin
	  R : <gregtech:meta_item_1:14197>, //Wrought Iron Rod
	  M : <gregtech:meta_item_1:32600>, //LV Motor
	  G : <gregtech:meta_item_2:26197> //Wrought Iron Gear
	  });

recipes.remove(<simplefluidtanks:tankitem>);
makeShaped("of_fluid_tank", <simplefluidtanks:tankitem> * 4,
	["IGI",
	 "G G",
	 "IGI"],
	{ I : <gregtech:meta_item_1:12033>, //Iron Plate
	  G : <minecraft:glass> //Glass
	  });

//Fluid Tank Valve
recipes.remove(<simplefluidtanks:valveitem>);
recipes.addShaped(<simplefluidtanks:valveitem>, [
	[null, <minecraft:lever>],
	[<simplefluidtanks:tankitem>, <gregtech:fluid_pipe:2095>]]);

//Pressurized Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit:1>);
makeShaped("of_pressurized_conduit", <enderio:item_liquid_conduit:1>,
	["BBB",
	 "GGG",
	 "BBB"],
	{ B : <ore:itemConduitBinder>, //Conduit Binder
	  G : <minecraft:glass> //Glass
	  });

//Yeta Wrench
recipes.remove(<enderio:item_yeta_wrench>);
makeShaped("of_yeta_wrench", <enderio:item_yeta_wrench>,
	["I I",
	 " G ",
	 " I "],
	{ I : <minecraft:iron_ingot>, //Iron Ingot
	  G : <gregtech:meta_item_2:26033> //Iron Gear
	  });

//Lava Nether Brick
makeShaped("of_lava_brick", <armorplus:lava_nether_brick>,
	[" N ",
	 "NLN",
	 " N "],
	{ N : <minecraft:nether_brick>, //Nether Brick
	  L : <minecraft:lava_bucket> //Lava Bucket
	  });

//Endest Star
makeShaped("of_endest_star", <extendedcrafting:material:40>,
	[" E ",
	 "ESE",
	 " E "],
	{ S : <minecraft:nether_star>, //Nether Star
	  E : <minecraft:ender_eye> //Eye of Ender
	  });

//Lava Factory Casing
recipes.remove(<actuallyadditions:block_misc:7>);
makeShaped("of_lava_casing", <actuallyadditions:block_misc:7> *2,
	["ASA",
	 "S S",
	 "ASA"],
	{ S : <gregtech:meta_item_1:12184>, //Steel Plate
	  A : <gregtech:meta_item_1:12001> //Aluminum Plate
	  });

recipes.remove(<actuallyadditions:block_lava_factory_controller>);
recipes.addShaped(<actuallyadditions:block_lava_factory_controller>, [
	[<actuallyadditions:item_misc:8>, <actuallyadditions:block_misc:7>, <actuallyadditions:item_misc:8>],
	[<minecraft:lava_bucket:*>, <morefurnaces:furnaceblock:3>, <minecraft:lava_bucket:*>]]);

recipes.remove(<actuallyadditions:block_fluid_collector>);
recipes.remove(<actuallyadditions:block_placer>);
recipes.remove(<actuallyadditions:block_fluid_placer>);

recipes.addShaped(<actuallyadditions:block_breaker>, [[<actuallyadditions:item_misc:7>, <gregtech:meta_item_1:32640>]]);
recipes.addShaped(<actuallyadditions:block_placer>, [[<gregtech:meta_item_1:32640>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_placer>, [[<gregtech:meta_item_1:32610>,<actuallyadditions:item_misc:7>]]);
recipes.addShaped(<actuallyadditions:block_fluid_collector>, [[<actuallyadditions:item_misc:7>,<gregtech:meta_item_1:32610>]]);

//Copper Furnace
recipes.remove(<morefurnaces:furnaceblock:5>);
makeShaped("of_copper_furnace", <morefurnaces:furnaceblock:5>,
	["CCC",
	 "CFC",
	 "CCC"],
	{ C : <ore:ingotCopper>, //Copper
	  F : <morefurnaces:furnaceblock> //Iron Furnace
	  });

//Silver Furnace
recipes.remove(<morefurnaces:furnaceblock:6>);
makeShaped("of_silver_furnace", <morefurnaces:furnaceblock:6>,
	["SSS",
	 "SFS",
	 "SSS"],
	{ S : <ore:ingotSilver>, //Silver 
	  F : <morefurnaces:furnaceblock:5> //Copper Furnace
	  });

//Gold Furnace
recipes.remove(<morefurnaces:furnaceblock:1>);
makeShaped("of_gold_furnace", <morefurnaces:furnaceblock:1>,
	["GGG",
	 "GFG",
	 "GGG"],
	{ G : <minecraft:gold_ingot>, //Gold 
	  F : <morefurnaces:furnaceblock:6> //Silver Furnace
	  });

//Diamond Furnace
recipes.remove(<morefurnaces:furnaceblock:2>);
makeShaped("of_diamond_furnace", <morefurnaces:furnaceblock:2>,
	["DDD",
	 "DFD",
	 "DDD"],
	{ D : <minecraft:diamond>, //Diamond
	  F : <morefurnaces:furnaceblock:1> //Gold Furnace
	  });

//Obsidian Furnace
recipes.remove(<morefurnaces:furnaceblock:3>);
makeShaped("of_obsidian_furnace", <morefurnaces:furnaceblock:3>,
	["OOO",
	 "FOF",
	 "OOO"],
	{ O : <minecraft:obsidian>, //Obsidian
	  F : <morefurnaces:furnaceblock:2> //Diamond Furnace
	  });


// Small Battery Hull
recipes.remove(<gregtech:meta_item_1:32500>);
recipes.addShaped(<gregtech:meta_item_1:32500>, [
	[<ore:cableGtSingleRedAlloy>], 
	[<gregtech:meta_item_1:12071>], 
	[<gregtech:meta_item_1:12071>]]);


//LV Compressor
recipes.remove(<gregtech:machine:210>);
makeShaped("of_lv_compressor", <gregtech:machine:210>,
	["PPP",
	 "IMI",
	 "CPC"],
	{ P : <ore:plateIron>, //Iron Plate
	  I : <gregtech:meta_item_1:32640>, //LV Piston
	  M : <gregtech:machine:501>, //LV Machine Hull
	  C : <ore:cableGtSingleTin> //1x Tin
	  });

//MV Extruder
recipes.remove(<gregtech:machine:271>);
makeShaped("of_mv_extruder", <gregtech:machine:271>,
	["WWC",
	 "PHS",
	 "WWC"],
	{ P : <gregtech:meta_item_1:32641>, //MV Piston
	  W : <ore:wireGtQuadrupleCupronickel>, //4x Cupronickel
	  C : <ore:circuitGood>, //T2 Circuit
	  H : <gregtech:machine:502>, //MV Machine Hull
	  S : <ore:pipeMediumSteel> //Medium Steel Pipe
	  });

//HV Extruder
recipes.remove(<gregtech:machine:272>);
makeShaped("of_hv_extruder", <gregtech:machine:272>,
	["WWC",
	 "PHS",
	 "WWC"],
	{ P : <gregtech:meta_item_1:32642>, //HV Piston
	  W : <ore:wireGtQuadrupleKanthal>, //4x Kanthal
	  C : <ore:circuitAdvanced>, //T3 Circuit
	  H : <gregtech:machine:503>, //HV Machine Hull
	  S : <ore:pipeMediumStainlessSteel> //Medium Stainless Steel Pipe
	  });

//EV Extruder
recipes.remove(<gregtech:machine:273>);
makeShaped("of_ev_extruder", <gregtech:machine:273>,
	["WWC",
	 "PHS",
	 "WWC"],
	{ P : <gregtech:meta_item_1:32643>, //EV Piston
	  W : <ore:wireGtQuadrupleNichrome>, //4x Nichrome
	  C : <ore:circuitExtreme>, //T4 Circuit
	  H : <gregtech:machine:504>, //EV Machine Hull
	  S : <gregtech:fluid_pipe:2072> //Medium Titanium Pipe
	  });

//Iron Gear
makeShaped("of_iron_gear", <gregtech:meta_item_2:26033>,
	["RPR",
	 "PTP",
	 "RPR"],
	{ P : <gregtech:meta_item_1:12033>, //Iron Plate
	  R : <gregtech:meta_item_1:14033>, //Iron Rod
	  T : <gregtech:meta_tool:11> //Screwdriver
	  });


//Sponge
makeShaped("of_sponge", <minecraft:sponge>,
	["PPP",
	 "PMP",
	 "PPP"],
	{ P : <gregtech:meta_item_2:32570>,  // Plant Ball
	  M : <inspirations:mulch>});



/* ******* Shapeless Crafting Recipes ******* */

//Inspirations Pipe
recipes.remove(<inspirations:pipe>);
recipes.addShapeless(<inspirations:pipe>, [<gregtech:fluid_pipe:1184>]);
//String
recipes.remove(<minecraft:string>);
recipes.addShapeless(<minecraft:string> * 4, [<minecraft:wool>]);
//Remove Nbt from Ender Chest
recipes.addShapeless(<enderstorage:ender_storage:1>, [<enderstorage:ender_storage:1>]);
//Photovoltaic Composite
recipes.remove(<enderio:item_material:38>);
recipes.addShapeless(<enderio:item_material:38> * 3, [<gregtech:meta_item_1:2216>,<gregtech:meta_item_1:2106>,<gregtech:meta_item_1:2061>]);
//Blaze Rod
recipes.addShapeless(<minecraft:blaze_rod>, [<minecraft:brewing_stand>]);

//Endershard
recipes.remove(<extrautils2:endershard>);
recipes.addShapeless(<extrautils2:endershard> * 8, [<minecraft:ender_pearl>]);



recipes.addShapeless(<gregtech:meta_item_1:32517>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2013>,<gregtech:meta_item_1:2013>]);	//Small Cadmium
recipes.addShapeless(<gregtech:meta_item_1:32519>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2063>,<gregtech:meta_item_1:2063>]);	//Small Sodium
recipes.addShapeless(<gregtech:meta_item_1:32518>,[<gregtech:meta_item_1:32500>,<gregtech:meta_item_1:2036>,<gregtech:meta_item_1:2036>]);	//Small Lithium

recipes.remove(<thermalfoundation:fertilizer>);
recipes.remove(<thermalfoundation:fertilizer:1>);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCharcoal>, <ore:dustSaltpeter>,<gregtech:meta_item_1:8226>,<gregtech:meta_item_1:8226>]);
recipes.addShapeless(<thermalfoundation:fertilizer> * 16, [<ore:dustWood>, <ore:dustWood>, <ore:dustCoal>, <ore:dustSaltpeter>,<gregtech:meta_item_1:8226>,<gregtech:meta_item_1:8226>]);


//conductive iron cables by hand
recipes.removeByRecipeName("gregtech:conductive_iron_cable_1");
recipes.addShapeless(<gregtech:cable:5700>,[<gregtech:cable:700>,<gregtech:meta_item_1:12152>]);
recipes.addShapeless(<gregtech:cable:6700>, [<gregtech:cable:5700>,<gregtech:cable:5700>]);
recipes.addShapeless(<gregtech:cable:7700>, [<gregtech:cable:6700>,<gregtech:cable:6700>]);
recipes.addShapeless(<gregtech:cable:8700>, [<gregtech:cable:7700>,<gregtech:cable:7700>]);
recipes.addShapeless(<gregtech:cable:9700>, [<gregtech:cable:8700>,<gregtech:cable:8700>]);

recipes.addShapeless(<gregtech:cable:8700> * 2, [<gregtech:cable:9700>]);
recipes.addShapeless(<gregtech:cable:7700> * 2, [<gregtech:cable:8700>]);
recipes.addShapeless(<gregtech:cable:6700> * 2, [<gregtech:cable:7700>]);
recipes.addShapeless(<gregtech:cable:5700> * 2, [<gregtech:cable:6700>]);


recipes.addShapeless(<gregtech:meta_item_1:2700>, [<gregtech:meta_item_1:2033>,<minecraft:redstone>]);
recipes.addShapeless(<minecraft:flint>, [<gregtech:meta_tool:12>, <minecraft:gravel:*>, <minecraft:gravel:*>]);

recipes.addShapeless(<gregtech:meta_item_1:2018>, [<ore:ingotCopper>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2033>, [<ore:ingotIron>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2036>, [<ore:ingotLithium>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2106>,[<minecraft:coal>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2101>,[<minecraft:coal:1>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<gregtech:meta_item_1:2071>, [<gregtech:meta_item_1:10071>,<gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:gravel>, [<minecraft:cobblestone>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:sand>, [<minecraft:gravel>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<contenttweaker:block_dust>, [<minecraft:sand>, <gregtech:meta_tool:12>]);
recipes.addShapeless(<minecraft:clay>, [<contenttweaker:block_dust>,<minecraft:water_bucket>]);


recipes.addShapeless(<minecraft:gravel>, [<minecraft:cobblestone>, <gregtech:meta_tool:12>]);



/* ******* Furnace Recipes ******* */

//Conductive Iron Ingot
furnace.remove(<gregtech:meta_item_1:10700>);
furnace.remove(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:3148>);
furnace.remove(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:2148>);
//Slime Ball
furnace.addRecipe(<minecraft:slime_ball> * 2, <gregtech:meta_item_2:32570>, 0.0);
//Iron Nugget
furnace.addRecipe(<minecraft:iron_nugget> * 3, <gregtech:meta_item_1:2255>, 0.0);
//Iron Nugget
furnace.addRecipe(<minecraft:iron_nugget> * 2, <gregtech:meta_item_1:3255>, 0.0);
//Conductive Iron Ingot
furnace.addRecipe(<enderio:item_alloy_ingot:4>, <gregtech:meta_item_1:2700>, 0.0);
//Sodium Dust
furnace.addRecipe(<gregtech:meta_item_1:2063>, <gregtech:meta_item_1:2155>, 0.0);
//Copper Ingot
furnace.addRecipe(<ore:ingotCopper>.firstItem,<ore:oreCopper>);
//Copper Ingot
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:0>);
//Copper Ingot
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:1>);
//Copper Ingot
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:2>);
//Copper Ingot
furnace.addRecipe(<ore:ingotCopper>.firstItem,<gregtech:ore_copper_0:3>);
//Copper Ingot
furnace.addRecipe(<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:2100>, 0.0);
//Iron Ingot
furnace.addRecipe(<minecraft:iron_ingot>, <gregtech:meta_item_1:2148>, 0.0);
//Iron Ingot
furnace.addRecipe(<minecraft:iron_ingot>, <gregtech:meta_item_1:3148>, 0.0);
//Black Quartz
furnace.addRecipe(<actuallyadditions:item_misc:5>, <actuallyadditions:block_misc:3>, 0.0);
//Tin Ingot
furnace.addRecipe(<gregtech:meta_item_1:10071>, <gregtech:ore_tin_0>, 0.0);
//Pulsating Dust
furnace.addRecipe(<forestry:crafting_material>, <gregtech:meta_item_1:2193>, 0.0);

//Graphite Ingot
furnace.setFuel(<gregtech:meta_item_1:10204>, 1200);
//Graphite Dust
furnace.setFuel(<gregtech:meta_item_1:2204>, 1200);
//Carbon Dust
furnace.setFuel(<gregtech:meta_item_1:2012>, 1200);

/* ******* Renaming or Adding Tooltips ******* */


//Thermal Mining Hammers
<thermalfoundation:tool.hammer_stone>.displayName = "Stone Mining Hammer";
<thermalfoundation:tool.hammer_stone>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_tin>.displayName = "Tin Mining Hammer";
<thermalfoundation:tool.hammer_tin>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_copper>.displayName = "Copper Mining Hammer";
<thermalfoundation:tool.hammer_copper>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_nickel>.displayName = "Nickel Mining Hammer";
<thermalfoundation:tool.hammer_nickel>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_platinum>.displayName = "Platinum Mining Hammer";
<thermalfoundation:tool.hammer_platinum>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_bronze>.displayName = "Bronze Mining Hammer";
<thermalfoundation:tool.hammer_bronze>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_iron>.displayName = "Iron Mining Hammer";
<thermalfoundation:tool.hammer_iron>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));
<thermalfoundation:tool.hammer_diamond>.displayName = "Diamond Mining Hammer";
<thermalfoundation:tool.hammer_diamond>.addTooltip(format.red("Do not break GT multiblocks with a hammer, pieces will be deleted!"));

<gregtech:machine:511>.displayName = "Electric Blast Furnace Controller";
<gregtech:machine:702>.displayName = "Fluid Input Hatch (ULV)";
<gregtech:machine:712>.displayName = "Fluid Input Hatch (LV)";
<gregtech:machine:722>.displayName = "Fluid Input Hatch (MV)";
<gregtech:machine:732>.displayName = "Fluid Input Hatch (HV)";
<gregtech:machine:742>.displayName = "Fluid Input Hatch (EV)";
<gregtech:machine:752>.displayName = "Fluid Input Hatch (IV)";
<gregtech:machine:762>.displayName = "Fluid Input Hatch (LuV)";
<gregtech:machine:772>.displayName = "Fluid Input Hatch (ZPM)";
<gregtech:machine:782>.displayName = "Fluid Input Hatch (UV)";
<gregtech:machine:792>.displayName = "Fluid Input Hatch (MAX)";
<gregtech:machine:703>.displayName = "Fluid Output Hatch (ULV)";
<gregtech:machine:713>.displayName = "Fluid Output Hatch (LV)";
<gregtech:machine:723>.displayName = "Fluid Output Hatch (MV)";
<gregtech:machine:733>.displayName = "Fluid Output Hatch (HV)";
<gregtech:machine:743>.displayName = "Fluid Output Hatch (EV)";
<gregtech:machine:753>.displayName = "Fluid Output Hatch (IV)";
<gregtech:machine:763>.displayName = "Fluid Output Hatch (LuV)";
<gregtech:machine:773>.displayName = "Fluid Output Hatch (ZPM)";
<gregtech:machine:783>.displayName = "Fluid Output Hatch (UV)";
<gregtech:machine:793>.displayName = "Fluid Output Hatch (MAX)";

<morefurnaces:furnaceblock>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:1>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:1>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:2>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:2>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:3>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:3>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:5>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:5>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:6>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:7>.addTooltip(format.red("If you pick up this item while it has fuel in the fuel slot, the fuel will be destroyed."));
<morefurnaces:furnaceblock:6>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));
<morefurnaces:furnaceblock:7>.addTooltip(format.red("Remove all fuel you wish to keep from the fuel slots before breaking this with a pick."));

<simplefluidtanks:wrench>.displayName = "Multiblock Fluid Tank Wrench";
<simplefluidtanks:tankitem>.displayName = "Multiblock Fluid Tank Block";
<simplefluidtanks:valveitem>.displayName = "Multiblock Fluid Tank Valve";

/* ******* Electrolyzer Recipes ******* */

//Clay Electrolyzing
electrolyzer.findRecipe(120, [<gregtech:meta_item_1:2105> * 13], [null]).remove();
electrolyzer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2105> * 7])
	.outputs([<gregtech:meta_item_1:2063> * 2, <gregtech:meta_item_1:2061> * 2, <gregtech:meta_item_1:2036>, <gregtech:meta_item_1:2001> * 2])
	.duration(400).EUt(30).buildAndRegister();

//Black Quartz Dust
electrolyzer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2203> * 4])
	.outputs([<actuallyadditions:item_dust:7>])
	.duration(400).EUt(90).buildAndRegister();

//Galena Dust Electrolosis 
electrolyzer.findRecipe(90, [<gregtech:meta_item_1:2114> * 8], [null]).remove();
electrolyzer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2114> * 8])
	.outputs([<gregtech:meta_item_1:2035> * 3,<gregtech:meta_item_1:2062> * 3, <gregtech:meta_item_1:2065> * 2])
	.duration(500).EUt(32).buildAndRegister();

//Enderpearl Dust Electrolosis
electrolyzer.findRecipe(60, [<gregtech:meta_item_1:2218> * 10], [null]).remove();
electrolyzer.recipeBuilder()
	.inputs([<ore:dustEnderPearl>])
	.outputs([<forestry:crafting_material>])
	.duration(200).EUt(1000).buildAndRegister();




/* ******* Chemical Reactor Recipes ******* */

val chemArray = [
	
	/*Form:
	InputArray, FluidInputArray, Output, duration, power*/
	Components([<extendedcrafting:material:7>], [<liquid:lava> * 1000],<minecraft:end_stone>, 20, 15),
	Components([<minecraft:quartz>], [<liquid:lava> * 1000],<armorplus:lava_crystal:1>, 100, 15),
	Components([<minecraft:obsidian>], [<liquid:lava> * 1000],<armorplus:lava_infused_obsidian>, 200, 15),	
	Components([<contenttweaker:block_dust>], [<liquid:lava> * 1000],<minecraft:netherrack>, 20, 15),
	Components([<contenttweaker:block_dust>], [<liquid:water> * 1000],<minecraft:clay>, 20, 15),	
	Components([<thermalfoundation:fertilizer>], [<liquid:ammonia> * 100],<thermalfoundation:fertilizer:1>, 120, 30),
	Components([<minecraft:quartz>], [<liquid:redstone> * 288],<thermalfoundation:material:893>, 100, 100),	
	Components([<minecraft:quartz>], [<liquid:glowstone> * 288],<thermalfoundation:material:894>, 100, 100),
	Components([<minecraft:quartz>], [<liquid:ender> * 250],<thermalfoundation:material:895>, 100, 100),
	Components([<minecraft:glass_bottle> * 4], [<liquid:pyrotheum> * 1000, <liquid:nitro_fuel> * 1000],<minecraft:dragon_breath> * 4, 1000, 2000),							

] as Components[];

for rec in chemArray {
	
	if(debug) {
		print("Attempting to Add Chemical Reactor Recipe for " ~ rec.macOutput.displayName);
	}

	reactor.recipeBuilder()
		.inputs(rec.macInputArray)
		.fluidInputs(rec.macFluidInputArray)
		.outputs(rec.macOutput)
		.duration(rec.dur).EUt(rec.power).buildAndRegister();
}


//Lava Recipe
reactor.recipeBuilder()
	.inputs([<minecraft:magma>])
	.fluidOutputs(<liquid:lava> * 1000)
	.EUt(30).duration(120).buildAndRegister();

//Draconium Dust
reactor.recipeBuilder()
	.inputs([<minecraft:dragon_breath>, <gregtech:meta_item_1:2714>])
	.outputs(<draconicevolution:draconium_dust>)
	.EUt(2000).duration(500).buildAndRegister();

//Eye of Ender
recipes.remove(<minecraft:ender_eye>);
reactor.recipeBuilder()
	.inputs([<minecraft:ender_pearl>,<minecraft:blaze_powder>])
	.outputs(<minecraft:ender_eye>)
	.EUt(16).duration(100).buildAndRegister();

//Ammonia
reactor.findRecipe(384, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000]).remove();
reactor.recipeBuilder()
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 1}))
	.fluidInputs(<liquid:nitrogen> * 1000, <liquid:hydrogen> * 3000)
	.fluidOutputs(<liquid:ammonia> * 4000)
	.EUt(100).duration(320).buildAndRegister();

//Dimethylhidrazine
reactor.recipeBuilder()
	.fluidInputs(<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000)
	.fluidOutputs(<liquid:dimethylhidrazine> * 1000,<liquid:diluted_hydrochloric_acid> * 1000)
	.EUt(120).duration(960).buildAndRegister();

reactor.findRecipe(388, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:oxygen> * 500, <liquid:hydrogen> * 3000, <liquid:nitrogen_dioxide> * 1000]).remove();
reactor.findRecipe(388, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:oxygen> * 500, <liquid:hydrogen> * 3000, <liquid:nitrogen_dioxide> * 1000]).remove();

reactor.findRecipe(480, [null], [<liquid:chloramine> * 1000, <liquid:dimethylamine> * 1000]).remove();
reactor.findRecipe(480, [null], [<liquid:methanol> * 2000, <liquid:ammonia> * 1000, <liquid:hypochlorous_acid> * 1000]).remove();

/* ******* Alloy Smelter Recipes ******* */

recipes.remove(<extrautils2:ingredients>);
recipes.remove(<extrautils2:ingredients:2>);
recipes.remove(<extrautils2:ingredients:6>);
recipes.remove(<extrautils2:ingredients:7>);
recipes.remove(<extrautils2:ingredients:8>);


val alloyRecipes = [

	/*Form:
	duration, power, inputArray, output*/
	//Resonating Redstone Crystal with Restonia
	Components(180, 16, [<extrautils2:endershard>, <actuallyadditions:item_crystal>], <extrautils2:ingredients>),
	//Resonating Redstone Crystal with Redstone Block
	Components(180, 16, [<extrautils2:endershard>, <minecraft:redstone_block>], <extrautils2:ingredients>),
	//Eye of Redstone
	Components(800, 16, [<gregtech:compressed_9:15>, <actuallyadditions:block_crystal> * 4], <extrautils2:ingredients:2>),
	//Stack Upgrade
	Components(800, 16, [<extrautils2:ingredients:9>, <minecraft:diamond> * 4], <extrautils2:ingredients:7>),
	//Speed Upgrade
	Components(400, 16, [<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:1> * 4], <extrautils2:ingredients:6>),
	//Mining Upgrade
	Components(400, 16, [<extrautils2:ingredients:9>, <enderio:item_alloy_ingot> * 4], <extrautils2:ingredients:8>),
	//Steel Ingot with Coal Dust
	Components(200, 16, [<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2106>], <gregtech:meta_item_1:10184>),	
	//Steel Ingot with Charcoal Dust
	Components(200, 16, [<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2101>], <gregtech:meta_item_1:10184>),	
	//Steel Ingot with Carbon
	Components(200, 16, [<gregtech:meta_item_1:10197>, <gregtech:meta_item_1:2012>], <gregtech:meta_item_1:10184>),
	//Dark Steel Ingot with Obsidian
	Components(240, 16, [<gregtech:meta_item_1:10184>, <minecraft:obsidian>], <enderio:item_alloy_ingot:6>),
	//Dark Steel Ingot with Void Crystal	
	Components(240, 16, [<gregtech:meta_item_1:10184>, <actuallyadditions:item_crystal:3>], <enderio:item_alloy_ingot:6>),
	//Electrial Steel Ingot
	Components(120, 16, [<gregtech:meta_item_1:10184>, <gregtech:meta_item_1:2061>], <enderio:item_alloy_ingot>),
	//Soularium Ingot
	Components(120, 16, [<minecraft:gold_ingot>, <minecraft:soul_sand>], <enderio:item_alloy_ingot:7>),	
	//End Steel Ingot
	Components(300, 120, [<enderio:item_alloy_ingot:6>, <gregtech:meta_item_1:2332>], <enderio:item_alloy_ingot:8>),	
	//Quartz Glass
	Components(100, 16, [<minecraft:glass>, <gregtech:meta_item_1:2202>], <appliedenergistics2:quartz_glass> * 2),	
	//Photovoltaic Plate
	Components(180, 16, [<enderio:item_material:38> * 2, <gregtech:meta_item_1:12705>], <enderio:item_material:3>)				

] as Components[];


for alloyrec in alloyRecipes {
	
	if(debug) {
		print("Adding Alloy Smelter Recipe for " ~ alloyrec.macOutput.displayName);
	}

	alloy.recipeBuilder()
		.inputs(alloyrec.macInputArray)
		.outputs(alloyrec.macOutput)
		.duration(alloyrec.dur).EUt(alloyrec.power).buildAndRegister();
}

//Small Gear Recipes
val smallgears = [
	
	/*Form:
	duration, power, macInputArray, macOutput*/
	Components(80,16,[<gregtech:meta_item_1:10001>],<gregtech:meta_item_2:17001>),
	Components(80,16,[<gregtech:meta_item_1:10072>],<gregtech:meta_item_2:17072>),
	Components(80,16,[<gregtech:meta_item_1:10183>],<gregtech:meta_item_2:17183>),
	Components(80,16,[<gregtech:meta_item_1:10184>],<gregtech:meta_item_2:17184>),
	Components(80,16,[<gregtech:meta_item_1:10235>],<gregtech:meta_item_2:17235>)

] as Components[];

for gears in smallgears {
	
	alloy.recipeBuilder()
		.inputs(gears.macInputArray)
		.notConsumable(<gregtech:meta_item_1:32317>)
		.outputs(gears.macOutput)
		.duration(gears.dur).EUt(gears.power).buildAndRegister();

	if(debug) {
		print("Adding Small Gear Recipe for " ~ gears.macOutput.displayName);
	}
}


/* ******* Assembler Recipes ******* */

//Pressurized Fluid Conduit
assembler.recipeBuilder()
	.inputs([<minecraft:glass> * 3, <ore:itemConduitBinder> * 6])
	.outputs([<enderio:item_liquid_conduit:1> * 8])
	.duration(80).EUt(16).buildAndRegister();

// Add Corrected Small Battery Hull recipe to Assembler
assembler.findRecipe(1, [<gregtech:meta_item_1:12091>, <gregtech:cable:5071>],[<liquid:plastic>*144]).remove();
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12071>, <gregtech:cable:5237>])
	.fluidInputs([<liquid:plastic>*144])	
	.outputs([<gregtech:meta_item_1:32500>])
	.duration(800).EUt(1).buildAndRegister();

//Fix Light Gray Spray Can being uncraftable
assembler.findRecipe(8, [<gregtech:meta_item_1:32402>, <gregtech:meta_item_2:32422>], [null]).remove();
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32402>, <ore:dyeLightGray>)
	.outputs(<gregtech:meta_item_1:32446>)
	.duration(200).EUt(8).buildAndRegister();

// Bronze Casing Assembler recipe
assembler.recipeBuilder()
	.inputs(<gregtech:meta_item_1:12095>*6, <minecraft:brick_block>)
	.outputs(<gregtech:metal_casing>*3)
	.duration(50).EUt(16).buildAndRegister();

assembler.findRecipe(2, [<minecraft:blaze_powder>,<minecraft:ender_pearl>], [null]).remove();
assembler.findRecipe(2, [<minecraft:ender_pearl> * 6,<minecraft:blaze_rod>], [null]).remove();


/* ******* Macerator Recipes ******* */

//Diamond Dust Recipe
macerator.recipeBuilder()
	.inputs([<minecraft:diamond>])
	.outputs([<gregtech:meta_item_1:2111>])
	.duration(80).EUt(8).buildAndRegister();

//Fluix Dust Recipe
macerator.recipeBuilder()
	.inputs([<appliedenergistics2:material:7>])
	.outputs([<appliedenergistics2:material:8>])
	.duration(80).EUt(8).buildAndRegister();

//Grains of the End
macerator.recipeBuilder()
	.inputs([<enderio:item_material:16>])
	.outputs([<enderio:item_material:37>])
	.duration(500).EUt(16).buildAndRegister();

//Grains of Prescience
macerator.recipeBuilder()
	.inputs([<enderio:item_material:19>])
	.outputs([<enderio:item_material:34>])
	.duration(400).EUt(16).buildAndRegister();

//Grains of Vibrancy
macerator.recipeBuilder()
	.inputs([<enderio:item_material:15>])
	.outputs([<enderio:item_material:35>])
	.duration(300).EUt(16).buildAndRegister();

//Grains of Piezallity
macerator.recipeBuilder()
	.inputs([<enderio:item_material:14>])
	.outputs([<enderio:item_material:36>])
	.duration(200).EUt(16).buildAndRegister();

//Grains of Innocence
macerator.recipeBuilder()
	.inputs([<enderio:item_material:17>])
	.outputs([<contenttweaker:grainsofinnocence>])
	.duration(200).EUt(16).buildAndRegister();

//Stone Dust Recipe
macerator.recipeBuilder()
	.inputs([<minecraft:stone>])
	.outputs([<gregtech:meta_item_1:2328>])
	.duration(16).EUt(10).buildAndRegister();

//Cobble to gravel
macerator.findRecipe(8, [<minecraft:cobblestone>], [null]).remove();
macerator.recipeBuilder()
	.inputs([<minecraft:cobblestone>])
	.outputs([<minecraft:gravel>])
	.duration(16).EUt(10).buildAndRegister();

//Sand Recipe
macerator.findRecipe(8, [<minecraft:gravel>], [null]).remove();
macerator.recipeBuilder()
	.inputs([<minecraft:gravel>])
	.outputs([<minecraft:sand>])
	.duration(16).EUt(10).buildAndRegister();

//Dust Block Recipe
macerator.recipeBuilder()
	.inputs([<minecraft:sand>])
	.outputs([<contenttweaker:block_dust>])
	.duration(16).EUt(10).buildAndRegister();

//Netherrack Dust Recipe
macerator.findRecipe(8, [<minecraft:netherrack>], [null]).remove();
macerator.recipeBuilder()
	.inputs([<minecraft:netherrack>])
	.outputs([<gregtech:meta_item_1:2333>])
	.duration(16).EUt(10).buildAndRegister();

//Endstone Dust
macerator.findRecipe(8, [<minecraft:end_stone>], [null]).remove();
macerator.recipeBuilder()
	.inputs([<ore:endstone>.firstItem])
	.outputs([<ore:dustEndstone>.firstItem])
	.duration(16).EUt(10).buildAndRegister();


// Correct the Macerating recipe for Small Battery Hull
macerator.findRecipe(8, [<gregtech:meta_item_1:32500>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32500>)
	.outputs(<gregtech:meta_item_1:2071>)
	.duration(30).EUt(8).buildAndRegister();

//Fix Wool macerator recipes
macerator.findRecipe(2, [<minecraft:wool>], [null]).remove();
macerator.recipeBuilder()
	.inputs(<ore:blockWool>)
	.outputs(<minecraft:string> *4)
	.duration(400).EUt(2).buildAndRegister();


/* ******* Mixer Recipes ******* */

//Energetic Blend
mixer.recipeBuilder()
	.inputs([<minecraft:redstone>,<minecraft:glowstone_dust>])
	.outputs(<nuclearcraft:compound:2> * 2)
	.EUt(22).duration(40).buildAndRegister();

//Glowstone Dust
mixer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2239>,<gregtech:meta_item_1:2026>])
	.outputs(<minecraft:glowstone_dust> * 2)
	.EUt(15).duration(80).buildAndRegister();

//Tin Alloy Dust
mixer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2033>,<gregtech:meta_item_1:2071>])
	.outputs(<gregtech:meta_item_1:2189> * 2)
	.EUt(15).duration(40).buildAndRegister();

//Enriched Naquadah Dust
mixer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2307>,<enderio:item_material:20> * 4,<contenttweaker:grainsofinnocence>,<enderio:item_material:36>])
	.fluidInputs([<liquid:pulsating_iron> * 576, <liquid:neptunium> * 144])
	.outputs(<gregtech:meta_item_1:2309>)
	.EUt(8000).duration(400).buildAndRegister();

//Naquadria Dust
mixer.recipeBuilder()
	.inputs([<gregtech:meta_item_1:2308>,<enderio:item_material:34>,<enderio:item_material:35>*4,<enderio:item_material:37>])
	.fluidInputs([<liquid:enderium> * 576, <liquid:curium> * 144])
	.outputs(<gregtech:meta_item_1:2310>)
	.EUt(30000).duration(400).buildAndRegister();

//Black Steel Dust
mixer.recipeBuilder()
	.inputs([<ore:dustSteel> * 3,<ore:dustBlackBronze> * 2,<actuallyadditions:item_crystal:3> * 2,<extrautils2:ingredients:4> * 2])
	.outputs(<gregtech:meta_item_1:2231>  * 9)
	.EUt(15).duration(200).buildAndRegister();

//Steel Dust
mixer.findRecipe(8, [<gregtech:meta_item_1:2184> * 3,<gregtech:meta_item_1:2229>,<gregtech:meta_item_1:2044>], [null]).remove();



/* ******* Compressor Recipes ******* */

//Rubber Sheet
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:32627>).outputs(<gregtech:meta_item_1:12152>).duration(20).EUt(8).buildAndRegister();

//Demon Metal Plates
compressor.recipeBuilder()
	.inputs(<extrautils2:ingredients:11>)
	.outputs(<moreplates:demon_plate>)
	.duration(200).EUt(400).buildAndRegister();

//Calcium to Bone Meal
compressor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2011> * 2)
	.outputs(<minecraft:dye:15>)
	.duration(20).EUt(4).buildAndRegister();

//Bone Meal to Skeleton Skull
compressor.recipeBuilder()
	.inputs(<minecraft:dye:15> * 3)
	.outputs(<minecraft:bone>)
	.duration(20).EUt(8).buildAndRegister();

//Bones to Skeleton Skull
compressor.recipeBuilder()
	.inputs(<minecraft:bone> * 4)
	.outputs(<minecraft:skull>)
	.duration(20).EUt(16).buildAndRegister();


/* ******* Wiremill Recipes ******* */

//Pulsating Wire Wiremill
wiremill.recipeBuilder()
	.inputs([<enderio:item_alloy_ingot:5>])
	.outputs([<contenttweaker:pulsatingwire> * 2])
	.duration(40).EUt(16).buildAndRegister();

//Omnium wire
wiremill.recipeBuilder()
	.inputs([<extendedcrafting:material:32>])
	.outputs([<gregtech:cable:709> * 2])
	.duration(100).EUt(50000).buildAndRegister();


/* ******* Centrifuge Recipes ******* */

//Black Steel Dust
centrifuge.findRecipe(30, [<gregtech:meta_item_1:2231> * 5], [null]).remove();

/* ******* Autoclave Recipes ******* */

//Black Quartz
autoclave.recipeBuilder()
	.inputs([<actuallyadditions:item_dust:7>])
	.fluidInputs(<liquid:water> * 1000)
	.outputs([<actuallyadditions:item_misc:5>])
	.duration(150).EUt(16).buildAndRegister();


/* ******* Fluid Extractor Recipes ******* */

//Pulsating Wire Fluid Extractor
fluid_extractor.recipeBuilder()
	.inputs([<contenttweaker:pulsatingwire>])
	.fluidOutputs([<liquid:pulsating_iron>*72])
	.duration(40).EUt(32).buildAndRegister();


// Add Corrected Small Battery Hull recipe to fluid extractor
fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:32500>], [null]).remove();
fluid_extractor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:32500>)
	.fluidOutputs(<liquid:tin>*144)
	.duration(80).EUt(32).buildAndRegister();



/* ******* Recipe Removals ******* */


recipes.remove(<appliedenergistics2:quartz_glass>);
recipes.remove(<appliedenergistics2:part:36>);
recipes.remove(<gregtech:meta_item_1:2231>);
recipes.removeByRecipeName("gregtech:electric_motor/electric_motor_lv_steel");
recipes.removeByRecipeName("gregtech:tin_cable_4");
recipes.removeByRecipeName("gregtech:tin_cable_2");
recipes.removeByRecipeName("gregtech:red_alloy_cable_4");
recipes.removeByRecipeName("gregtech:red_alloy_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_2");
recipes.removeByRecipeName("gregtech:conductive_iron_cable_4");
recipes.removeByRecipeName("gregtech:block_decompress_clay");
recipes.removeByRecipeName("gregtech:gravel_to_flint");
recipes.remove(<gregtech:meta_item_2:26001>);
recipes.remove(<gregtech:meta_item_2:26018>);
recipes.remove(<gregtech:meta_item_2:26026>);
recipes.remove(<gregtech:meta_item_2:26032>);
recipes.remove(<gregtech:meta_item_2:26033>);
recipes.remove(<gregtech:meta_item_2:26035>);
recipes.remove(<gregtech:meta_item_2:26047>);
recipes.remove(<gregtech:meta_item_2:26051>);
recipes.remove(<gregtech:meta_item_2:26062>);
recipes.remove(<gregtech:meta_item_2:26071>);
recipes.remove(<gregtech:meta_item_2:26072>);
recipes.remove(<gregtech:meta_item_2:26094>);
recipes.remove(<gregtech:meta_item_2:26095>);
recipes.remove(<gregtech:meta_item_2:26126>);
recipes.remove(<gregtech:meta_item_2:26112>);
recipes.remove(<gregtech:meta_item_2:26184>);
//Remove Unobtainable Clay recipe
recipes.removeByRecipeName("thermalfoundation:clay_ball");





/* ******* Multi Machine Recipe Changes ******* */

//Remove phosphorus pentoxide, not used anywhere aside from duping phosphorus
reactor.findRecipe(30, [<gregtech:meta_item_1:2466>], [<liquid:water> * 6000]).remove();
reactor.findRecipe(30, [<gregtech:meta_item_1:2050> * 4], [<liquid:oxygen> * 10000]).remove();
electrolyzer.findRecipe(30, [<gregtech:meta_item_1:2466> * 14], null).remove();


//Fix unintended Concrete powder skips
//Removing the gtce item invalidates the oredict input
macerator.findRecipe(8, [<gregtech:concrete>], [null]).remove();
fluid_extractor.findRecipe(32, [<gregtech:concrete>], [null]).remove();
recipes.removeByRecipeName("gregtech:block_decompress_concrete");

//Add back recipes specifically using gtce item
macerator.recipeBuilder()
	.inputs(<gregtech:concrete>)
	.outputs(<gregtech:meta_item_1:2296> *9)
	.duration(270).EUt(8).buildAndRegister();

fluid_extractor.recipeBuilder()
	.inputs(<gregtech:concrete>)
	.fluidOutputs(<liquid:concrete>*1296)
	.duration(720).EUt(32).buildAndRegister();
  
recipes.addShapeless(<gregtech:meta_item_1:2296>*9, [<gregtech:concrete>]);


// Magnesium Chloride decomposition
reactor.findRecipe(240, [<gregtech:meta_item_1:2125> * 2,<gregtech:meta_item_1:2063>], [null]).remove();
electrolyzer.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2125>*3])
    .outputs([<gregtech:meta_item_1:2038>])
    .fluidOutputs([<liquid:chlorine>*2000])
    .duration(720).EUt(30).buildAndRegister();



//Removing Gem Autoclave Recipes
val autoclaveInputs as IItemStack[] = [
	
	<gregtech:meta_item_1:2216>,
	<gregtech:meta_item_1:2202>,
	<gregtech:meta_item_1:2201>,
	<gregtech:meta_item_1:2281>,
	<gregtech:meta_item_1:2103>,
	<gregtech:meta_item_1:2203>,
	<gregtech:meta_item_1:2161>,
	<gregtech:meta_item_1:2128>,
	<gregtech:meta_item_1:2226>
];

for inputs in autoclaveInputs {
	
	var recipe1 as Recipe = autoclave.findRecipe(24, [inputs], [<liquid:water>*200]);
	var recipe2 as Recipe = autoclave.findRecipe(24, [inputs], [<liquid:distilled_water>*200]);

	if(!isNull(recipe1)) {
		recipe1.remove();

		if(debug) {
			print("Removing Autoclave recipe for " ~ inputs.displayName ~ " for water");
		}				
	}
	else {
		if(debug) {
			print("Failed to remove autoclave recipe for " ~ inputs.displayName ~ ". Recipe was null.");
		}
	}		


	if(!isNull(recipe2)) {
		recipe2.remove();

		if(debug) {
			print("Removing Autoclave recipe for " ~ inputs.displayName ~ " for distilled water");
		} 	
	}
	else {
		if(debug) {
			print("Failed to remove autoclave recipe for " ~ inputs.displayName ~ ". Recipe was null.");
		}
	}	

}


//Adding Gem Autoclave Recipes
val autoclaveArray = [
	
	/*Form:
	Components(duration, input, output*/
	Components(40, <ore:dustLapis>, <ore:gemLapis>), //Lapis
	Components(40, <ore:dustQuartz>, <ore:gemQuartz>), //Nether Quartz
	Components(200, <ore:dustDiamond>, <ore:gemDiamond>), //Diamond
	Components(300, <ore:dustEmerald>, <ore:gemEmerald>), //Emerald
	Components(100, <ore:dustCertusQuartz>,<ore:gemCertusQuartz>), //Certus Quartz
	Components(20, <ore:dustCoal>, <ore:gemCoal>), //Coal
	Components(20, <ore:dustApatite>, <ore:gemApatite>), //Apatite
	Components(200, <ore:dustCinnabar>, <ore:gemCinnabar>), //Cinnabar
	Components(200, <ore:dustMonazite>,<ore:gemMonazite>), //Monzanite
	Components(80, <ore:dustSodalite> ,<ore:gemSodalite>), //sodalite
	Components(80, <ore:dustLazurite>, <ore:gemLazurite>), //lazurite
	Components(40, <ore:dustQuartzite>, <ore:gemQuartzite>) //quarzite


] as Components[];

for acitems in autoclaveArray {
	
	autoclave.recipeBuilder()
		.inputs(acitems.oreMacInput)
		.fluidInputs(<liquid:water>*100)
		.outputs(acitems.oreMacOutput.firstItem)
		.duration(acitems.dur).EUt(16).buildAndRegister();

	if(debug) {
		print("Attempting to add autoclave recipes for " ~ acitems.oreMacInput.name ~ " with output " ~ acitems.oreMacOutput.name);
	}
}


//Adding Plate Compressor Recipes
val compressorArray = [
	
	/*Form:
	Components(input, output, EUt) */
	Components(<ore:gemAlmandine>,		<ore:plateAlmandine>,10),
	Components(<ore:ingotAluminium>,		<ore:plateAluminium>,10),
	Components(<ore:ingotAmericium>,		<ore:plateAmericium>,10),
	Components(<ore:ingotAnnealedCopper>,	<ore:plateAnnealedCopper>,10),
	Components(<ore:ingotAntimony>,		<ore:plateAntimony>,10),
	Components(<ore:ingotArdite>,			<ore:plateArdite>,10),
	Components(<ore:ingotBatteryAlloy>,	<ore:plateBatteryAlloy>,10),
	Components(<ore:ingotBeryllium>,		<ore:plateBeryllium>,10),
	Components(<ore:ingotBlackSteel>,		<ore:plateBlackSteel>,10),
	Components(<ore:gemBlueTopaz>,		<ore:plateBlueTopaz>,10),
	Components(<ore:ingotBrass>,			<ore:plateBrass>,10),
	Components(<ore:ingotBronze>,			<ore:plateBronze>,10),
	Components(<ore:ingotChrome>,			<ore:plateChrome>,10),
	Components(<ore:ingotCobalt>,			<ore:plateCobalt>,10),
	Components(<ore:ingotCobaltBrass>,	<ore:plateCobaltBrass>,10),
	Components(<ore:ingotConductiveIron>,	<ore:plateConductiveIron>,10),
	Components(<ore:ingotCopper>,			<ore:plateCopper>,10),
	Components(<ore:ingotCrystalMatrix>,<ore:plateCrystalMatrix>,8000),
	Components(<ore:ingotCupronickel>,	<ore:plateCupronickel>,10),
	Components(<ore:ingotDarkSteel>,		<ore:plateDarkSteel>,10),
	Components(<ore:gemDiamond>,			<ore:plateDiamond>,10),
	Components(<ore:ingotDraconium>,	<ore:plateDraconium>,3000),
	Components(<ore:ingotDraconiumAwakened>,<ore:plateDraconiumAwakened>,8000),
	Components(<ore:ingotElectricalSteel>,<ore:plateElectricalSteel>,10),
	Components(<ore:ingotElectrum>,		<ore:plateElectrum>,10),
	Components(<ore:ingotElectrumFlux>,	<ore:plateElectrumFlux>,10),
	Components(<ore:ingotEnderium>,		<ore:plateEnderium>,10),
	Components(<ore:ingotEndSteel>,		<ore:plateEndSteel>,10),
	Components(<ore:ingotEnergeticAlloy>,	<ore:plateEnergeticAlloy>,10),
	Components(<ore:ingotEpoxid>,			<ore:plateEpoxid>,10),
	Components(<ore:gemEmerald>,			<ore:plateEmerald>,10),
	Components(<ore:ingotErbium>,			<ore:plateErbium>,10),
	Components(<ore:ingotEuropium>,		<ore:plateEuropium>,10),
	Components(<ore:ingotGallium>,		<ore:plateGallium>,10),
	Components(<ore:ingotGraphite>,		<ore:plateGraphite>,10),
	Components(<ore:gemGreenSapphire>,	<ore:plateGreenSapphire>,10),
	Components(<ore:ingotGold>,			<ore:plateGold>,10),
	Components(<ore:ingotInfinity>,	<ore:plateInfinity>,30000),
	Components(<ore:ingotInvar>,			<ore:plateInvar>,10),
	Components(<ore:ingotIridium>,		<ore:plateIridium>,10),
	Components(<ore:ingotIron>,			<ore:plateIron>,10),
	Components(<ore:ingotKanthal>,		<ore:plateKanthal>,10),
	Components(<ore:ingotLead>,			<ore:plateLead>,10),
	Components(<ore:ingotLithium>,		<ore:plateLithium>,10),
	Components(<ore:ingotLumium>,			<ore:plateLumium>,10),
	Components(<ore:ingotMagnalium>,		<ore:plateMagnalium>,10),
	Components(<ore:ingotManganese>,		<ore:plateManganese>,10),
	Components(<ore:ingotManyullyn>,		<ore:plateManyullyn>,10),
	Components(<ore:ingotNeodymium>,		<ore:plateNeodymium>,10),
	Components(<ore:ingotNeutronium>,	<ore:plateNeutronium>,30000),
	Components(<ore:ingotNichrome>,		<ore:plateNichrome>,10),
	Components(<ore:ingotNickel>,			<ore:plateNickel>,10),
	Components(<ore:ingotNiobium>,		<ore:plateNiobium>,10),
	Components(<ore:ingotNiobiumNitride>,	<ore:plateNiobiumNitride>,10),
	Components(<ore:ingotOsmiridium>,		<ore:plateOsmiridium>,10),
	Components(<ore:ingotOsmium>,			<ore:plateOsmium>,10),
	Components(<ore:ingotPalladium>,		<ore:platePalladium>,10),
	Components(<ore:ingotPlutonium>,		<ore:platePlutonium>,10),
	Components(<ore:ingotPlatinum>,		<ore:platePlatinum>,10),
	Components(<ore:ingotPlutonium241>,	<ore:platePlutonium241>,10),
	Components(<ore:ingotPotassium>,		<ore:platePotassium>,10),
	Components(<ore:ingotPraseodymium>,	<ore:platePraseodymium>,10),
	Components(<ore:ingotPromethium>,		<ore:platePromethium>,10),
	Components(<ore:ingotPulsatingIron>,	<ore:platePulsatingIron>,10),
	Components(<ore:ingotRedAlloy>,		<ore:plateRedAlloy>,10),
	Components(<ore:ingotReinforcedEpoxyResin>,<ore:plateReinforcedEpoxyResin>,10),
	Components(<ore:ingotRubidium>,		<ore:plateRubidium>,10),
	Components(<ore:gemRutile>,			<ore:plateRutile>,10),
	Components(<ore:ingotSamarium>,		<ore:plateSamarium>,10),
	Components(<ore:ingotScandium>,		<ore:plateScandium>,10),
	Components(<ore:ingotSignalum>,		<ore:plateSignalum>,10),
	Components(<ore:ingotSilicon>,		<ore:plateSilicon>,10),
	Components(<ore:ingotSilver>,			<ore:plateSilver>,10),
	Components(<ore:ingotSodium>,			<ore:plateSodium>,10),
	Components(<ore:ingotSolderingAlloy>,<ore:plateSolderingAlloy>,10),
	Components(<ore:ingotStainlessSteel>,<ore:plateStainlessSteel>,10),
	Components(<ore:ingotSteel>,			<ore:plateSteel>,10),
	Components(<ore:ingotStrontium>,		<ore:plateStrontium>,10),
	Components(<ore:ingotTantalum>,		<ore:plateTantalum>,10),
	Components(<ore:ingotTellurium>,		<ore:plateTellurium>,10),
	Components(<ore:ingotTerbium>,		<ore:plateTerbium>,10),
	Components(<ore:ingotThorium>,		<ore:plateThorium>,10),
	Components(<ore:ingotThulium>,		<ore:plateThulium>,10),
	Components(<ore:ingotTin>,			<ore:plateTin>,10),
	Components(<ore:ingotTinAlloy>,		<ore:plateTinAlloy>,10),
	Components(<ore:ingotTitanium>,		<ore:plateTitanium>,10),
	Components(<ore:ingotTungsten>,		<ore:plateTungsten>,10),
	Components(<ore:ingotTungstenCarbide>,<ore:plateTungstenCarbide>,10),
	Components(<ore:ingotTungstenSteel>,	<ore:plateTungstenSteel>,10),
	Components(<ore:ingotUranium>,		<ore:plateUranium>,10),
	Components(<ore:ingotVanadium>,		<ore:plateVanadium>,10),
	Components(<ore:ingotVibrantAlloy>,	<ore:plateVibrantAlloy>,10),
	Components(<ore:ingotWroughtIron>,	<ore:plateWroughtIron>,10),
	Components(<ore:ingotYttrium>,		<ore:plateYttrium>,10),
	Components(<ore:ingotYttriumBariumCuprate>,<ore:plateYttriumBariumCuprate>,10),
	Components(<ore:ingotZinc>,			<ore:plateZinc>,10)
	
] as Components[];


for items in compressorArray {

	if(debug) {
		print("Compressing " ~ items.oreMacInput.name ~ " into " ~ items.oreMacOutput.name);
	}
	
	compressor.recipeBuilder()
		.inputs(items.oreMacInput)
		.outputs(items.oreMacOutput.firstItem)
		.duration(100).EUt(items.power).buildAndRegister();
}

