import mods.gregtech.recipe.RecipeMap;

val alloy = RecipeMap.getByName("alloy_smelter");
val wiremill = RecipeMap.getByName("wiremill");
val assembler = RecipeMap.getByName("assembler");
val hammer = RecipeMap.getByName("forge_hammer");
val reactor = RecipeMap.getByName("chemical_reactor");
val mixer = RecipeMap.getByName("mixer");
val autoclave = RecipeMap.getByName("autoclave");
val blast_furnace = RecipeMap.getByName("blast_furnace");
val compressor = RecipeMap.getByName("compressor");
val macerator = RecipeMap.getByName("macerator");


//Machine Structure
recipes.remove(<libvulpes:structuremachine>);
recipes.addShaped(<libvulpes:structuremachine>, [
	[null,<gregtech:meta_item_1:12183>,null],
	[<gregtech:meta_item_1:12183>, <extrautils2:machine>, <gregtech:meta_item_1:12183>],
	[null, <gregtech:meta_item_1:12183>, null]]);

recipes.remove(<libvulpes:hatch>);
recipes.remove(<libvulpes:hatch:1>);
recipes.remove(<libvulpes:hatch:2>);
recipes.remove(<libvulpes:hatch:3>);
recipes.remove(<libvulpes:forgepowerinput>);
recipes.remove(<advancedrocketry:loader:4>);
recipes.remove(<advancedrocketry:loader:5>);
recipes.addShapeless(<libvulpes:hatch>, [<libvulpes:structuremachine>,<gregtech:machine:720>]);
recipes.addShapeless(<libvulpes:hatch:1>, [<libvulpes:structuremachine>,<gregtech:machine:721>]);
recipes.addShapeless(<libvulpes:hatch:2>, [<libvulpes:structuremachine>,<gregtech:machine:722>]);
recipes.addShapeless(<libvulpes:hatch:3>, [<libvulpes:structuremachine>,<gregtech:machine:723>]);
recipes.addShapeless(<libvulpes:forgepowerinput>, [<libvulpes:structuremachine>,<gregtech:machine:724>]);
recipes.addShaped(<advancedrocketry:loader:4>, [[<libvulpes:hatch:3>,<gregtech:meta_item_1:32612>]]);
recipes.addShaped(<advancedrocketry:loader:5>, [[<libvulpes:hatch:2>,<gregtech:meta_item_1:32612>]]);


//Rocket Engine
recipes.remove(<advancedrocketry:rocketmotor>);
recipes.addShaped(<advancedrocketry:rocketmotor>, [
	[null, <contenttweaker:steelplating>, null],
	[<contenttweaker:steelplating>, <contenttweaker:steelplating>, <contenttweaker:steelplating>],
	[<simplyjetpacks:metaitemmods:7>, <simplyjetpacks:metaitemmods:7>, <simplyjetpacks:metaitemmods:7>]]);

//Seat
recipes.remove(<advancedrocketry:seat>);
recipes.addShaped(<advancedrocketry:seat>, [[<minecraft:wool>,<minecraft:wool>,<minecraft:wool>],[<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>,<gregtech:meta_item_1:12183>]]);

//Structure Tower
recipes.remove(<advancedrocketry:structuretower>);
recipes.addShaped(<advancedrocketry:structuretower> * 3, [[<gregtech:frame_stainless_steel>],[<gregtech:frame_stainless_steel>],[<gregtech:frame_stainless_steel>]]);

//Tanks

// Exa: snipped, use global defs

recipes.remove(<advancedrocketry:pressuretank>);
recipes.addShaped(<advancedrocketry:pressuretank>, [
	[null,<gregtech:fluid_pipe:2183>,null],
	[<gregtech:meta_item_1:12183>,hardenedtank,<gregtech:meta_item_1:12183>],
	[null,<gregtech:meta_item_1:12183>,null]]);

recipes.remove(<advancedrocketry:pressuretank:1>);
recipes.addShaped(<advancedrocketry:pressuretank:1>, [
	[null,<gregtech:fluid_pipe:2183>,null],
	[<gregtech:meta_item_1:12183>,reinforcedtank,<gregtech:meta_item_1:12183>],
	[null,<gregtech:meta_item_1:12183>,null]]);

recipes.remove(<advancedrocketry:pressuretank:2>);
recipes.addShaped(<advancedrocketry:pressuretank:2>, [
	[null,<gregtech:fluid_pipe:2183>,null],
	[<gregtech:meta_item_1:12183>,signalumtank,<gregtech:meta_item_1:12183>],
	[null,<gregtech:meta_item_1:12183>,null]]);

recipes.remove(<advancedrocketry:pressuretank:3>);
recipes.addShaped(<advancedrocketry:pressuretank:3>, [
	[null,<gregtech:fluid_pipe:2183>,null],
	[<gregtech:meta_item_1:12183>,resonanttank,<gregtech:meta_item_1:12183>],
	[null,<gregtech:meta_item_1:12183>,null]]);

//Heavy Plating
compressor.recipeBuilder().inputs([<gregtech:meta_item_1:12184> * 2]).outputs(<contenttweaker:steelplating>).EUt(100).duration(200).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:meta_item_1:12072> * 2]).outputs(<contenttweaker:titaniumplating>).EUt(500).duration(200).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:meta_item_1:12300> * 2]).outputs(<contenttweaker:tungstencarbideplating>).EUt(2000).duration(200).buildAndRegister();
compressor.recipeBuilder().inputs([<thermalfoundation:material:357> * 2]).outputs(<contenttweaker:signalumplating>).duration(200).EUt(8000).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:meta_item_1:12032> * 2]).outputs(<contenttweaker:iridiumalloyplating>).EUt(15000).duration(200).buildAndRegister();
compressor.recipeBuilder().inputs([<thermalfoundation:material:359> * 2]).outputs(<contenttweaker:enderiumplating>).duration(200).EUt(30000).buildAndRegister();
compressor.recipeBuilder().inputs([<moreplates:draconium_plate> * 2]).outputs(<contenttweaker:draconiumplating>).duration(200).EUt(60000).buildAndRegister();
compressor.recipeBuilder().inputs([<moreplates:crystal_matrix_plate> * 2]).outputs(<contenttweaker:crystalmatrixplating>).duration(200).EUt(125000).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:compressed_8:4>]).outputs(<gregtech:meta_item_1:13184>).duration(200).EUt(30).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:compressed_3:10>]).outputs(<gregtech:meta_item_1:13072>).duration(200).EUt(300).buildAndRegister();
compressor.recipeBuilder().inputs([<gregtech:compressed_10:14>]).outputs(<gregtech:meta_item_1:13235>).duration(200).EUt(300).buildAndRegister();

blast_furnace.recipeBuilder().inputs([<redstonearsenal:material:224> * 10,<moreplates:awakened_draconium_plate>,<contenttweaker:quantumflux> * 16]).fluidInputs([<liquid:krypton> * 1000]).outputs(<contenttweaker:quantumfluxedeterniumplating>).property("temperature", 9000).duration(200).EUt(250000).buildAndRegister();
blast_furnace.recipeBuilder().inputs([<moreplates:neutronium_plate> * 2]).fluidInputs([<liquid:einsteinium> * 144]).outputs(<contenttweaker:neutroniumplating>).property("temperature", 9600).duration(200).EUt(500000).buildAndRegister();

//Field Generators
recipes.remove(<gregtech:meta_item_1:32670>);
recipes.remove(<gregtech:meta_item_1:32671>);
recipes.remove(<gregtech:meta_item_1:32672>);
recipes.remove(<gregtech:meta_item_1:32673>);
recipes.remove(<gregtech:meta_item_1:32674>);
recipes.remove(<gregtech:meta_item_1:32675>);

recipes.addShaped(<gregtech:meta_item_1:32670>, [
	[<gregtech:cable:700>, <ore:circuitBasic>, <gregtech:cable:700>],
	[<ore:circuitBasic>, <minecraft:ender_pearl>, <ore:circuitBasic>],
	[<gregtech:cable:700>, <ore:circuitBasic>, <gregtech:cable:700>]]);

recipes.addShaped(<gregtech:meta_item_1:32671>, [
	[<gregtech:cable:701>, <ore:circuitGood>, <gregtech:cable:701>],
	[<ore:circuitGood>, <minecraft:ender_eye>, <ore:circuitGood>],
	[<gregtech:cable:701>, <ore:circuitGood>, <gregtech:cable:701>]]);

recipes.addShaped(<gregtech:meta_item_1:32672>, [
	[<gregtech:cable:702>, <ore:circuitAdvanced>, <gregtech:cable:702>],
	[<ore:circuitAdvanced>, <gregtech:meta_item_1:32724>, <ore:circuitAdvanced>],
	[<gregtech:cable:702>, <ore:circuitAdvanced>, <gregtech:cable:702>]]);

recipes.addShaped(<gregtech:meta_item_1:32673>, [
	[<gregtech:cable:712>, <ore:circuitExtreme>, <gregtech:cable:712>],
	[<ore:circuitExtreme>, <minecraft:nether_star>, <ore:circuitExtreme>],
	[<gregtech:cable:712>, <ore:circuitExtreme>, <gregtech:cable:712>]]);

recipes.addShaped(<gregtech:meta_item_1:32674>, [
	[<gregtech:cable:706>, <ore:circuitElite>, <gregtech:cable:706>],
	[<ore:circuitElite>, <gregtech:meta_item_1:32725>, <ore:circuitElite>],
	[<gregtech:cable:706>, <ore:circuitElite>, <gregtech:cable:706>]]);



//AutoPackage
recipes.remove(<packagedauto:package_component>);
recipes.addShaped(<packagedauto:package_component>, [
	[<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12702>],
	[<gregtech:meta_item_1:12072>,<minecraft:ender_eye>,<gregtech:meta_item_1:12072>],
	[<gregtech:meta_item_1:12702>,<gregtech:meta_item_1:12072>,<gregtech:meta_item_1:12702>]]);

recipes.remove(<packagedauto:recipe_holder>);
recipes.addShaped(<packagedauto:recipe_holder> * 3, [
	[<appliedenergistics2:quartz_glass>,<appliedenergistics2:material:52>,<appliedenergistics2:quartz_glass>],
	[<appliedenergistics2:material:52>,<extendedcrafting:storage:3>,<appliedenergistics2:material:52>],
	[<gregtech:meta_item_1:12072>,<packagedauto:me_package_component>,<gregtech:meta_item_1:12072>]]);

recipes.remove(<packagedauto:packager>);
recipes.addShaped(<packagedauto:packager>, [
	[<gregtech:meta_item_1:12072>, <packagedauto:me_package_component>, <gregtech:meta_item_1:12072>],
	[<ore:circuitExtreme>, <extrautils2:crafter>, <ore:circuitExtreme>],
	[<gregtech:meta_item_1:12072>, <appliedenergistics2:part:240>, <gregtech:meta_item_1:12072>]]);

recipes.remove(<packagedauto:unpackager>);
recipes.addShaped(<packagedauto:unpackager>, [
	[<gregtech:meta_item_1:12072>, <packagedauto:me_package_component>, <gregtech:meta_item_1:12072>],
	[<ore:circuitExtreme>, <extrautils2:crafter>, <ore:circuitExtreme>],
	[<gregtech:meta_item_1:12072>, <appliedenergistics2:part:260>, <gregtech:meta_item_1:12072>]]);

recipes.remove(<packagedauto:encoder>);
recipes.addShaped(<packagedauto:encoder>, [
	[<gregtech:meta_item_1:12072>,<packagedauto:me_package_component>,<gregtech:meta_item_1:12072>],
	[<packagedauto:recipe_holder>,<ae2stuff:encoder>,<packagedauto:recipe_holder>],
	[<gregtech:meta_item_1:12072>,<ore:circuitExtreme>,<gregtech:meta_item_1:12072>]]);

recipes.remove(<ae2stuff:encoder>);
recipes.addShaped(<ae2stuff:encoder>, [
	[<gregtech:meta_item_1:12183>,<appliedenergistics2:part:340>,<gregtech:meta_item_1:12183>],
	[<appliedenergistics2:material:44>,<gregtech:machine:503>,<appliedenergistics2:material:43>],
	[<gregtech:meta_item_1:12183>,<ore:circuitAdvanced>,<gregtech:meta_item_1:12183>]]);

recipes.remove(<packagedauto:me_package_component>);
recipes.addShaped(<packagedauto:me_package_component>, [
	[<gregtech:meta_item_1:12072>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12072>],
	[<appliedenergistics2:material:44>, <packagedauto:package_component>, <appliedenergistics2:material:43>],
	[<gregtech:meta_item_1:12072>, <appliedenergistics2:quartz_glass>, <gregtech:meta_item_1:12072>]]);


recipes.remove(<packagedavaritia:extreme_crafter>);
recipes.addShaped(<packagedavaritia:extreme_crafter>, [
	[<moreplates:crystal_matrix_plate>, <packagedauto:me_package_component>, <moreplates:crystal_matrix_plate>],
	[<moreplates:crystal_matrix_plate>, <extendedcrafting:table_ultimate>, <moreplates:crystal_matrix_plate>],
	[<moreplates:crystal_matrix_plate>, <moreplates:crystal_matrix_plate>, <moreplates:crystal_matrix_plate>]]);


alloy.recipeBuilder().inputs([<gregtech:meta_item_1:2035>,<gregtech:meta_item_1:2138> * 4]).outputs([<thermalfoundation:glass:3>]).duration(100).EUt(30).buildAndRegister();

//Suit Workstation
recipes.remove(<advancedrocketry:suitworkstation>);
recipes.addShaped(<advancedrocketry:suitworkstation>, [
	[<gregtech:meta_item_1:32651>,<avaritia:compressed_crafting_table>,<gregtech:meta_item_1:32651>],
	[<ore:circuitGood>, <gregtech:machine:502>, <ore:circuitGood>],
	[<forestry:worktable>,<forestry:worktable>,<forestry:worktable>]]);

//Gas Charger
recipes.remove(<advancedrocketry:oxygencharger>);
recipes.addShaped(<advancedrocketry:oxygencharger>, [
	[<contenttweaker:steelplating>, <gregtech:fluid_pipe:2183>, <contenttweaker:steelplating>],
	[<gregtech:meta_item_1:32612>, hardenedtank, <gregtech:meta_item_1:32612>]]);

recipes.addShaped(<contenttweaker:cloth> * 4, [
	[<minecraft:string>, <minecraft:string>, <minecraft:string>],
	[<minecraft:string>, <minecraft:string>, <minecraft:string>],
	[<minecraft:string>, <minecraft:string>, <minecraft:string>]]);

recipes.addShaped(<contenttweaker:thermalcloth> * 3, [
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>],
	[<contenttweaker:cloth>,<contenttweaker:cloth>,<contenttweaker:cloth>],
	[<minecraft:redstone>, <minecraft:redstone>, <minecraft:redstone>]]);

recipes.remove(<advancedrocketry:spacehelmet>);
recipes.remove(<advancedrocketry:spacechestplate>);
recipes.remove(<advancedrocketry:spaceboots>);
recipes.remove(<advancedrocketry:spaceleggings>);
recipes.addShaped(<contenttweaker:unpreparedspacehelmet>, [
	[<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>],
	[<contenttweaker:thermalcloth>, null, <contenttweaker:thermalcloth>]]);
recipes.addShaped(<contenttweaker:unpreparedspacechestpiece>, [
[<contenttweaker:thermalcloth>,null,<contenttweaker:thermalcloth>],
[<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>],
[<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>]]);
recipes.addShaped(<contenttweaker:unpreparedspaceleggings>, [
	[<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>,<contenttweaker:thermalcloth>],
	[<contenttweaker:thermalcloth>,null,<contenttweaker:thermalcloth>],
	[<contenttweaker:thermalcloth>,null,<contenttweaker:thermalcloth>]]);
recipes.addShaped(<contenttweaker:unpreparedspaceboots>, [
	[<contenttweaker:thermalcloth>,null,<contenttweaker:thermalcloth>],
	[<contenttweaker:thermalcloth>,null,<contenttweaker:thermalcloth>]]);
assembler.recipeBuilder().inputs([<contenttweaker:unpreparedspacehelmet>,<contenttweaker:pressurelayer> * 2, <contenttweaker:radiationlayer> * 2, <minecraft:glass_pane>, <ore:circuitAdvanced>]).outputs([<advancedrocketry:spacehelmet>]).duration(500).EUt(30).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:unpreparedspacechestpiece>,<contenttweaker:pressurelayer> * 4, <contenttweaker:radiationlayer> * 4]).outputs([<advancedrocketry:spacechestplate>]).duration(800).EUt(30).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:unpreparedspaceleggings>,<contenttweaker:pressurelayer>*3,<contenttweaker:radiationlayer>*3]).outputs([<advancedrocketry:spaceleggings>]).duration(600).EUt(30).buildAndRegister();
assembler.recipeBuilder().inputs([<contenttweaker:unpreparedspaceboots>,<contenttweaker:pressurelayer>,<contenttweaker:radiationlayer>]).outputs([<advancedrocketry:spaceboots>]).duration(400).EUt(30).buildAndRegister();


recipes.addShaped(<contenttweaker:pressurelayer>, [
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12231>, <contenttweaker:cloth>],
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12231>, <contenttweaker:cloth>],
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12231>, <contenttweaker:cloth>]]);

recipes.addShaped(<contenttweaker:radiationlayer>, [
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12035>, <contenttweaker:cloth>],
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12035>, <contenttweaker:cloth>],
	[<contenttweaker:cloth>, <gregtech:meta_item_1:12035>, <contenttweaker:cloth>]]);

//Liquid Fuel Tank
recipes.remove(<advancedrocketry:fueltank>);
recipes.addShaped(<advancedrocketry:fueltank>, [
[<gregtech:meta_item_1:12183>,<thermalexpansion:tank>,<gregtech:meta_item_1:12183>],
[<gregtech:meta_item_1:12183>,<thermalexpansion:tank>,<gregtech:meta_item_1:12183>],
[<gregtech:meta_item_1:12183>,<thermalexpansion:tank>,<gregtech:meta_item_1:12183>]]);

mixer.recipeBuilder().inputs([<minecraft:gravel> * 3,<gregtech:meta_item_1:2105>]).fluidInputs([<liquid:water> * 500]).fluidOutputs(<liquid:concrete> * 1000).EUt(16).duration(200).buildAndRegister();

//Guidance Computer
recipes.remove(<advancedrocketry:guidancecomputer>);
mods.extendedcrafting.TableCrafting.addShaped(<advancedrocketry:guidancecomputer>, [
	[<appliedenergistics2:quartz_vibrant_glass>,<contenttweaker:steelplating>,<contenttweaker:steelplating>,<contenttweaker:steelplating>,<appliedenergistics2:quartz_vibrant_glass>],
	[<contenttweaker:steelplating>,<gregtech:meta_item_1:32692>,<extrautils2:screen>,<gregtech:meta_item_1:32682>,<contenttweaker:steelplating>],
	[<contenttweaker:steelplating>,<ore:circuitAdvanced>,<libvulpes:structuremachine>,<ore:circuitAdvanced>,<contenttweaker:steelplating>],
	[<contenttweaker:steelplating>,<gregtech:meta_item_1:32682>,<ore:circuitAdvanced>,<gregtech:meta_item_1:32692>,<contenttweaker:steelplating>],
	[<appliedenergistics2:quartz_vibrant_glass>,<contenttweaker:steelplating>,<contenttweaker:steelplating>,<contenttweaker:steelplating>,<appliedenergistics2:quartz_vibrant_glass>]]);

//rocket builder
recipes.remove(<advancedrocketry:rocketbuilder>);
mods.extendedcrafting.TableCrafting.addShaped(<advancedrocketry:rocketbuilder>, [
	[<gregtech:meta_item_1:32651>,<contenttweaker:steelplating>,<gregtech:meta_item_1:32681>,<contenttweaker:steelplating>,<gregtech:meta_item_1:32651>],
	[<contenttweaker:steelplating>,<libvulpes:structuremachine>,<extrautils2:screen>,<libvulpes:structuremachine>,<contenttweaker:steelplating>],
	[<contenttweaker:steelplating>,<ore:circuitGood>,<gregtech:machine:101>,<ore:circuitGood>,<contenttweaker:steelplating>],
	[<contenttweaker:steelplating>,<libvulpes:structuremachine>,<ore:circuitGood>,<libvulpes:structuremachine>,<contenttweaker:steelplating>],
	[<gregtech:meta_item_1:32651>,<contenttweaker:steelplating>,<gregtech:meta_item_1:32681>,<contenttweaker:steelplating>,<gregtech:meta_item_1:32651>]]);

//planet id chip
recipes.remove(<advancedrocketry:planetidchip>);
recipes.addShaped(<advancedrocketry:planetidchip>, [
[<gregtech:meta_item_2:16183>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_2:16183>],
[<gregtech:meta_item_2:16183>,<ore:circuitGood>,<gregtech:meta_item_2:16183>],
[<gregtech:meta_item_2:16183>,<gregtech:meta_item_1:12702>,<gregtech:meta_item_2:16183>]]);

macerator.recipeBuilder().inputs([<enderio:item_alloy_ingot:7>]).outputs([<enderio:item_material:74>]).duration(200).EUt(30).buildAndRegister();
macerator.recipeBuilder().inputs([<ore:sandstone> * 4]).outputs([<gregtech:meta_item_1:2156>]).duration(300).EUt(30).buildAndRegister();
macerator.recipeBuilder().inputs([<gregtech:ore_copper_0>]).outputs([<gregtech:meta_item_1:5018> * 2]).duration(80).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<appliedenergistics2:material>]).outputs([<gregtech:meta_item_1:2202>]).duration(20).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<draconicevolution:draconium_ore:2>]).outputs([<draconicevolution:draconium_dust> * 3]).duration(40).EUt(500).buildAndRegister();

//Launch Pad
recipes.remove(<advancedrocketry:launchpad>);
recipes.addShaped(<advancedrocketry:launchpad> * 9, [
[<gregtech:concrete>,<gregtech:concrete>,<gregtech:concrete>],
[<gregtech:concrete>,<gregtech:concrete>,<gregtech:concrete>],
[<gregtech:concrete>,<gregtech:concrete>,<gregtech:concrete>]]);

//Linker
recipes.remove(<libvulpes:linker>);
recipes.addShaped(<libvulpes:linker>, [
	[null,<gregtech:meta_item_1:32682>,null],
	[<gregtech:meta_item_1:12183>,<ore:circuitAdvanced>,<gregtech:meta_item_1:12183>],
	[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);

recipes.addShapeless(<minecraft:string> * 3, [<hooked:microcrafting>,<hooked:microcrafting>]);

recipes.remove(<advancedrocketry:fuelingstation>);
recipes.addShaped(<advancedrocketry:fuelingstation>, [
[<gregtech:meta_item_1:32612>,<gregtech:fluid_pipe:2183>,<gregtech:meta_item_1:32612>],
[<gregtech:meta_item_1:32612>,<libvulpes:structuremachine>,<gregtech:meta_item_1:32612>],
[<contenttweaker:steelplating>,<contenttweaker:steelplating>,<contenttweaker:steelplating>]]);
<advancedrocketry:fuelingstation>.displayName = "Fueling Station";

macerator.recipeBuilder().inputs([<libvulpes:ore0>]).outputs([<libvulpes:productdust> * 2]).duration(200).EUt(420).buildAndRegister();
autoclave.recipeBuilder().inputs([<libvulpes:productdust> * 4]).fluidInputs(<liquid:deuterium> * 1000).outputs([<libvulpes:productcrystal> * 4]).duration(400).EUt(110).buildAndRegister();

recipes.remove(<advancedrocketry:stationbuilder>);
mods.extendedcrafting.TableCrafting.addShaped(<advancedrocketry:stationbuilder>, [
	[<gregtech:meta_item_1:32653>,<contenttweaker:titaniumplating>,<gregtech:meta_item_1:32683>,<contenttweaker:titaniumplating>,<gregtech:meta_item_1:32653>],
	[<contenttweaker:titaniumplating>,<libvulpes:structuremachine>,<extrautils2:screen>,<libvulpes:structuremachine>,<contenttweaker:titaniumplating>],
	[<contenttweaker:titaniumplating>,<ore:circuitExtreme>,<gregtech:machine:103>,<ore:circuitExtreme>,<contenttweaker:titaniumplating>],
	[<contenttweaker:titaniumplating>,<libvulpes:structuremachine>,<ore:circuitExtreme>,<libvulpes:structuremachine>,<contenttweaker:titaniumplating>],
	[<gregtech:meta_item_1:32653>,<contenttweaker:titaniumplating>,<gregtech:meta_item_1:32683>,<contenttweaker:titaniumplating>,<gregtech:meta_item_1:32653>]]);

recipes.remove(<advancedrocketry:spacestationchip>);
recipes.addShaped(<advancedrocketry:spacestationchip>, [
[<gregtech:meta_item_2:16072>,<gregtech:meta_item_1:12231>,<gregtech:meta_item_2:16072>],
[<gregtech:meta_item_2:16072>,<ore:circuitExtreme>,<gregtech:meta_item_2:16072>],
[<gregtech:meta_item_2:16072>,<gregtech:meta_item_1:12231>,<gregtech:meta_item_2:16072>]]);

recipes.remove(<advancedrocketry:warpmonitor>);
recipes.addShaped(<advancedrocketry:warpmonitor>, [
	[<metaitem:sensor.ev>, <extrautils2:screen>, <metaitem:sensor.ev>],
	[<ore:circuitExtreme>, <libvulpes:structuremachine>, <ore:circuitExtreme>],
	[<metaitem:sensor.ev>, <ore:circuitExtreme>, <metaitem:sensor.ev>]]);

recipes.remove(<libvulpes:holoprojector>);
recipes.addShaped(<libvulpes:holoprojector>, [
	[null,null,null],
	[<ore:plateTitanium>, <advancedrocketry:satelliteprimaryfunction>, <ore:plateTitanium>],
	[<ore:plateTitanium>, <ore:plateTitanium>, <ore:plateTitanium>]]);

recipes.remove(<advancedrocketry:satelliteprimaryfunction>);
recipes.addShaped(<advancedrocketry:satelliteprimaryfunction>, [
	[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
	[<ore:ingotPulsatingIron>, <metaitem:sensor.ev>, <ore:ingotPulsatingIron>],
	[null, <ore:ingotPulsatingIron>, null]]);

recipes.remove(<advancedrocketry:warpcore>);
recipes.addShaped(<advancedrocketry:warpcore>, [
	[<thermalfoundation:storage_alloy:6>,<gregtech:compressed_3:10>, <thermalfoundation:storage_alloy:6>],
	[<gregtech:compressed_3:10>, <extendedcrafting:storage:2>, <gregtech:compressed_3:10>],
	[<thermalfoundation:storage_alloy:6>, <gregtech:compressed_3:10>, <thermalfoundation:storage_alloy:6>]]);

