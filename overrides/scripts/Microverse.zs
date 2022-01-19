import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.modularmachinery.RecipePrimer;
import mods.modularmachinery.RecipeBuilder;

import mods.modularmachinery.RecipeBuilder.newBuilder as mmRecipe;
import scripts.CommonVars.makeExtremeRecipe5 as makeExtremeRecipe5;
import scripts.CommonVars.makeExtremeRecipe7 as makeExtremeRecipe7;
import scripts.CommonVars.makeExtremeRecipe9 as makeExtremeRecipe9;
import scripts.CommonVars.makeShaped as makeShaped;
import scripts.CommonVars.makeShapeless3 as makeShapeless3;

//////////////////////////////////////////////////////////////
/////////////	    Modular Machinery	    //////////////////
//////////////////////////////////////////////////////////////

// Controller
recipes.remove(<modularmachinery:blockcontroller>);
makeShaped("of_mm_blockcontroller", <modularmachinery:blockcontroller>,
	["CMC",
	 "MSM",
	 "CMC"],
	{ C : <ore:circuitAdvanced>,
	  M : <modularmachinery:itemmodularium>,
	  S : <extrautils2:screen> }
);
<modularmachinery:blockcontroller>.displayName = "Modular Machine Controller";

// Item Inputs
for meta in 2 .. 7 {
	val item = "modularmachinery:blockinputbus";
	makeShaped("of_mm_blockinputbus_" ~ meta,
		itemUtils.getItem(item, meta),
		[" H ",
		 "MAM",
		 "CMC"],
		{ A : itemUtils.getItem(item, meta - 1),
		  C : <minecraft:chest>,
		  H : <minecraft:hopper>,
		  M : <modularmachinery:itemmodularium> }
	);
}

// Item Outputs
for meta in 2 .. 7 {
	val item = "modularmachinery:blockoutputbus";
	makeShaped("of_mm_blockoutputbus_" ~ meta,
		itemUtils.getItem(item, meta),
		["CMC",
		 "MAM",
		 " H "],
		{ A : itemUtils.getItem(item, meta - 1),
		  C : <minecraft:chest>,
		  H : <minecraft:hopper>,
		  M : <modularmachinery:itemmodularium> }
	);
}

// Fluid Input Hatches
for meta in 2 .. 8 { // Tiny -> Vacuum
	val item = "modularmachinery:blockfluidinputhatch";
	makeShaped("of_mm_blockfluidinputhatch_" ~ meta,
		itemUtils.getItem(item, meta),
		[" H ",
		 "MAM",
		 "BMB"],
		{ A : itemUtils.getItem(item, meta - 1),
		  B : <minecraft:bucket>,
		  H : <minecraft:hopper>,
		  M : <modularmachinery:itemmodularium> }
	);
}

// Fluid Output Hatches
for meta in 2 .. 8 { // Tiny -> Vacuum
	val item = "modularmachinery:blockfluidoutputhatch";
	makeShaped("of_mm_blockfluidoutputhatch_" ~ meta,
		itemUtils.getItem(item, meta),
		["BMB",
		 "MAM",
		 " H "],
		{ A : itemUtils.getItem(item, meta - 1),
		  B : <minecraft:bucket>,
		  H : <minecraft:hopper>,
		  M : <modularmachinery:itemmodularium> }
	);
}

// Energy Input Hatches

recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);

val energyInputHatches as IItemStack[] = [
	<gregtech:machine:714>, // LV
	<gregtech:machine:724>, // MV
	<gregtech:machine:734>, // HV
	<gregtech:machine:744>, // EV
	<gregtech:machine:754>, // IV
	<gregtech:machine:764>, // LuV
	<gregtech:machine:774>, // ZPM
	<gregtech:machine:784>, // UV
] as IItemStack[];

for meta,input in energyInputHatches {
	val item as IItemStack = itemUtils.getItem("modularmachinery:blockenergyinputhatch", meta);
	makeShaped("of_mm_blockenergyinputhatch_" ~ meta, item,
		[" M ",
		 "MAM",
		 " M "],
		{ A : input,
		  M : <modularmachinery:itemmodularium> }
	);
}

<modularmachinery:blockenergyinputhatch:0>.displayName = "Modularium LV Energy Input";
<modularmachinery:blockenergyinputhatch:1>.displayName = "Modularium MV Energy Input";
<modularmachinery:blockenergyinputhatch:2>.displayName = "Modularium HV Energy Input";
<modularmachinery:blockenergyinputhatch:3>.displayName = "Modularium EV Energy Input";
<modularmachinery:blockenergyinputhatch:4>.displayName = "Modularium IV Energy Input";
<modularmachinery:blockenergyinputhatch:5>.displayName = "Modularium LuV Energy Input";
<modularmachinery:blockenergyinputhatch:6>.displayName = "Modularium ZPM Energy Input";
<modularmachinery:blockenergyinputhatch:7>.displayName = "Modularium UV Energy Input";

// Energy Output Hatch

recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.remove(<modularmachinery:blockenergyoutputhatch:1>);

val energyOutputHatches as IItemStack[] = [
	<gregtech:machine:715>, // LV
	<gregtech:machine:725>, // MV
	<gregtech:machine:735>, // HV
	<gregtech:machine:745>, // EV
	<gregtech:machine:755>, // IV
	<gregtech:machine:765>, // LuV
	<gregtech:machine:775>, // ZPM
	<gregtech:machine:785>, // UV
] as IItemStack[];

for meta,input in energyOutputHatches {
	makeShaped("of_mm_blockenergyoutputhatch_" ~ meta,
		itemUtils.getItem("modularmachinery:blockenergyoutputhatch", meta),
		[" M ",
		 "MAM",
		 " M "],
		{ A : input,
		  M : <modularmachinery:itemmodularium> }
	);
}

<modularmachinery:blockenergyoutputhatch:0>.displayName = "Modularium LV Energy Output";
<modularmachinery:blockenergyoutputhatch:1>.displayName = "Modularium MV Energy Output";
<modularmachinery:blockenergyoutputhatch:2>.displayName = "Modularium HV Energy Output";
<modularmachinery:blockenergyoutputhatch:3>.displayName = "Modularium EV Energy Output";
<modularmachinery:blockenergyoutputhatch:4>.displayName = "Modularium IV Energy Output";
<modularmachinery:blockenergyoutputhatch:5>.displayName = "Modularium LuV Energy Output";
<modularmachinery:blockenergyoutputhatch:6>.displayName = "Modularium ZPM Energy Output";
<modularmachinery:blockenergyoutputhatch:7>.displayName = "Modularium UV Energy Output";


// Casing
recipes.remove(<modularmachinery:blockcasing>);
assembler.recipeBuilder()
	.outputs([<modularmachinery:blockcasing>])
	.inputs([<modularmachinery:itemmodularium> * 4])
	.duration(200).EUt(30).buildAndRegister();

// Machine Vent
makeShaped("of_mm_machine_vent", <modularmachinery:blockcasing:1>,
	[" M ",
	 "MCM",
	 " M "],
	{ C : <gregtech:multiblock_casing:1>, // Grate Machine Casing
	  M : <modularmachinery:itemmodularium> }
);

/////////////	 Tier One Space Ship   	  //////////////////	200 ingots

makeShaped("of_tieroneship", <contenttweaker:tieroneship>,
	[" G ",
	 "LAL",
	 "TMT"],
	{ G : <contenttweaker:t1guidance>,
	  L : <contenttweaker:t1laser>,
	  A : <gregtech:meta_item_1:32670>,
	  T : <simplyjetpacks:metaitemmods:7>,
	  M : <gregtech:machine:480> }
);

<contenttweaker:tieroneship>.addTooltip(
	format.italic(
		format.white("Harvests Titanium and other light metals from asteroids in the microverse.")));

// Tier 1 Guidance
makeShaped("of_t1guidance", <contenttweaker:t1guidance>,
	["GPG",
	 "PCP",
	 "CCC"],
	{ C : <ore:circuitGood>,
	  G : <gregtech:meta_item_1:32690>,
	  P : <contenttweaker:steelplating> }
);

// Tier 1 Laser
makeShaped("of_t1laser", <contenttweaker:t1laser>,
	[" R ",
	 "QGQ",
	 "QGQ"],
	{ G : <minecraft:glass>,
	  Q : <minecraft:quartz>,
	  R : <minecraft:redstone_block>}
);



/////////////	 Tier Two Space Ship  	  //////////////////

makeExtremeRecipe5(<contenttweaker:tiertwoship>,
	["  G  ",
	 " PAP ",
	 "LBFBL",
	 "PPCPP",
	 " TTT "],
	{ A : <gregtech:machine:804>,
	  B : <gregtech:meta_item_1:32670>,
	  C : <gregtech:machine:481>,
	  F : <thermalexpansion:frame:146>,
	  G : <contenttweaker:t1guidance>,
	  L : <contenttweaker:t1laser>,
	  P : <contenttweaker:titaniumplating>,
	  T : <simplyjetpacks:metaitemmods:8> }
);

<contenttweaker:tiertwoship>.addTooltip(
	format.white(
		format.italic("Harvests Tungsten and other heavy metals from asteroids in the microverse.")));


/////////////	 Tier Three Space Ship  	  //////////////////

makeExtremeRecipe7(<contenttweaker:tierthreeship>,
	["  G G  ",
	 "  PPP  ",
	 "  ABA  ",
	 " LPBPL ",
	 "PPFBFPP",
	 "PPPCPPP",
	 "  TTT  "],
	{ A : <gregtech:meta_item_1:32671>,
	  B : <gregtech:machine:805>,
	  C : <gregtech:machine:482>,
	  F : <thermalexpansion:frame:146>,
	  G : <contenttweaker:t1guidance>,
	  L : <contenttweaker:t2laser>,
	  P : <contenttweaker:tungstencarbideplating>,
	  T : <simplyjetpacks:metaitemmods:28> }
);

// Tier 2 Laser
makeExtremeRecipe5(<contenttweaker:t2laser>,
	[" R R ",
	 "GAGAG",
	 "GAGAG",
	 "GBGBG",
	 "QCECQ"],
	{ A : <contenttweaker:solidifiedargon>,
	  B : <minecraft:quartz_block>,
	  C : <ore:circuitAdvanced>,
	  E : <enderio:block_cap_bank:1>,
	  G : <minecraft:glass>,
	  Q : <minecraft:quartz>,
	  R : <minecraft:redstone_block> }
);

<contenttweaker:tierthreeship>.addTooltip(
	format.white(
		format.italic("Harvests ultra hot metals and gems from Nether microverses.")));

// Rocket Engine
recipes.remove(<advancedrocketry:advrocketmotor>);
makeShaped("of_ar_advrocketmotor", <advancedrocketry:advrocketmotor>,
	[" P ",
	 "PPP",
	 "TTT"],
	{ P : <contenttweaker:tungstencarbideplating>,
	  T : <simplyjetpacks:metaitemmods:8> }
);

/////////////	 Tier Four Space Ship  	  //////////////////
makeExtremeRecipe7(<contenttweaker:tierfourship>,
	["   G   ",
	 "  LWL  ",
	 " SAWAS ",
	 " SBWBS ",
	 " SFWFS ",
	 " TDWDT ",
	 "  T T  "],
	{ A : <gregtech:machine:806>,
	  B : <gregtech:meta_item_1:32672>,
	  D : <thermalexpansion:dynamo:3>,
	  F : <thermalexpansion:frame:147>,
	  G : <contenttweaker:t1guidance>,
	  L : <contenttweaker:t2laser>,
	  S : <contenttweaker:signalumplating>,
	  T : <simplyjetpacks:metaitemmods:9>,
	  W : <contenttweaker:tungstencarbideplating> }
);


// Tier 2 Guidance
makeShaped("of_t2guidance", <contenttweaker:t2guidance>,
	["AWA",
	 "WCW",
	 "CCC"],
	{ A : <gregtech:meta_item_1:32693>,
	  C : <ore:circuitExtreme>,
	  W : <contenttweaker:tungstencarbideplating> }
);

/////////////	 Tier Five Space Ship  	  //////////////////

makeExtremeRecipe7(<contenttweaker:tierfiveship>,
	["  G G  ",
	 "  I I  ",
	 " SILIS ",
	 "SSABASS",
	 " IFCFI ",
	 "IIIPIII",
	 "  TTT  "],
	{ A : <gregtech:meta_item_1:32673>,
	  B : <gregtech:machine:1010>,
	  C : <nuclearcraft:fission_controller_new_fixed>,
	  F : <thermalexpansion:frame:147>,
	  G : <contenttweaker:t2guidance>,
	  I : <contenttweaker:iridiumalloyplating>,
	  L : <contenttweaker:t3laser>,
	  P : <nuclearcraft:fission_port>,
	  S : <contenttweaker:signalumplating>,
	  T : <simplyjetpacks:metaitemmods:10> }
);


/////////////	 Tier Six Space Ship  	  //////////////////
makeExtremeRecipe7(<contenttweaker:tiersixship>,
	[" LG GL ",
	 "LEE EEL",
	 "EEEEEEE",
	 " EAFAE ",
	 "EBFCFBE",
	 " EPPPE ",
	 " ETTTE "],
	{ A : <gregtech:machine:1010>,
	  B : <gregtech:meta_item_1:32674>,
	  C : <nuclearcraft:fission_controller_new_fixed>,
	  E : <contenttweaker:enderiumplating>,
	  F : <thermalexpansion:frame:148>,
	  G : <contenttweaker:t2guidance>,
	  L : <contenttweaker:t3laser>,
	  P : <nuclearcraft:fission_port>,
	  T : <simplyjetpacks:metaitemmods:29> }
);

<gregtech:meta_item_1:32724>.displayName = "Quantum Eye";
<gregtech:meta_item_1:32724>.clearTooltip();
<gregtech:meta_item_1:32724>.addTooltip(format.darkPurple("Quantum Eye"));


/////////////	 Tier Seven Space Ship  	  //////////////////

makeExtremeRecipe9(<contenttweaker:tiersevenship>,
	[" L  D  L ",
	 " DDDGDDD ",
	 "LDDDDDDDL",
	 "DDDDPDDDD",
	 "DDDAEADDD",
	 "DDDDPDDDD",
	 "DDDDDDDDD",
	 "D DDDDD D",
	 "D WW WW D"],
	{ A : <gregtech:meta_item_1:32675>,
	  D : <contenttweaker:draconiumplating>,
	  E : <draconicevolution:ender_energy_manipulator>,
	  G : <contenttweaker:t2guidance>,
	  L : <contenttweaker:t3laser>,
	  P : <draconicevolution:particle_generator:2>,
	  W : <contenttweaker:warpengine> }
);

makeShaped("of_warpengine", <contenttweaker:warpengine>,
	["PIP",
	 "ABA",
	 "CDC"],
	{ A : <draconicevolution:dislocator_advanced>,
	  B : <thermalfoundation:storage_alloy:7>,
	  C : <simplyjetpacks:metaitemmods:30>,
	  D : <simplyjetpacks:metaitemmods:11>,
	  I : <draconicevolution:item_dislocation_inhibitor>,
	  P : <moreplates:crystal_matrix_plate> }
);


/////////////	 Tier Eight Space Ship  	  //////////////////

makeExtremeRecipe9(<contenttweaker:tiereightship>,
	[" G C C G ",
	 " WCCLCCW ",
	 " WCIIICW ",
	 "LCIIIIICL",
	 "WCAABAACW",
	 "WCWWIWWCW",
	 "WDCCICCDW",
	 "WMWWIWWMW",
	 " E     E "],
	{ A : <gregtech:machine:1011>,
	  B : <gregtech:meta_item_1:32676>,
	  C : <contenttweaker:crystalmatrixplating>,
	  D : <advancedrocketry:warpcore>,
	  E : <contenttweaker:warpengine>,
	  G : <contenttweaker:t2guidance>,
	  I : <contenttweaker:iridiumalloyplating>,
	  L : <contenttweaker:t3laser>,
	  M : <advancedrocketry:warpmonitor>,
	  W : <contenttweaker:tungstencarbideplating> }
);



/////////////	 Tier Nine Space Ship  	  //////////////////

makeExtremeRecipe9(<contenttweaker:tiernineship>,
	["    Q    ",
	 "   QQQ   ",
	 "   QUQ   ",
	 "  QQAQQ  ",
	 " QQQQQQQ ",
	 "QQBQRQBQQ",
	 " QQQCQQQ ",
	 " QQQQQQQ ",
	 "QQ W W QQ"],
	{ A : <gregtech:meta_item_1:32677>,
	  B : <gregtech:machine:1012>,
	  C : <draconicevolution:reactor_core>,
	  Q : <contenttweaker:quantumfluxedeterniumplating>,
	  R : <draconicevolution:reactor_component>,
	  U : <contenttweaker:universalnavigator>,
	  W : <contenttweaker:warpengine> }
);

makeShaped("of_universalnavigator", <contenttweaker:universalnavigator>,
	["ABA",
	 "BCB",
	 "ABA"],
	{ A : <gregtech:meta_item_1:12308>,
	  B : <gtadditions:ga_meta_item:32015>,
	  C : <gregtech:meta_item_2:32501> }
);
<contenttweaker:universalnavigator>.addTooltip(format.blue("See you later, navigator!"));

/////////////	 Tier Ten Space Ship  	  //////////////////

makeExtremeRecipe9(<contenttweaker:tiertenship>,
	["  N   N  ",
	 " NUN NUN ",
	 " NNN NNN ",
	 " NNN NNN ",
	 " NCNNNCN ",
	 "PNRN NRNP",
	 "NNNNANNNN",
	 " N NNN N ",
	 "N  W W  N"],
	{ A : <gregtech:machine:1013>,
	  C : <draconicevolution:reactor_core>,
	  N : <contenttweaker:neutroniumplating>,
	  P : <solarflux:solar_panel_neutronium>,
	  R : <draconicevolution:reactor_component>,
	  U : <contenttweaker:universalnavigator>,
	  W : <contenttweaker:warpengine> }
);

<extendedcrafting:trimmed:0>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:1>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:2>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:3>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:4>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:5>.displayName = "Block of Black Steel";
<extendedcrafting:trimmed:5>.clearTooltip();
<extendedcrafting:trimmed:5>.addTooltip("Block of Black Steel");
<extendedcrafting:trimmed:5>.addTooltip(
	format.gray(
		format.italic("Omnium Trimmed")));


// Small Dimensional Projector Recipes

// Tier 1 Steel Microminer: Mission 1 - Early Game Ores
mmRecipe("small_microverse_steel_1", "small_microverse", 500)
	.addEnergyPerTickInput(2000)
	.addItemInput(<contenttweaker:tieroneship>)
	.addFluidInput(<liquid:rocket_fuel> * 8000)
	.addItemInput(<contenttweaker:quantumflux>)
	.addItemInput(<minecraft:chest>)
	.addItemOutput(<densemetals:dense_iron_ore> * 64)
	.addItemOutput(<gregtech:ore_cassiterite_0:3> * 64)
	.addItemOutput(<gregtech:ore_redstone_0> * 64)
	.addItemOutput(<gregtech:ore_nickel_0> * 64)
	.addItemOutput(<gregtech:ore_rutile_0> * 64)
	.addItemOutput(<gregtech:ore_rutile_0> *64)
	.addItemOutput(<gregtech:ore_uraninite_0:3> *64)
	.addItemOutput(<gregtech:ore_galena_0> *64)
	.addItemOutput(<gregtech:ore_galena_0> *64)
	.addItemOutput(<advancedrocketry:moonturf> * 64)
	.addItemOutput(<libvulpes:ore0> * 64)
	.addItemOutput(<gregtech:ore_salt_0> * 64)
	.build();

// Tier 1 Steel Microminer: Mission 2 - Exquisite Diamonds and Gem Ores
mmRecipe("small_microverse_steel_2", "small_microverse", 500)
	.addEnergyPerTickInput(2000)
	.addItemInput(<contenttweaker:tieroneship>)
	.addItemInput(<contenttweaker:quantumflux>)
	.addItemInput(<contenttweaker:gemsensor>)
	.addFluidInput(<liquid:rocket_fuel> * 8000)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:ore_apatite_0> * 64)
	.addItemOutput(<gregtech:ore_phosphor_0> * 64)
	.addItemOutput(<gregtech:ore_quartzite_0> * 64)
	.build();

// Tier 1 Steel Microminer: Mission 3 - Stellar Creation Data
mmRecipe("small_microverse_steel_3", "small_microverse", 100)
	.addEnergyPerTickInput(2000)
	.addItemInput(<contenttweaker:tieroneship>)
	.addItemInput(<contenttweaker:ultradensehydrogen>)
	.addFluidInput(<liquid:rocket_fuel> * 2000)
	.addItemOutput(<contenttweaker:stellarcreationdata>)
	.build();


// Tier 2 Titanium Microminer - Mission 1: Radium and Early/Midgame Ores
mmRecipe("small_microverse_titanium_1", "small_microverse", 600)
	.addEnergyPerTickInput(4000)
	.addItemInput(<contenttweaker:tiertwoship>)
	.addItemInput(<contenttweaker:quantumflux> * 2)
	.addFluidInput(<liquid:rocket_fuel> * 12000)
	.addItemOutput(<gregtech:ore_bauxite_0:1> * 64)
	.addItemOutput(<gregtech:ore_bauxite_0:1> * 64)
	.addItemOutput(<gregtech:ore_niobium_0:1> * 64)
	.addItemOutput(<gregtech:ore_copper_0:1> * 64)
	.addItemOutput(<gregtech:ore_copper_0:1> * 64)
	.addItemOutput(<gregtech:ore_copper_0:1> * 64)
	.addItemOutput(<gregtech:ore_scheelite_0:1> * 64)
	.addItemOutput(<gregtech:ore_scheelite_0:1> * 64)
	.addItemOutput(<gregtech:ore_scheelite_0:1> * 64)
	.addItemOutput(<gregtech:ore_tungstate_0:1>* 64)
	.addItemOutput(<gregtech:ore_tungstate_0:1> * 64)
	.addItemOutput(<gregtech:ore_tungstate_0:1> * 64)
	.addItemOutput(<contenttweaker:radiumsalt> * 64)
	.addItemOutput(<contenttweaker:radiumsalt> * 64)
	.addItemOutput(<gregtech:ore_cassiterite_0:1> *64)
	.build();

// Tier 2 Titanium Microminer - Mission 2: Stellar Creation Data
mmRecipe("small_microverse_titanium_2", "small_microverse", 120)
	.addEnergyPerTickInput(4000)
	.addItemInput(<contenttweaker:tiertwoship>)
	.addItemInput(<contenttweaker:ultradensehydrogen> * 4)
	.addFluidInput(<liquid:rocket_fuel> * 3000)
	.addItemOutput(<contenttweaker:stellarcreationdata> * 4)
	.build();


// Tier 3: Tungsten Carbide Microminer - Mission 1: Exquisite Gems
mmRecipe("small_microverse_tungsten_1", "small_microverse", 700)
	.addEnergyPerTickInput(8000)
	.addItemInput(<contenttweaker:tierthreeship>)
	.addItemInput(<contenttweaker:quantumflux> * 4)
	.addItemInput(<contenttweaker:gemsensor>)
	.addFluidInput(<liquid:rocket_fuel> * 20000)
	.addItemOutput(<gregtech:meta_item_2:25113> * 16)
	.addItemOutput(<gregtech:meta_item_2:25113> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25111> * 16)
	.addItemOutput(<gregtech:meta_item_2:25154> * 16)
	.addItemOutput(<gregtech:meta_item_2:25154> * 16)
	.addItemOutput(<gregtech:meta_item_2:25154> * 16)
	.addItemOutput(<gregtech:meta_item_2:25154> * 16)
	.addItemOutput(<gregtech:ore_almandine_0:6> * 64)
	.addItemOutput(<gregtech:ore_gold_0:6> * 64)
	.addItemOutput(<gregtech:ore_silver_0:6> * 64)
	.build();

// Tier 3: Tungsten Carbide Microminer - Misison 2: Midgame Ores
mmRecipe("small_microverse_tungsten_2", "small_microverse", 700)
	.addEnergyPerTickInput(8000)
	.addItemInput(<contenttweaker:tierthreeship>)
	.addItemInput(<contenttweaker:quantumflux> * 4)
	.addItemInput(<gregtech:machine:1010>)
	.addFluidInput(<liquid:rocket_fuel> * 20000)
	.addItemOutput(<gregtech:ore_scheelite_0:6> * 64)
	.addItemOutput(<gregtech:ore_scheelite_0:6> * 64)
	.addItemOutput(<gregtech:ore_scheelite_0:6> * 64)
	.addItemOutput(<gregtech:ore_tungstate_0:6>* 64)
	.addItemOutput(<gregtech:ore_tungstate_0:6>* 64)
	.addItemOutput(<gregtech:ore_tungstate_0:6>* 64)
	.addItemOutput(<gregtech:ore_rutile_0:6> * 64)
	.addItemOutput(<gregtech:ore_vanadium_magnetite_0:6> * 64)
	.addItemOutput(<gregtech:ore_tetrahedrite_0:6> * 64)
	.addItemOutput(<gregtech:ore_cassiterite_0:6> * 64)
	.addItemOutput(<gregtech:ore_tin_0:6> * 64)
	.addItemOutput(<gregtech:ore_redstone_0:6> * 64)
	.addItemOutput(<gregtech:ore_certus_quartz_0:6> * 64)
	.addItemOutput(<gregtech:ore_sapphire_0:6> * 64)
	.build();


// Tier 4: Signalum Microminer - Mission 1: Dense Oil / Infinity Blocks
mmRecipe("medium_microverse_signalum_1", "medium_microverse", 800)
	.addEnergyPerTickInput(15000)
	.addItemInput(<contenttweaker:tierfourship>)
	.addItemInput(<contenttweaker:quantumflux> * 8)
	.addItemInput(<advancedrocketry:satelliteprimaryfunction:1>)
	.addItemInput(<thermalfoundation:material:1027> * 64)
	.addItemOutput(<contenttweaker:denseoilshale> * 64)
	.addItemOutput(<contenttweaker:denseoilshale> * 64)
	.addItemOutput(<enderio:block_infinity> * 16)
	.build();

// Tier 4: Signalum Microminer - Mission 2: Dense Gem Ores
mmRecipe("medium_microverse_signalum_2", "medium_microverse", 800)
	.addEnergyPerTickInput(15000)
	.addItemInput(<contenttweaker:tierfourship>)
	.addItemInput(<contenttweaker:quantumflux> * 8)
	.addItemInput(<contenttweaker:gemsensor>)
	.addItemInput(<thermalfoundation:material:1027> * 64)
	.addItemOutput(<densemetals:dense_lapis_ore> * 64)
	.addItemOutput(<densemetals:dense_diamond_ore> * 64)
	.addItemOutput(<densemetals:dense_diamond_ore> * 64)
	.addItemOutput(<densemetals:dense_coal_ore>  * 64)
	.addItemOutput(<densemetals:dense_emerald_ore> * 32)
	.addItemOutput(<densemetals:dense_redstone_ore> * 16)
	.build();

// Tier 4: Signalum Microminer - Mission 3: Osmium / Iridium
mmRecipe("medium_microverse_signalum_3", "medium_microverse", 800)
	.addEnergyPerTickInput(15000)
	.addItemInput(<contenttweaker:tierfourship>)
	.addItemInput(<contenttweaker:quantumflux> * 8)
	.addItemInput(<contenttweaker:witherrealmdata> * 4)
	.addItemInput(<thermalfoundation:material:1027> * 64)
	.addItemOutput(<gregtech:ore_iridium_0> * 64)
	.addItemOutput(<gregtech:ore_iridium_0> * 64)
	.addItemOutput(<gregtech:ore_osmium_0> * 16)
	.build();


// Tier 5: Iridium Microminer - Mission 1: Marble Ores
mmRecipe("medium_microverse_iridium_1", "medium_microverse", 1000)
	.addEnergyPerTickInput(30000)
	.addItemInput(<contenttweaker:tierfiveship>)
	.addItemInput(<contenttweaker:quantumflux> * 16)
	.addItemInput(<contenttweaker:stabilizeduranium> * 32)
	.addItemOutput(<gregtech:ore_uranium_0:12> * 64)
	.addItemOutput(<gregtech:ore_palladium_0:12> * 64)
	.addItemOutput(<gregtech:ore_tennantite_0:12> * 64)
	.addItemOutput(<gregtech:ore_bastnasite_0:12> * 64)
	.addItemOutput(<gregtech:ore_sphalerite_0:12> * 64)
	.addItemOutput(<gregtech:ore_monazite_0:12> * 64)
	.addItemOutput(<gregtech:compressed_9:14> * 64)
	.addItemOutput(<gregtech:ore_osmium_0:12> * 16)
	.addItemOutput(<gregtech:meta_item_1:2009> * 64)
	.addItemOutput(<gregtech:ore_molybdenite_0:12> * 64)
	.addItemOutput(<gregtech:ore_beryllium_0:12> * 64)
	.addItemOutput(<gregtech:ore_beryllium_0:12> * 64)
	.build();

// Tier 5: Iridium Microminer - Mission 3: Naquadah
mmRecipe("medium_microverse_iridium_3", "medium_microverse", 1000)
	.addEnergyPerTickInput(30000)
	.addItemInput(<contenttweaker:tierfiveship>)
	.addItemInput(<contenttweaker:quantumflux> * 16)
	.addItemInput(<contenttweaker:stabilizedplutonium> * 32)
	.addItemOutput(<gregtech:meta_item_1:2307> * 64)
	.addItemOutput(<gregtech:meta_item_1:2307> * 64)
	.addItemOutput(<gregtech:meta_item_1:2307> * 64)
	.addItemOutput(<gregtech:meta_item_1:2307> * 64)
	.build();


// Tier 6: Enderium Microminer - Mission 1: Uranium / Osmium / Iridium
mmRecipe("medium_microverse_enderium_1", "medium_microverse", 1250)
	.addEnergyPerTickInput(75000)
	.addItemInput(<contenttweaker:tiersixship>)
	.addItemInput(<contenttweaker:quantumflux> * 16)
	.addItemInput(<contenttweaker:stabilizeduranium> * 32)
	.addItemInput(<contenttweaker:witherrealmdata> * 16)
	.addItemOutput(<gregtech:ore_uranium_0:10> * 64)
	.addItemOutput(<gregtech:ore_uranium_0:10> * 64)
	.addItemOutput(<gregtech:ore_uranium_0:10> * 64)
	.addItemOutput(<gregtech:ore_uranium_0:10> * 64)
	.addItemOutput(<gregtech:ore_osmium_0:10> * 64)
	.addItemOutput(<gregtech:ore_osmium_0:10> * 64)
	.addItemOutput(<gregtech:ore_osmium_0:10> * 64)
	.addItemOutput(<gregtech:ore_iridium_0:10> * 64)
	.addItemOutput(<gregtech:ore_iridium_0:10> * 64)
	.build();

// Tier 6: Enderium Microminer - Mission 2: Stabilized Einsteinium
mmRecipe("medium_microverse_enderium_2", "medium_microverse", 1250)
	.addEnergyPerTickInput(75000)
	.addItemInput(<contenttweaker:tiersixship>)
	.addItemInput(<contenttweaker:quantumflux> * 16)
	.addItemInput(<contenttweaker:stabilizedplutonium> * 32)
	.addItemInput(<contenttweaker:witherrealmdata> * 64)
	.addItemOutput(<contenttweaker:stabilizedeinsteinium> * 32)
	.build();

// Tier 6: Enderium Microminer - Mission 3: Dragon Eggs
mmRecipe("medium_microverse_enderium_3", "medium_microverse", 1250)
	.addEnergyPerTickInput(75000)
	.addItemInput(<contenttweaker:tiersixship>)
	.addItemInput(<contenttweaker:quantumflux> * 16)
	.addItemInput(<contenttweaker:stabilizedplutonium> * 32)
	.addItemInput(<contenttweaker:dragonlairdata> * 16)
	.addItemOutput(<minecraft:dragon_egg> * 32)
	.build();


// Tier 7: Draconium Microminer - Mission 1: Dragon Hearts
mmRecipe("large_microverse_draconium_1", "large_microverse", 1500)
	.addEnergyPerTickInput(125000)
	.addItemInput(<contenttweaker:tiersevenship>)
	.addItemInput(<contenttweaker:quantumflux> * 32)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<contenttweaker:dragonlairdata> * 32)
	.addItemOutput(<draconicevolution:dragon_heart> * 32)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.addItemOutput(<minecraft:dragon_breath> * 64)
	.addItemOutput(<armorplus:material:3> * 64)
	.addItemOutput(<armorplus:material:3> * 64)
	.addItemOutput(<armorplus:material:3> * 64)
	.addItemOutput(<minecraft:gold_block> * 64)
	.addItemOutput(<minecraft:gold_block> * 64)
	.addItemOutput(<minecraft:gold_block> * 64)
	.addItemOutput(<minecraft:gold_block> * 64)
	.addItemOutput(<gregtech:compressed_3> * 64)
	.addItemOutput(<gregtech:compressed_3> * 64)
	.addItemOutput(<minecraft:diamond_block> * 64)
	.addItemOutput(<minecraft:diamond_block> * 64)
	.addItemOutput(<gregtech:compressed_2:6> * 64)
	.build();

// Tier 7: Draconium Microminer - Mission 2: Lair of the Chaos Guardian Data
mmRecipe("large_microverse_draconium_2", "large_microverse", 1500)
	.addEnergyPerTickInput(125000)
	.addItemInput(<contenttweaker:tiersevenship>)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<contenttweaker:gemsensor>)
	.addItemInput(<contenttweaker:dragonlairdata> * 64)
	.addItemInput(<contenttweaker:dragonlairdata> * 64)
	.addItemInput(<contenttweaker:dragonlairdata> * 64)
	.addItemInput(<contenttweaker:dragonlairdata> * 64)
	.addItemOutput(<contenttweaker:lairofthechaosguardiandata>)
	.build();

recipes.removeByRecipeName("avaritia:items/resource/neutron_nugget");

// Tier 8: Crystal Microminer - Mission 1: Gravi Star et al.
mmRecipe("large_microverse_crystal_1", "large_microverse", 2000)
	.addEnergyPerTickInput(250000)
	.addItemInput(<contenttweaker:tiereightship>)
	.addItemInput(<contenttweaker:quantumflux> * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<contenttweaker:witherrealmdata> * 64)
	.addItemInput(<contenttweaker:witherrealmdata> * 64)
	.addItemOutput(<gregtech:meta_item_1:32725> * 32)
	.addItemOutput(<gregtech:meta_item_1:32724> * 64)
	.addItemOutput(<avaritia:resource:2> * 64)
	.addItemOutput(<avaritia:resource:2> * 64)
	.addItemOutput(<gregtech:meta_item_1:32726>)
	.build();

// Tier 8: Crystal Microminer - Mission 2: Chaos Shards
mmRecipe("large_microverse_crystal_2", "large_microverse", 1500)
	.addEnergyPerTickInput(250000)
	.addItemInput(<contenttweaker:tiereightship>)
	.addItemInput(<contenttweaker:quantumflux> * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<ore:crystalDilithium>.firstItem * 64)
	.addItemInput(<contenttweaker:lairofthechaosguardiandata>)
	.addItemOutput(<draconicevolution:chaos_shard> * 4)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.addItemOutput(<minecraft:dragon_egg> * 64)
	.build();

// Tier 9: QFE Microminer - Mission 1: Neutronium Stuff
mmRecipe("large_microverse_qfe_1", "large_microverse", 3000)
	.addEnergyPerTickInput(1000000)
	.addItemInput(<contenttweaker:tiernineship>)
	.addItemInput(<gregtech:meta_item_2:32436> * 8)
	.addItemInput(<draconicevolution:draconic_block> * 4)
	.addItemInput(<contenttweaker:stellarcreationdata>)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.addItemOutput(<avaritia:resource:3> * 64)
	.build();

// Tier 9: QFE Microminer - Mission 2: Universe Creation Data
mmRecipe("large_microverse_qfe_2", "large_microverse", 3000)
	.addEnergyPerTickInput(1000000)
	.addItemInput(<contenttweaker:tiernineship>)
	.addItemInput(<draconicevolution:draconic_block> * 4)
	.addItemInput(<contenttweaker:stellarcreationdata> * 64)
	.addItemInput(<contenttweaker:stellarcreationdata> * 64)
	.addItemInput(<contenttweaker:stellarcreationdata> * 64)
	.addItemInput(<contenttweaker:stellarcreationdata> * 64)
	.addItemOutput(<contenttweaker:universecreationdata>)
	.build();


// Tier 10: Neutronium Microminer - Heart of A Universe
mmRecipe("large_microverse_neutronium_1", "large_microverse", 6000)
	.addEnergyPerTickInput(4000000)
	.addItemInput(<contenttweaker:tiertenship>)
	.addItemInput(<contenttweaker:universecreationdata>)
	.addItemInput(<draconicevolution:draconic_block> * 8)
	.addItemOutput(<contenttweaker:heartofauniverse>)
	.build();

// Impossible Realm Data Recipes
makeShaped("of_impossiblerealmdata_x1", <contenttweaker:impossiblerealmdata>,
	["OEO",
	 "EOE",
	 "OEO"],
	{ E : <actuallyadditions:item_solidified_experience>,
	  O : <deepmoblearning:living_matter_overworldian> });

makeShaped("of_impossiblerealmdata_x2", <contenttweaker:impossiblerealmdata> * 2,
	["HEH",
	 "EHE",
	 "HEH"],
	{ E : <actuallyadditions:item_solidified_experience>,
	  H : <deepmoblearning:living_matter_hellish> });

makeShaped("of_impossiblerealmdata_x4", <contenttweaker:impossiblerealmdata> * 4,
	["XEX",
	 "EXE",
	 "XEX"],
	{ E : <actuallyadditions:item_solidified_experience>,
	  X : <deepmoblearning:living_matter_extraterrestrial> });

// Dragon Lair Data
makeShapeless3("of_dragonlairdata", <contenttweaker:dragonlairdata>,
	["IHH",
	 "HHH",
	 "HHH"],
	{ I : <contenttweaker:impossiblerealmdata>,
	  H : <deepmoblearning:living_matter_hellish> }
);

// Wither Realm Data
makeShapeless3("of_witherrealmdata", <contenttweaker:witherrealmdata>,
	["IXX",
	 "XXX",
	 "XXX"],
	{ I : <contenttweaker:impossiblerealmdata>,
	  X : <deepmoblearning:living_matter_extraterrestrial> }
);

// Quantum Flux Recipes
makeShaped("of_quantumflux_a", <contenttweaker:quantumflux>,
	[" X",
	 "XMX",
	 " X"],
	{ M : <enderio:item_material:14>,
	  X : <deepmoblearning:living_matter_extraterrestrial> }
);

makeShaped("of_quantumflux_b", <contenttweaker:quantumflux>,
	[" M",
	 "MDM",
	 " M"],
	{ M : <contenttweaker:moondust>,
	  D : <minecraft:diamond> }
);


// AA Experience Solidifier
recipes.remove(<actuallyadditions:block_xp_solidifier>);
makeShaped("of_aa_block_xp_solidifier", <actuallyadditions:block_xp_solidifier>,
	["AAA",
	 "ABA",
	 "AAA"],
	{ A : <gregtech:meta_item_1:12702>,
	  B : <gregtech:machine:322> }
);
<actuallyadditions:item_solidified_experience>.addTooltip(
	format.green("Can be made in an Experience Solidifier."));


<contenttweaker:tierfourship>.addTooltip(format.white(
	format.italic("Harvests ultra cold materials from the deepest parts of empty space.")));
<contenttweaker:tierfiveship>.addTooltip(format.white(
	format.italic("Harvests strange materials from End microverses.")));
<contenttweaker:tiersixship>.addTooltip(format.italic(
	format.white("Harvests extremely rare materials from every concievable reality.")));
<contenttweaker:tiersevenship>.addTooltip(format.white(
	format.italic("Hunts Wyrms and End Dragons from the microverse")));
<contenttweaker:tiersevenship>.addTooltip(format.white(
	format.italic("and returns with parts from their carapaces.")));
<contenttweaker:tiereightship>.addTooltip(format.italic(
	format.white("Hunts inconcievable monstrosities from beyond the End")));
<contenttweaker:tiereightship>.addTooltip(format.italic(
	format.white("and returns with bizzare trinkets.")));
<contenttweaker:tiernineship>.addTooltip(format.italic(
	format.white("Collapses microverse stars and harvests their delicious neutronium cores.")));
<contenttweaker:tiertenship>.addTooltip(format.italic(
	format.white("Collapses an entire microverse and harvests it whole.")));
<contenttweaker:tiertenship>.addTooltip(format.italic(
	format.white("Try to aim for uninhabited ones.")));


// Dense Hydrogen
makeShaped("of_densehydrogen", <contenttweaker:densehydrogen>,
	["HHH",
	 "HHH",
	 "HHH"],
	{ H : <contenttweaker:solidifiedhydrogen> }
);

// Dense -> Solidified decomposition
recipes.addShapeless(<contenttweaker:solidifiedhydrogen> * 9, [<contenttweaker:densehydrogen>]);

// Ultra Dense Hydrogen
makeShaped("of_ultradensehydrogen", <contenttweaker:ultradensehydrogen>,
	["DDD",
	 "DDD",
	 "DDD"],
	{ D : <contenttweaker:densehydrogen> }
);

// Ultra Dense -> Dense decomposition
recipes.addShapeless(<contenttweaker:densehydrogen> * 9, [<contenttweaker:ultradensehydrogen>]);


// Extraterrestrial Matter
recipes.remove(<deepmoblearning:living_matter_extraterrestrial>);
makeShaped("of_dml_living_matter_extraterrestrial",
	<deepmoblearning:living_matter_extraterrestrial>,
	[" H ",
	 "HEH",
	 " H "],
	{ H : <deepmoblearning:living_matter_hellish>,
	  E : <minecraft:ender_pearl> }
);

// Cryogenic Distillation Recipe 1: Liquid Air
mmRecipe("cryogenicairdistillation_1", "cryogenicairdistillation", 125)
	.addEnergyPerTickInput(2000)
	.addFluidInput(<liquid:liquid_air> * 53000)
	.addFluidOutput(<liquid:nitrogen> * 40000)
	.addFluidOutput(<liquid:oxygen> * 11000)
	.addFluidOutput(<liquid:carbon_dioxide> * 1000)
	.addFluidOutput(<liquid:noble_gases> * 1000)
	.build();


// Cryogenic Distillation Recipe 1: Noble Gasses
mmRecipe("cryogenicairdistillation_2", "cryogenicairdistillation", 1000)
	.addEnergyPerTickInput(3000)
	.addFluidInput(<liquid:noble_gases> * 53000)
	.addFluidOutput(<liquid:argon> * 35000)
	.addFluidOutput(<liquid:neon> * 11000)
	.addFluidOutput(<liquid:helium> * 5000)
	.addFluidOutput(<liquid:krypton> * 1000)
	.addFluidOutput(<liquid:xenon> * 1000)
	.build();


// Naquadah Reactor Mk1 Recipes

mmRecipe("naquadahreactormk1a", "naquadahreactormk1", 3000)
	.addEnergyPerTickOutput(327500)
	.addItemInput(<gregtech:meta_item_1:16309>)
	.addItemOutput(<gregtech:meta_item_1:16035>)
	.build();

mmRecipe("naquadareactorhmk1b", "naquadahreactormk1", 12000)
	.addEnergyPerTickOutput(327500)
	.addItemInput(<gregtech:meta_item_1:16310>)
	.addItemOutput(<gregtech:meta_item_1:16035>)
	.build();

// Naquadah Reactor Mk2 Recipes
mmRecipe("naquadareactorhmk2a", "naquadahreactormk2", 3000)
	.addEnergyPerTickOutput(2620000)
	.addItemInput(<gregtech:meta_item_1:16309>)
	.addItemOutput(<gregtech:meta_item_1:16035>)
	.build();

mmRecipe("naquadareactorhmk2b", "naquadahreactormk2", 12000)
	.addEnergyPerTickOutput(2620000)
	.addItemInput(<gregtech:meta_item_1:16310>)
	.addItemOutput(<gregtech:meta_item_1:16035>)
	.build();

// Oil Drilling Rig mechanics
mmRecipe("oildrillingrig", "oildrillingrig", 88)
	.addEnergyPerTickInput(16000)
	.addFluidInput(<liquid:drilling_fluid> * 40)
	.addItemInput(<inspirations:pipe>)
	.setChance(0.04)
	.addFluidOutput(<liquid:oil> * 4000)
	.build();

// Lunar Mining Station Rover Missions

mmRecipe("lunarminingstationa", "lunarminingstation", 12000)
	.addBiomeRequirement([43,52])
	.addEnergyPerTickInput(500)
	.addItemInput(<contenttweaker:deuteriumrover>)
	.setChance(0.1)
	.addFluidOutput(<liquid:deuterium> * 48000)
	.build();

mmRecipe("lunarminingstationb", "lunarminingstation", 12000)
	.addBiomeRequirement([43,52])
	.addEnergyPerTickInput(500)
	.addItemInput(<contenttweaker:helium3rover>)
	.setChance(0.1)
	.addFluidOutput(<liquid:helium3> * 48000)
	.build();

// Lunar Mining Station Rovers:


// Helium3 Rover (Tritium)
makeShaped("of_helium3rover", <contenttweaker:helium3rover> * 16,
	["SSA",
	 "BCD",
	 "E E"],
	{ A : <gregtech:meta_item_1:32693>,
	  B : <gregtech:meta_item_1:12072>,
	  C : <gregtech:machine:504>,
	  D : <gregtech:meta_item_1:32653>,
	  E : <gregtech:meta_item_1:32633>,
	  S : <solarflux:solar_panel_3> }
);

// Deuterium Rover
makeShaped("of_deuteriumrover", <contenttweaker:deuteriumrover> * 16,
	["SSA",
	 "BCD",
	 "E E"],
	{ A : <gregtech:meta_item_1:32692>,
	  B : <gregtech:meta_item_1:12183>,
	  C : <gregtech:machine:503>,
	  D : <gregtech:meta_item_1:32652>,
	  E : <gregtech:meta_item_1:32632>,
	  S : <solarflux:solar_panel_2> }
);
