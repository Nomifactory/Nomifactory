import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.modularmachinery.RecipePrimer;

val assembler = RecipeMap.getByName("assembler");


//////////////////////////////////////////////////////////////
/////////////	    Modular Machinery	    //////////////////
//////////////////////////////////////////////////////////////

//Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [[<ore:circuitAdvanced>, <modularmachinery:itemmodularium>, <ore:circuitAdvanced>],[<modularmachinery:itemmodularium>, <extrautils2:screen>, <modularmachinery:itemmodularium>], [<ore:circuitAdvanced>, <modularmachinery:itemmodularium>, <ore:circuitAdvanced>]]);
<modularmachinery:blockcontroller>.displayName = "Modular Machine Controller";

//Item Input
recipes.addShaped(<modularmachinery:blockinputbus:2>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:1>, <modularmachinery:itemmodularium>], [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:2>, <modularmachinery:itemmodularium>], [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:4>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:3>, <modularmachinery:itemmodularium>], [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:5>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:4>, <modularmachinery:itemmodularium>], [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]]);
recipes.addShaped(<modularmachinery:blockinputbus:6>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:5>, <modularmachinery:itemmodularium>], [<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>]]);

//Item Output
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:1>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:2>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:3>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:4>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:4>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [[<minecraft:chest>, <modularmachinery:itemmodularium>, <minecraft:chest>], [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:5>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);

//Fluid Input
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:1>, <modularmachinery:itemmodularium>], [<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:2>, <modularmachinery:itemmodularium>], [<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:3>, <modularmachinery:itemmodularium>], [<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:4>, <modularmachinery:itemmodularium>], [<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>]]);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>, [[null, <minecraft:hopper>, null], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:5>, <modularmachinery:itemmodularium>], [<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>]]);

//Fluid Output
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [[<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:1>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [[<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:2>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [[<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:3>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>, [[<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:4>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>, [[<minecraft:bucket>, <modularmachinery:itemmodularium>, <minecraft:bucket>], [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:5>, <modularmachinery:itemmodularium>], [null, <minecraft:hopper>, null]]);

//Energy Input Hatch

recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);

recipes.addShaped(<modularmachinery:blockenergyinputhatch>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:714>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:1>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:724>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:734>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:744>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:754>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:764>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:774>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:784>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);

<modularmachinery:blockenergyinputhatch>.displayName = "Modularium LV Energy Input";
<modularmachinery:blockenergyinputhatch:1>.displayName = "Modularium MV Energy Input";
<modularmachinery:blockenergyinputhatch:2>.displayName = "Modularium HV Energy Input";
<modularmachinery:blockenergyinputhatch:3>.displayName = "Modularium EV Energy Input";
<modularmachinery:blockenergyinputhatch:4>.displayName = "Modularium IV Energy Input";
<modularmachinery:blockenergyinputhatch:5>.displayName = "Modularium LuV Energy Input";
<modularmachinery:blockenergyinputhatch:6>.displayName = "Modularium ZPM Energy Input";
<modularmachinery:blockenergyinputhatch:7>.displayName = "Modularium UV Energy Input";

//Energy Output Hatch

recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:1>);

recipes.addShaped(<modularmachinery:blockenergyoutputhatch>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:715>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:1>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:725>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:735>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:3>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:745>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:4>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:755>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:5>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:765>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:6>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:775>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:7>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:machine:785>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);

<modularmachinery:blockenergyoutputhatch>.displayName = "Modularium LV Energy Output";
<modularmachinery:blockenergyoutputhatch:1>.displayName = "Modularium MV Energy Output";
<modularmachinery:blockenergyoutputhatch:2>.displayName = "Modularium HV Energy Output";
<modularmachinery:blockenergyoutputhatch:3>.displayName = "Modularium EV Energy Output";
<modularmachinery:blockenergyoutputhatch:4>.displayName = "Modularium IV Energy Output";
<modularmachinery:blockenergyoutputhatch:5>.displayName = "Modularium LuV Energy Output";
<modularmachinery:blockenergyoutputhatch:6>.displayName = "Modularium ZPM Energy Output";
<modularmachinery:blockenergyoutputhatch:7>.displayName = "Modularium UV Energy Output";


//Casing
recipes.remove(<modularmachinery:blockcasing>);
recipes.addShaped(<modularmachinery:blockcasing> * 2, [[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<ore:craftingToolWrench>,<modularmachinery:itemmodularium>],[<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>,<modularmachinery:itemmodularium>]]);
assembler.recipeBuilder().inputs([<modularmachinery:itemmodularium> * 4]).outputs([<modularmachinery:blockcasing>]).duration(200).EUt(30).buildAndRegister();

// Machine Vent
recipes.addShaped(<modularmachinery:blockcasing:1>, [[null, <modularmachinery:itemmodularium>, null],[<modularmachinery:itemmodularium>, <gregtech:multiblock_casing:1>, <modularmachinery:itemmodularium>], [null, <modularmachinery:itemmodularium>, null]]);


/////////////	 Tier One Space Ship   	  //////////////////	200 ingots

recipes.addShaped(<contenttweaker:tieroneship>, [
[null, <contenttweaker:t1guidance>, null],
[<contenttweaker:t1laser>, <gregtech:meta_item_1:32670>, <contenttweaker:t1laser>],
[<simplyjetpacks:metaitemmods:7>, <gregtech:machine:480>, <simplyjetpacks:metaitemmods:7>]]);

<contenttweaker:tieroneship>.addTooltip(format.italic(format.white("Harvests Titanium and other light metals from asteroids in the microverse.")));

//Tier 1 Guidance
recipes.addShaped(<contenttweaker:t1guidance>,
	[[<gregtech:meta_item_1:32690>, <contenttweaker:steelplating>, <gregtech:meta_item_1:32690>],
	[<contenttweaker:steelplating>, <ore:circuitGood>, <contenttweaker:steelplating>],
	[<ore:circuitGood>,<ore:circuitGood>,<ore:circuitGood>]]);

//Tier 1 Laser
recipes.addShaped(<contenttweaker:t1laser>,[
	[null, <minecraft:redstone_block>, null],
	[<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>],
	[<minecraft:quartz>, <minecraft:glass>, <minecraft:quartz>]]);



/////////////	 Tier Two Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiertwoship>, [
[null, null, <contenttweaker:t1guidance>, null, null],
[null, <contenttweaker:titaniumplating>, <gregtech:machine:804>, <contenttweaker:titaniumplating>, null],
[<contenttweaker:t1laser>, <gregtech:meta_item_1:32670>, <thermalexpansion:frame:146>, <gregtech:meta_item_1:32670>, <contenttweaker:t1laser>],
[<contenttweaker:titaniumplating>, <contenttweaker:titaniumplating>, <gregtech:machine:481>, <contenttweaker:titaniumplating>, <contenttweaker:titaniumplating>],
[null, <simplyjetpacks:metaitemmods:8>,<simplyjetpacks:metaitemmods:8>,<simplyjetpacks:metaitemmods:8>, null]]);

<contenttweaker:tiertwoship>.addTooltip(format.white(format.italic("Harvests Tungsten and other heavy metals from asteroids in the microverse.")));


/////////////	 Tier Three Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tierthreeship>,
[[null, null, <contenttweaker:t1guidance>, null, <contenttweaker:t1guidance>, null, null],
[null, null, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, null, null],
[null, null, <gregtech:meta_item_1:32671>, <gregtech:machine:805>, <gregtech:meta_item_1:32671>, null, null],
[null, <contenttweaker:t2laser>, <contenttweaker:tungstencarbideplating>, <gregtech:machine:805>, <contenttweaker:tungstencarbideplating>, <contenttweaker:t2laser>, null],
[<contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>,<thermalexpansion:frame:146>, <gregtech:machine:805>, <thermalexpansion:frame:146>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>],
[<contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <gregtech:machine:482>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>],
[null, null, <simplyjetpacks:metaitemmods:28>,<simplyjetpacks:metaitemmods:28>,<simplyjetpacks:metaitemmods:28>, null, null]]);

//Tier 2 Laser
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:t2laser>,[
	[null, <minecraft:redstone_block>, null,<minecraft:redstone_block>,null],
	[<minecraft:glass>, <contenttweaker:solidifiedargon>, <minecraft:glass>,<contenttweaker:solidifiedargon>,<minecraft:glass>],
	[<minecraft:glass>, <contenttweaker:solidifiedargon>, <minecraft:glass>,<contenttweaker:solidifiedargon>,<minecraft:glass>],
	[<minecraft:glass>, <minecraft:quartz_block>, <minecraft:glass>, <minecraft:quartz_block>,<minecraft:glass>],
	[<minecraft:quartz>, <ore:circuitAdvanced>, <enderio:block_cap_bank:1>, <ore:circuitAdvanced>, <minecraft:quartz>]]);

<contenttweaker:tierthreeship>.addTooltip(format.white(format.italic("Harvests ultra hot metals and gems from Nether microverses.")));

//Rocket Engine
recipes.remove(<advancedrocketry:advrocketmotor>);
recipes.addShaped(<advancedrocketry:advrocketmotor>, [
	[null, <contenttweaker:tungstencarbideplating>, null],
	[<contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>],
	[<simplyjetpacks:metaitemmods:8>,<simplyjetpacks:metaitemmods:8>,<simplyjetpacks:metaitemmods:8>]]);

/////////////	 Tier Four Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tierfourship>,
[[null, null, null, <contenttweaker:t1guidance>, null, null, null],
[null, null, <contenttweaker:t2laser>, <contenttweaker:tungstencarbideplating>, <contenttweaker:t2laser>, null, null],
[null, <contenttweaker:signalumplating>, <gregtech:machine:806>, <contenttweaker:tungstencarbideplating>, <gregtech:machine:806>, <contenttweaker:signalumplating>, null],
[null, <contenttweaker:signalumplating>, <gregtech:meta_item_1:32672>, <contenttweaker:tungstencarbideplating>, <gregtech:meta_item_1:32672>, <contenttweaker:signalumplating>, null],
[null, <contenttweaker:signalumplating>, <thermalexpansion:frame:147>, <contenttweaker:tungstencarbideplating>, <thermalexpansion:frame:147>, <contenttweaker:signalumplating>, null],
[null, <simplyjetpacks:metaitemmods:9>, <thermalexpansion:dynamo:3>, <contenttweaker:tungstencarbideplating>, <thermalexpansion:dynamo:3>, <simplyjetpacks:metaitemmods:9>, null],
[null, null, <simplyjetpacks:metaitemmods:9>, null, <simplyjetpacks:metaitemmods:9>, null, null]]);


//Tier 2 Guidance
recipes.addShaped(<contenttweaker:t2guidance>, [
	[<gregtech:meta_item_1:32693>, <contenttweaker:tungstencarbideplating>, <gregtech:meta_item_1:32693>],
	[<contenttweaker:tungstencarbideplating>, <ore:circuitExtreme>, <contenttweaker:tungstencarbideplating>],
	[<ore:circuitExtreme>,<ore:circuitExtreme>,<ore:circuitExtreme>]]);




/////////////	 Tier Five Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tierfiveship>,[
[null, null, <contenttweaker:t2guidance>, null, <contenttweaker:t2guidance>, null, null],
[null, null, <contenttweaker:iridiumalloyplating>, null, <contenttweaker:iridiumalloyplating>, null, null],
[null, <contenttweaker:signalumplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:t3laser>, <contenttweaker:iridiumalloyplating>, <contenttweaker:signalumplating>, null],
[<contenttweaker:signalumplating>, <contenttweaker:signalumplating>, <gregtech:meta_item_1:32673>, <gregtech:machine:1010>, <gregtech:meta_item_1:32673>, <contenttweaker:signalumplating>, <contenttweaker:signalumplating>],
[null, <contenttweaker:iridiumalloyplating>, <thermalexpansion:frame:147>, <nuclearcraft:fission_controller_new_fixed>, <thermalexpansion:frame:147>, <contenttweaker:iridiumalloyplating>, null],
[<contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <nuclearcraft:fission_port>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>],
[null, null, <simplyjetpacks:metaitemmods:10>,<simplyjetpacks:metaitemmods:10>,<simplyjetpacks:metaitemmods:10>, null, null]]);



//Tier 3 Engine


/////////////	 Tier Six Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiersixship>,[
[null, <contenttweaker:t3laser>, <contenttweaker:t2guidance>, null, <contenttweaker:t2guidance>, <contenttweaker:t3laser>, null],
[<contenttweaker:t3laser>, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, null, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, <contenttweaker:t3laser>],
[<contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>, <contenttweaker:enderiumplating>,<contenttweaker:enderiumplating>],
[null, <contenttweaker:enderiumplating>, <gregtech:machine:1010>, <thermalexpansion:frame:148>, <gregtech:machine:1010>, <contenttweaker:enderiumplating>, null],
[<contenttweaker:enderiumplating>, <gregtech:meta_item_1:32674>, <thermalexpansion:frame:148>, <nuclearcraft:fission_controller_new_fixed>, <thermalexpansion:frame:148>, <gregtech:meta_item_1:32674>, <contenttweaker:enderiumplating>],
[null, <contenttweaker:enderiumplating>, <nuclearcraft:fission_port>,<nuclearcraft:fission_port>,<nuclearcraft:fission_port>, <contenttweaker:enderiumplating>, null],
[null, <contenttweaker:enderiumplating>, <simplyjetpacks:metaitemmods:29>,<simplyjetpacks:metaitemmods:29>,<simplyjetpacks:metaitemmods:29>, <contenttweaker:enderiumplating>, null]]);

<gregtech:meta_item_1:32724>.displayName = "Quantum Eye";
<gregtech:meta_item_1:32724>.clearTooltip();
<gregtech:meta_item_1:32724>.addTooltip(format.darkPurple("Quantum Eye"));


//Tier 3 Laser


/////////////	 Tier Seven Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiersevenship>, [
[null, <contenttweaker:t3laser>, null, null, <contenttweaker:draconiumplating>, null, null, <contenttweaker:t3laser>, null],
[null, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:t2guidance>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, null],
[<contenttweaker:t3laser>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:t3laser>],
[<contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <draconicevolution:particle_generator:2>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>],
[<contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <gregtech:meta_item_1:32675>, <draconicevolution:ender_energy_manipulator>, <gregtech:meta_item_1:32675>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>],
[<contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <draconicevolution:particle_generator:2>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>],
[<contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>],
[<contenttweaker:draconiumplating>, null, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, <contenttweaker:draconiumplating>, null, <contenttweaker:draconiumplating>],
[<contenttweaker:draconiumplating>, null, <contenttweaker:warpengine>, <contenttweaker:warpengine>, null, <contenttweaker:warpengine>, <contenttweaker:warpengine>, null, <contenttweaker:draconiumplating>]]);

recipes.addShaped(<contenttweaker:warpengine>, [
	[<moreplates:crystal_matrix_plate>,<draconicevolution:item_dislocation_inhibitor>,<moreplates:crystal_matrix_plate>],
	[<draconicevolution:dislocator_advanced>, <thermalfoundation:storage_alloy:7>, <draconicevolution:dislocator_advanced>],
	[<simplyjetpacks:metaitemmods:30>,<simplyjetpacks:metaitemmods:11>,<simplyjetpacks:metaitemmods:30>]]);



/////////////	 Tier Eight Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiereightship>, [
[null, <contenttweaker:t2guidance>, null, <contenttweaker:crystalmatrixplating>, null, <contenttweaker:crystalmatrixplating>, null, <contenttweaker:t2guidance>, null],
[null, <contenttweaker:tungstencarbideplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:t3laser>, <contenttweaker:crystalmatrixplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:tungstencarbideplating>, null],
[null, <contenttweaker:tungstencarbideplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:tungstencarbideplating>, null],
[<contenttweaker:t3laser>, <contenttweaker:crystalmatrixplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:t3laser>],
[<contenttweaker:tungstencarbideplating>, <contenttweaker:crystalmatrixplating>, <gregtech:machine:1011>,<gregtech:machine:1011>, <gregtech:meta_item_1:32676>, <gregtech:machine:1011>,<gregtech:machine:1011>, <contenttweaker:crystalmatrixplating>, <contenttweaker:tungstencarbideplating>],
[<contenttweaker:tungstencarbideplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:tungstencarbideplating>],
[<contenttweaker:tungstencarbideplating>, <advancedrocketry:warpcore>, <contenttweaker:crystalmatrixplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:crystalmatrixplating>, <contenttweaker:crystalmatrixplating>, <advancedrocketry:warpcore>, <contenttweaker:tungstencarbideplating>],
[<contenttweaker:tungstencarbideplating>, <advancedrocketry:warpmonitor>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:iridiumalloyplating>, <contenttweaker:tungstencarbideplating>, <contenttweaker:tungstencarbideplating>, <advancedrocketry:warpmonitor>, <contenttweaker:tungstencarbideplating>],
[null, <contenttweaker:warpengine>, null, null, null, null, null, <contenttweaker:warpengine>, null]]);



/////////////	 Tier Nine Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiernineship>, [
[null, null, null, null, <contenttweaker:quantumfluxedeterniumplating>, null, null, null, null],
[null, null, null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null, null, null],
[null, null, null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:universalnavigator>, <contenttweaker:quantumfluxedeterniumplating>, null, null, null],
[null, null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <gregtech:meta_item_1:32677>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null, null],
[null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null],
[<contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <gregtech:machine:1012>, <contenttweaker:quantumfluxedeterniumplating>, <draconicevolution:reactor_component>, <contenttweaker:quantumfluxedeterniumplating>, <gregtech:machine:1012>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>],
[null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <draconicevolution:reactor_core>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null],
[null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null],
[<contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>, null, <contenttweaker:warpengine>, null, <contenttweaker:warpengine>, null, <contenttweaker:quantumfluxedeterniumplating>, <contenttweaker:quantumfluxedeterniumplating>]]);

recipes.addShaped(<contenttweaker:universalnavigator>, [
	[<gregtech:meta_item_1:12308>, <gtadditions:ga_meta_item:32015>, <gregtech:meta_item_1:12308>],
	[<gtadditions:ga_meta_item:32015>, <gregtech:meta_item_2:32501>, <gtadditions:ga_meta_item:32015>],
	[<gregtech:meta_item_1:12308>,<gtadditions:ga_meta_item:32015>,<gregtech:meta_item_1:12308>]]);


/////////////	 Tier Ten Space Ship  	  //////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:tiertenship>, [
[null, null, <contenttweaker:neutroniumplating>, null, null, null, <contenttweaker:neutroniumplating>,null, null],
[null, <contenttweaker:neutroniumplating>, <contenttweaker:universalnavigator>, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, <contenttweaker:universalnavigator>, <contenttweaker:neutroniumplating>, null],
[null, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, null],
[null, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, null],
[null, <contenttweaker:neutroniumplating>, <draconicevolution:reactor_core>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <draconicevolution:reactor_core>, <contenttweaker:neutroniumplating>, null],
[<solarflux:solar_panel_neutronium>, <contenttweaker:neutroniumplating>, <draconicevolution:reactor_component>, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, <draconicevolution:reactor_component>, <contenttweaker:neutroniumplating>, <solarflux:solar_panel_neutronium>],
[<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>,<gregtech:machine:1013>,<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>,<contenttweaker:neutroniumplating>],
[null, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, <contenttweaker:neutroniumplating>, null, <contenttweaker:neutroniumplating>, null],
[<contenttweaker:neutroniumplating>, null, null, <contenttweaker:warpengine>, null, <contenttweaker:warpengine>, null, null, <contenttweaker:neutroniumplating>]]);

<extendedcrafting:trimmed>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:1>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:2>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:3>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:4>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:5>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:5>.clearTooltip();
<extendedcrafting:trimmed:5>.addTooltip("Block of Black Steel");
<extendedcrafting:trimmed:5>.addTooltip(format.gray(format.italic("Omnium Trimmed")));


// Small Dimensional Projector Recipes



//Tier 1 Steel Microminer

val steel1 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_steel_1", "small_microverse", 500);
steel1.addEnergyPerTickInput(2000);
steel1.addItemInput(<contenttweaker:tieroneship>);
steel1.addFluidInput(<liquid:rocket_fuel> * 8000);
steel1.addItemInput(<contenttweaker:quantumflux>);
steel1.addItemInput(<minecraft:chest>);
steel1.addItemOutput(<densemetals:dense_iron_ore> * 64);
steel1.addItemOutput(<gregtech:ore_cassiterite_0:3> * 64);
steel1.addItemOutput(<gregtech:ore_redstone_0> * 64);
steel1.addItemOutput(<gregtech:ore_nickel_0> * 64);
steel1.addItemOutput(<gregtech:ore_rutile_0> * 64);
steel1.addItemOutput(<gregtech:ore_rutile_0> *64);
steel1.addItemOutput(<gregtech:ore_uraninite_0:3> *64);
steel1.addItemOutput(<gregtech:ore_galena_0> *64);
steel1.addItemOutput(<gregtech:ore_galena_0> *64);
steel1.addItemOutput(<advancedrocketry:moonturf> * 64);
steel1.addItemOutput(<libvulpes:ore0> * 64);
steel1.addItemOutput(<gregtech:ore_salt_0> * 64);
steel1.build();


//Tier 1 Steel Microminer

val steel2 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_steel_2", "small_microverse", 500);
steel2.addEnergyPerTickInput(2000);
steel2.addItemInput(<contenttweaker:tieroneship>);
steel2.addItemInput(<contenttweaker:quantumflux>);
steel2.addItemInput(<contenttweaker:gemsensor>);
steel2.addFluidInput(<liquid:rocket_fuel> * 8000);
steel2.addItemOutput(<gregtech:meta_item_2:25111> * 16);
steel2.addItemOutput(<gregtech:meta_item_2:25111> * 16);
steel2.addItemOutput(<gregtech:meta_item_2:25111> * 16);
steel2.addItemOutput(<gregtech:meta_item_2:25111> * 16);
steel2.addItemOutput(<gregtech:ore_apatite_0> * 64);
steel2.addItemOutput(<gregtech:ore_phosphor_0> * 64);
steel2.build();

//Tier 1 Steel Microminer

val steel3 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_steel_3", "small_microverse", 100);
steel3.addEnergyPerTickInput(2000);
steel3.addItemInput(<contenttweaker:tieroneship>);
steel3.addItemInput(<contenttweaker:ultradensehydrogen>);
steel3.addFluidInput(<liquid:rocket_fuel> * 2000);
steel3.addItemOutput(<contenttweaker:stellarcreationdata>);
steel3.build();


//Tier 2 Titanium Microminer

val titanium1 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_titanium_1", "small_microverse", 600);
titanium1.addEnergyPerTickInput(4000);
titanium1.addItemInput(<contenttweaker:tiertwoship>);
titanium1.addItemInput(<contenttweaker:quantumflux> * 2);
titanium1.addFluidInput(<liquid:rocket_fuel> * 12000);
titanium1.addItemOutput(<gregtech:ore_bauxite_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_bauxite_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_copper_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_copper_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_copper_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_copper_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_scheelite_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_scheelite_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_scheelite_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_tungstate_0:1>* 64);
titanium1.addItemOutput(<gregtech:ore_tungstate_0:1> * 64);
titanium1.addItemOutput(<gregtech:ore_tungstate_0:1> * 64);
titanium1.addItemOutput(<contenttweaker:radiumsalt> * 64);
titanium1.addItemOutput(<contenttweaker:radiumsalt> * 64);
titanium1.addItemOutput(<gregtech:ore_cassiterite_0:1> *64);
titanium1.build();

//Tier 2 Titanium Microminer

val titanium2 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_titanium_2", "small_microverse", 120);
titanium2.addEnergyPerTickInput(4000);
titanium2.addItemInput(<contenttweaker:tiertwoship>);
titanium2.addItemInput(<contenttweaker:ultradensehydrogen> * 4);
titanium2.addFluidInput(<liquid:rocket_fuel> * 3000);
titanium2.addItemOutput(<contenttweaker:stellarcreationdata> * 4);
titanium2.build();



//Tier 3: Tungsten Carbide Microminer

val tungsten1 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_tungsten_1", "small_microverse", 700);
tungsten1.addEnergyPerTickInput(8000);
tungsten1.addItemInput(<contenttweaker:tierthreeship>);
tungsten1.addItemInput(<contenttweaker:quantumflux> * 4);
tungsten1.addItemInput(<contenttweaker:gemsensor>);
tungsten1.addFluidInput(<liquid:rocket_fuel> * 20000);
tungsten1.addItemOutput(<gregtech:meta_item_2:25113> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25113> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25111> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25154> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25154> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25154> * 16);
tungsten1.addItemOutput(<gregtech:meta_item_2:25154> * 16);
tungsten1.addItemOutput(<gregtech:ore_gold_0:6> * 64);
tungsten1.addItemOutput(<gregtech:ore_gold_0:6> * 64);
tungsten1.addItemOutput(<gregtech:ore_silver_0:6> * 64);
tungsten1.build();

val tungsten2 = mods.modularmachinery.RecipeBuilder.newBuilder("small_microverse_tungsten_2", "small_microverse", 700);
tungsten2.addEnergyPerTickInput(8000);
tungsten2.addItemInput(<contenttweaker:tierthreeship>);
tungsten2.addItemInput(<contenttweaker:quantumflux> * 4);
tungsten2.addItemInput(<gregtech:machine:1010>);
tungsten2.addFluidInput(<liquid:rocket_fuel> * 20000);
tungsten2.addItemOutput(<gregtech:ore_scheelite_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_scheelite_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_scheelite_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_tungstate_0:6>* 64);
tungsten2.addItemOutput(<gregtech:ore_tungstate_0:6>* 64);
tungsten2.addItemOutput(<gregtech:ore_tungstate_0:6>* 64);
tungsten2.addItemOutput(<gregtech:ore_rutile_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_copper_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_tetrahedrite_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_cassiterite_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_tin_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_redstone_0:6> * 64);
tungsten2.addItemOutput(<gregtech:ore_certus_quartz_0:6> * 64);
tungsten2.build();



//Tier 4: Signalum Microminer

val signalum1 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_signalum_1", "medium_microverse", 800);
signalum1.addEnergyPerTickInput(15000);
signalum1.addItemInput(<contenttweaker:tierfourship>);
signalum1.addItemInput(<contenttweaker:quantumflux> * 8);
signalum1.addItemInput(<advancedrocketry:satelliteprimaryfunction:1>);
signalum1.addItemInput(<thermalfoundation:material:1027> * 64);
signalum1.addItemOutput(<contenttweaker:denseoilshale> * 64);
signalum1.addItemOutput(<contenttweaker:denseoilshale> * 64);
signalum1.build();



//Tier 4: Signalum Microminer

val signalum2 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_signalum_2", "medium_microverse", 800);
signalum2.addEnergyPerTickInput(15000);
signalum2.addItemInput(<contenttweaker:tierfourship>);
signalum2.addItemInput(<contenttweaker:quantumflux> * 8);
signalum2.addItemInput(<contenttweaker:gemsensor>);
signalum2.addItemInput(<thermalfoundation:material:1027> * 64);
signalum2.addItemOutput(<densemetals:dense_lapis_ore> * 64);
signalum2.addItemOutput(<densemetals:dense_diamond_ore> * 64);
signalum2.addItemOutput(<densemetals:dense_diamond_ore> * 64);
signalum2.addItemOutput(<densemetals:dense_coal_ore>  * 64);
signalum2.addItemOutput(<densemetals:dense_emerald_ore> * 32);
signalum2.addItemOutput(<densemetals:dense_redstone_ore> * 16);
signalum2.build();

//Tier 4: Signalum Microminer

val signalum3 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_signalum_3", "medium_microverse", 800);
signalum3.addEnergyPerTickInput(15000);
signalum3.addItemInput(<contenttweaker:tierfourship>);
signalum3.addItemInput(<contenttweaker:quantumflux> * 8);
signalum3.addItemInput(<contenttweaker:witherrealmdata> * 4);
signalum3.addItemInput(<thermalfoundation:material:1027> * 64);
signalum3.addItemOutput(<gregtech:ore_iridium_0> * 64);
signalum3.addItemOutput(<gregtech:ore_iridium_0> * 64);
signalum3.addItemOutput(<gregtech:ore_osmium_0> * 16);
signalum3.build();




//Tier 5: Iridium Microminer
val iridium1 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_iridium_1", "medium_microverse", 1000);
iridium1.addEnergyPerTickInput(30000);
iridium1.addItemInput(<contenttweaker:tierfiveship>);
iridium1.addItemInput(<contenttweaker:quantumflux> * 16);
iridium1.addItemInput(<contenttweaker:stabilizeduranium> * 32);
iridium1.addItemOutput(<gregtech:ore_uranium_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_palladium_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_tennantite_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_bastnasite_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_sphalerite_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_monazite_0:12> * 64);
iridium1.addItemOutput(<gregtech:compressed_9:14> * 64);
iridium1.addItemOutput(<gregtech:ore_osmium_0:12> * 16);
iridium1.addItemOutput(<gregtech:meta_item_1:2009> * 64);
iridium1.addItemOutput(<gregtech:ore_molybdenite_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_beryllium_0:12> * 64);
iridium1.addItemOutput(<gregtech:ore_beryllium_0:12> * 64);
iridium1.build();

val iridium3 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_iridium_3", "medium_microverse", 1000);
iridium3.addEnergyPerTickInput(30000);
iridium3.addItemInput(<contenttweaker:tierfiveship>);
iridium3.addItemInput(<contenttweaker:quantumflux> * 16);
iridium3.addItemInput(<contenttweaker:stabilizedplutonium> * 32);
iridium3.addItemOutput(<gregtech:meta_item_1:2307> * 64);
iridium3.addItemOutput(<gregtech:meta_item_1:2307> * 64);
iridium3.addItemOutput(<gregtech:meta_item_1:2307> * 64);
iridium3.addItemOutput(<gregtech:meta_item_1:2307> * 64);
iridium3.build();




//Tier 6: Enderium Microminer
val enderium1 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_enderium_1", "medium_microverse", 1250);
enderium1.addEnergyPerTickInput(75000);
enderium1.addItemInput(<contenttweaker:tiersixship>);
enderium1.addItemInput(<contenttweaker:quantumflux> * 16);
enderium1.addItemInput(<contenttweaker:stabilizeduranium> * 32);
enderium1.addItemInput(<contenttweaker:witherrealmdata> * 16);
enderium1.addItemOutput(<gregtech:ore_uranium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_uranium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_uranium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_uranium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_osmium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_osmium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_osmium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_iridium_0:10> * 64);
enderium1.addItemOutput(<gregtech:ore_iridium_0:10> * 64);
enderium1.build();

//Tier 6: Enderium Microminer
val enderium2 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_enderium_2", "medium_microverse", 1250);
enderium2.addEnergyPerTickInput(75000);
enderium2.addItemInput(<contenttweaker:tiersixship>);
enderium2.addItemInput(<contenttweaker:quantumflux> * 16);
enderium2.addItemInput(<contenttweaker:stabilizedplutonium> * 32);
enderium2.addItemInput(<contenttweaker:witherrealmdata> * 64);
enderium2.addItemOutput(<contenttweaker:stabilizedeinsteinium> * 32);
enderium2.build();

//Tier 6: Enderium Microminer
val enderium3 = mods.modularmachinery.RecipeBuilder.newBuilder("medium_microverse_enderium_3", "medium_microverse", 1250);
enderium3.addEnergyPerTickInput(75000);
enderium3.addItemInput(<contenttweaker:tiersixship>);
enderium3.addItemInput(<contenttweaker:quantumflux> * 16);
enderium3.addItemInput(<contenttweaker:stabilizedplutonium> * 32);
enderium3.addItemInput(<contenttweaker:dragonlairdata> * 16);
enderium3.addItemOutput(<minecraft:dragon_egg> * 32);
enderium3.build();


//Tier 7: Draconium Microminer
val draconium1 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_draconium_1", "large_microverse", 1500);
draconium1.addEnergyPerTickInput(125000);
draconium1.addItemInput(<contenttweaker:tiersevenship>);
draconium1.addItemInput(<contenttweaker:quantumflux> * 32);
draconium1.addItemInput(<libvulpes:productcrystal> * 64);
draconium1.addItemInput(<libvulpes:productcrystal> * 64);
draconium1.addItemInput(<contenttweaker:dragonlairdata> * 32);
draconium1.addItemOutput(<draconicevolution:dragon_heart> * 32);
draconium1.addItemOutput(<minecraft:dragon_egg> * 64);
draconium1.addItemOutput(<minecraft:dragon_egg> * 64);
draconium1.addItemOutput(<minecraft:dragon_breath> * 64);
draconium1.addItemOutput(<armorplus:material:3> * 64);
draconium1.addItemOutput(<armorplus:material:3> * 64);
draconium1.addItemOutput(<armorplus:material:3> * 64);
draconium1.addItemOutput(<minecraft:gold_block> * 64);
draconium1.addItemOutput(<minecraft:gold_block> * 64);
draconium1.addItemOutput(<minecraft:gold_block> * 64);
draconium1.addItemOutput(<minecraft:gold_block> * 64);
draconium1.addItemOutput(<gregtech:compressed_3> * 64);
draconium1.addItemOutput(<gregtech:compressed_3> * 64);
draconium1.addItemOutput(<minecraft:diamond_block> * 64);
draconium1.addItemOutput(<minecraft:diamond_block> * 64);
draconium1.addItemOutput(<gregtech:compressed_2:6> * 64);
draconium1.build();

//Tier 7: Draconium Microminer
val draconium2 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_draconium_2", "large_microverse", 1500);
draconium2.addEnergyPerTickInput(125000);
draconium2.addItemInput(<contenttweaker:tiersevenship>);
draconium2.addItemInput(<libvulpes:productcrystal> * 64);
draconium2.addItemInput(<libvulpes:productcrystal> * 64);
draconium2.addItemInput(<contenttweaker:gemsensor>);
draconium2.addItemInput(<contenttweaker:dragonlairdata> * 64);
draconium2.addItemInput(<contenttweaker:dragonlairdata> * 64);
draconium2.addItemInput(<contenttweaker:dragonlairdata> * 64);
draconium2.addItemInput(<contenttweaker:dragonlairdata> * 64);
draconium2.addItemOutput(<contenttweaker:lairofthechaosguardiandata>);
draconium2.build();

recipes.removeByRecipeName("avaritia:items/resource/neutron_nugget");

//Tier 8: Crystal Microminer
val crystal1 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_crystal_1", "large_microverse", 2000);
crystal1.addEnergyPerTickInput(250000);
crystal1.addItemInput(<contenttweaker:tiereightship>);
crystal1.addItemInput(<contenttweaker:quantumflux> * 64);
crystal1.addItemInput(<libvulpes:productcrystal> * 64);
crystal1.addItemInput(<libvulpes:productcrystal> * 64);
crystal1.addItemInput(<libvulpes:productcrystal> * 64);
crystal1.addItemInput(<libvulpes:productcrystal> * 64);
crystal1.addItemInput(<contenttweaker:witherrealmdata> * 64);
crystal1.addItemInput(<contenttweaker:witherrealmdata> * 64);
crystal1.addItemOutput(<gregtech:meta_item_1:32725> * 32);
crystal1.addItemOutput(<gregtech:meta_item_1:32724> * 64);
crystal1.addItemOutput(<avaritia:resource:2> * 64);
crystal1.addItemOutput(<avaritia:resource:2> * 64);
crystal1.addItemOutput(<gregtech:meta_item_1:32726>);
crystal1.build();

//Tier 8: Crystal Microminer
val crystal2 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_crystal_2", "large_microverse", 1500);
crystal2.addEnergyPerTickInput(250000);
crystal2.addItemInput(<contenttweaker:tiereightship>);
crystal2.addItemInput(<contenttweaker:quantumflux> * 64);
crystal2.addItemInput(<libvulpes:productcrystal> * 64);
crystal2.addItemInput(<libvulpes:productcrystal> * 64);
crystal2.addItemInput(<libvulpes:productcrystal> * 64);
crystal2.addItemInput(<libvulpes:productcrystal> * 64);
crystal2.addItemInput(<contenttweaker:lairofthechaosguardiandata>);
crystal2.addItemOutput(<draconicevolution:chaos_shard> * 4);
crystal2.addItemOutput(<minecraft:dragon_egg> * 64);
crystal2.addItemOutput(<minecraft:dragon_egg> * 64);
crystal2.addItemOutput(<minecraft:dragon_egg> * 64);
crystal2.addItemOutput(<minecraft:dragon_egg> * 64);
crystal2.build();

//Tier 9: QFE Microminer
val qfe1 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_qfe_1", "large_microverse", 3000);
qfe1.addEnergyPerTickInput(1000000);
qfe1.addItemInput(<contenttweaker:tiernineship>);
qfe1.addItemInput(<gregtech:meta_item_2:32436> * 8);
qfe1.addItemInput(<draconicevolution:draconic_block> * 4);
qfe1.addItemInput(<contenttweaker:stellarcreationdata>);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.addItemOutput(<avaritia:resource:3> * 64);
qfe1.build();

//Tier 9: QFE Microminer
val qfe2 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_qfe_2", "large_microverse", 3000);
qfe2.addEnergyPerTickInput(1000000);
qfe2.addItemInput(<contenttweaker:tiernineship>);
qfe2.addItemInput(<draconicevolution:draconic_block> * 4);
qfe2.addItemInput(<contenttweaker:stellarcreationdata> * 64);
qfe2.addItemInput(<contenttweaker:stellarcreationdata> * 64);
qfe2.addItemInput(<contenttweaker:stellarcreationdata> * 64);
qfe2.addItemInput(<contenttweaker:stellarcreationdata> * 64);
qfe2.addItemOutput(<contenttweaker:universecreationdata>);
qfe2.build();


//Tier 10: Neutronium Microminer
val neutronium1 = mods.modularmachinery.RecipeBuilder.newBuilder("large_microverse_neutronium_1", "large_microverse", 6000);
neutronium1.addEnergyPerTickInput(4000000);
neutronium1.addItemInput(<contenttweaker:tiertenship>);
neutronium1.addItemInput(<contenttweaker:universecreationdata>);
neutronium1.addItemInput(<draconicevolution:draconic_block> * 8);
neutronium1.addItemOutput(<contenttweaker:heartofauniverse>);
neutronium1.build();

recipes.addShaped(<contenttweaker:impossiblerealmdata>, [
	[<deepmoblearning:living_matter_overworldian>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_overworldian>],
	[<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_overworldian>,<actuallyadditions:item_solidified_experience>],
	[<deepmoblearning:living_matter_overworldian>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_overworldian>]]);
recipes.addShaped(<contenttweaker:impossiblerealmdata> * 2, [
	[<deepmoblearning:living_matter_hellish>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_hellish>],
	[<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_hellish>,<actuallyadditions:item_solidified_experience>],
	[<deepmoblearning:living_matter_hellish>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_hellish>]]);
recipes.addShaped(<contenttweaker:impossiblerealmdata> * 4, [
	[<deepmoblearning:living_matter_extraterrestrial>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_extraterrestrial>],
	[<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_extraterrestrial>,<actuallyadditions:item_solidified_experience>],
	[<deepmoblearning:living_matter_extraterrestrial>,<actuallyadditions:item_solidified_experience>,<deepmoblearning:living_matter_extraterrestrial>]]);
recipes.addShapeless(<contenttweaker:dragonlairdata>, [<contenttweaker:impossiblerealmdata>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>,<deepmoblearning:living_matter_hellish>]);
recipes.addShapeless(<contenttweaker:witherrealmdata>, [<contenttweaker:impossiblerealmdata>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>,<deepmoblearning:living_matter_extraterrestrial>]);
recipes.addShaped(<contenttweaker:quantumflux>, [
	[null,<deepmoblearning:living_matter_extraterrestrial>,null],
	[<deepmoblearning:living_matter_extraterrestrial>,<enderio:item_material:14>,<deepmoblearning:living_matter_extraterrestrial>],
	[null,<deepmoblearning:living_matter_extraterrestrial>,null]]);

recipes.addShaped(<contenttweaker:quantumflux>, [
	[null,<contenttweaker:moondust>,null],
	[<contenttweaker:moondust>,<minecraft:diamond>,<contenttweaker:moondust>],
	[null,<contenttweaker:moondust>,null]]);


recipes.remove(<actuallyadditions:block_xp_solidifier>);
recipes.addShaped(<actuallyadditions:block_xp_solidifier>, [
	[<gregtech:meta_item_1:12702>, <gregtech:meta_item_1:12702>, <gregtech:meta_item_1:12702>],
	[<gregtech:meta_item_1:12702>, <gregtech:machine:322>, <gregtech:meta_item_1:12702>],
	[<gregtech:meta_item_1:12702>, <gregtech:meta_item_1:12702>, <gregtech:meta_item_1:12702>]]);
<actuallyadditions:item_solidified_experience>.addTooltip(format.green("Can be made in an Experience Solidifier."));


<contenttweaker:tierfourship>.addTooltip(format.white(format.italic("Harvests ultra cold materials from the deepest parts of empty space.")));
<contenttweaker:tierfiveship>.addTooltip(format.white(format.italic("Harvests strange materials from End microverses.")));
<contenttweaker:tiersixship>.addTooltip(format.italic(format.white("Harvests extremely rare materials from every concievable reality.")));
<contenttweaker:tiersevenship>.addTooltip(format.white(format.italic("Hunts Wyrms and End Dragons from the microverse")));
<contenttweaker:tiersevenship>.addTooltip(format.white(format.italic("and returns with parts from their carapaces.")));
<contenttweaker:tiereightship>.addTooltip(format.italic(format.white("Hunts inconcievable monstrosities from beyond the End")));
<contenttweaker:tiereightship>.addTooltip(format.italic(format.white("and returns with bizzare trinkets.")));
<contenttweaker:tiernineship>.addTooltip(format.italic(format.white("Collapses microverse stars and harvests their delicious neutronium cores.")));
<contenttweaker:tiertenship>.addTooltip(format.italic(format.white("Collapses an entire microverse and harvests it whole.")));
<contenttweaker:tiertenship>.addTooltip(format.italic(format.white("Try to aim for uninhabited ones.")));



recipes.addShaped(<contenttweaker:ultradensehydrogen>, [[<contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>],[<contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>], [<contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>, <contenttweaker:densehydrogen>]]);
recipes.addShapeless(<contenttweaker:densehydrogen> * 9, [<contenttweaker:ultradensehydrogen>]);

recipes.addShaped(<contenttweaker:densehydrogen>, [[<contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>],[<contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>], [<contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>, <contenttweaker:solidifiedhydrogen>]]);
recipes.addShapeless(<contenttweaker:solidifiedhydrogen> * 9, [<contenttweaker:densehydrogen>]);

recipes.remove(<deepmoblearning:living_matter_extraterrestrial>);
recipes.addShaped(<deepmoblearning:living_matter_extraterrestrial>, [[null, <deepmoblearning:living_matter_hellish>, null], [<deepmoblearning:living_matter_hellish>, <minecraft:ender_pearl>, <deepmoblearning:living_matter_hellish>], [null, <deepmoblearning:living_matter_hellish>, null]]);



//Liquid Air
val liquidair = mods.modularmachinery.RecipeBuilder.newBuilder("cryogenicairdistillation_1", "cryogenicairdistillation", 125);
liquidair.addEnergyPerTickInput(2000);
liquidair.addFluidInput(<liquid:liquid_air> * 53000);
liquidair.addFluidOutput(<liquid:nitrogen> * 40000);
liquidair.addFluidOutput(<liquid:oxygen> * 11000);
liquidair.addFluidOutput(<liquid:carbon_dioxide> * 1000);
liquidair.addFluidOutput(<liquid:noble_gases> * 1000);
liquidair.build();


//Noble Gasses
val noblegasses = mods.modularmachinery.RecipeBuilder.newBuilder("cryogenicairdistillation_2", "cryogenicairdistillation", 1000);
noblegasses.addEnergyPerTickInput(3000);
noblegasses.addFluidInput(<liquid:noble_gases> * 53000);
noblegasses.addFluidOutput(<liquid:argon> * 35000);
noblegasses.addFluidOutput(<liquid:neon> * 11000);
noblegasses.addFluidOutput(<liquid:helium> * 5000);
noblegasses.addFluidOutput(<liquid:krypton> * 1000);
noblegasses.addFluidOutput(<liquid:xenon> * 1000);
noblegasses.build();



val naquadahmk1a = mods.modularmachinery.RecipeBuilder.newBuilder("naquadahreactormk1a", "naquadahreactormk1", 3000);
naquadahmk1a.addEnergyPerTickOutput(327500);
naquadahmk1a.addItemInput(<gregtech:meta_item_1:16309>);
naquadahmk1a.addItemOutput(<gregtech:meta_item_1:16035>);
naquadahmk1a.build();

val naquadahmk1b = mods.modularmachinery.RecipeBuilder.newBuilder("naquadareactorhmk1b", "naquadahreactormk1", 12000);
naquadahmk1b.addEnergyPerTickOutput(327500);
naquadahmk1b.addItemInput(<gregtech:meta_item_1:16310>);
naquadahmk1b.addItemOutput(<gregtech:meta_item_1:16035>);
naquadahmk1b.build();

val naquadahmk2a = mods.modularmachinery.RecipeBuilder.newBuilder("naquadareactorhmk2a", "naquadahreactormk2", 3000);
naquadahmk2a.addEnergyPerTickOutput(2620000);
naquadahmk2a.addItemInput(<gregtech:meta_item_1:16309>);
naquadahmk2a.addItemOutput(<gregtech:meta_item_1:16035>);
naquadahmk2a.build();

val naquadahmk2b = mods.modularmachinery.RecipeBuilder.newBuilder("naquadareactorhmk2b", "naquadahreactormk2", 12000);
naquadahmk2b.addEnergyPerTickOutput(2620000);
naquadahmk2b.addItemInput(<gregtech:meta_item_1:16310>);
naquadahmk2b.addItemOutput(<gregtech:meta_item_1:16035>);
naquadahmk2b.build();

val oildrillingrig = mods.modularmachinery.RecipeBuilder.newBuilder("oildrillingrig", "oildrillingrig", 100);
oildrillingrig.addEnergyPerTickInput(3500);
oildrillingrig.addFluidInput(<liquid:drilling_fluid> * 10);
oildrillingrig.addItemInput(<inspirations:pipe>);
oildrillingrig.setChance(0.01);
oildrillingrig.addFluidOutput(<liquid:oil> * 1000);
oildrillingrig.build();

val lunarminingstationa = mods.modularmachinery.RecipeBuilder.newBuilder("lunarminingstationa", "lunarminingstation", 12000);
lunarminingstationa.addBiomeRequirement([43,52]);
lunarminingstationa.addEnergyPerTickInput(500);
lunarminingstationa.addItemInput(<contenttweaker:deuteriumrover>);
lunarminingstationa.setChance(0.1);
lunarminingstationa.addFluidOutput(<liquid:deuterium> * 48000);
lunarminingstationa.build();

val lunarminingstationb = mods.modularmachinery.RecipeBuilder.newBuilder("lunarminingstationb", "lunarminingstation", 12000);
lunarminingstationb.addBiomeRequirement([43,52]);
lunarminingstationb.addEnergyPerTickInput(500);
lunarminingstationb.addItemInput(<contenttweaker:helium3rover>);
lunarminingstationb.setChance(0.1);
lunarminingstationb.addFluidOutput(<liquid:helium3> * 48000);
lunarminingstationb.build();

recipes.addShaped(<contenttweaker:helium3rover> * 16, [
	[<solarflux:solar_panel_3>, <solarflux:solar_panel_3>, <gregtech:meta_item_1:32693>],
	[<gregtech:meta_item_1:12072>, <gregtech:machine:504>, <gregtech:meta_item_1:32653>],
	[<gregtech:meta_item_1:32633>, null, <gregtech:meta_item_1:32633>]]);
recipes.addShaped(<contenttweaker:deuteriumrover> * 16, [
	[<solarflux:solar_panel_2>, <solarflux:solar_panel_2>, <gregtech:meta_item_1:32692>],
	[<gregtech:meta_item_1:12183>, <gregtech:machine:503>, <gregtech:meta_item_1:32652>],
	[<gregtech:meta_item_1:32632>, null, <gregtech:meta_item_1:32632>]]);

