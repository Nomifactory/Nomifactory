import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

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
<modularmachinery:blockcontroller>.displayName = "Modular Machine Controller";
<modularmachinery:blockcontroller>.addTooltip(format.red("Modular Machinery is getting removed in a future update."));
<modularmachinery:blockcontroller>.addTooltip(format.red("Please use the new GregTech multiblocks instead. ('@Multiblock' in JEI)"));

<ore:multiblockController>.add(<modularmachinery:blockcontroller>);

//                 XXXXXXXXXX                            XXXXXXXXXX
//              XXXXXXXXXXXXXXX                        XXXXXXXXXXXXXXX
//            XXXXXXXXXXXXX XXXX                      XXXX XXXXXXXXXXXXX
//           XXXXXXXXXXXXX XXXXX                      XXXXX XXXXXXXXXXXXX
//          XXXXXXXXXXXXX XXXXXX                      XXXXXX XXXXXXXXXXXXX
//         XXXXXXXXXXXXXXXXXXXXX                      XXXXXXXXXXXXXXXXXXXXX
//        XXXXXXXXXXXXXXXXXXXXXX                      XXXXXXXXXXXXXXXXXXXXXX
//       XXXXXXXXXXXXXXXXXXXXXX                        XXXXXXXXXXXXXXXXXXXXXX
//       XXXXXXXXXXXXXXXXXXXXX  XXXXX            XXXXX  XXXXXXXXXXXXXXXXXXXXX
//      XXXXXXXXXXXXXXXXXXXXX  XXXXXXXX        XXXXXXXX  XXXXXXXXXXXXXXXXXXXXX
//      XXXXXXXXXXXXXXXXXXX    XXXXXXXX        XXXXXXXX    XXXXXXXXXXXXXXXXXXX
//      XXXXXXXXXXXXXXXXX      XXXXXXXXX      XXXXXXXXX      XXXXXXXXXXXXXXXXX
//      XXXXXXXXXXXXXXX          XXXXXXXXXXXXXXXXXXXX          XXXXXXXXXXXXXXX
//      XXXXXXXXXXXX          XXXXXXXXXXXXXXXXXXXXXXXXXX          XXXXXXXXXXXX
//      XXXXXXXXXX        XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX        XXXXXXXXXX
//       XXXXXXXXXX     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX     XXXXXXXXXX
//        XXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXX
// XXXX     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX     XXXX
// XXXXXX    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX    XXXXXX
// XXXXXXXX    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX    XXXXXXXX
//  XXXXXXXX     XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX    XXXXXXXX
//   XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//       XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//          XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXX
// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
// XXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
//    XXXXXXXXXXXXXX XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX XXXXXXXXXXXXXX
//         XXX    XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX    XXX
//            XXXXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXXX
//       XXXXXXXXXXXXXXXX  XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX  XXXXXXXXXXXXXXXX
//    XXXXXXXXXXXXXXXXX   XXXXXXXX     XXXXXXXX     XXXXXXXX   XXXXXXXXXXXXXXXXX
//    XXXXXXXXXXXXXX    XXXXXXXXX                    XXXXXXXXX    XXXXXXXXXXXXXX
//     XXXXXXXXXX      XXXXXXXX                       XXXXXXXXX      XXXXXXXXXX
//                     XXXXXXXX                        XXXXXXXX
//                     XXXXXXXX                        XXXXXXXX
//                      XXXXXXX                        XXXXXXX
//                      XXXXXX                          XXXXXX
//                      XXXXX                            XXXXX

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
	format.white(
		format.italic("Harvests Titanium and other light metals from asteroids in the microverse.")));

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

recipes.removeByRecipeName("avaritia:items/resource/neutron_nugget");

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
	  H : <deepmoblearning:living_matter_extraterrestrial> }
);

// Wither Realm Data
makeShapeless3("of_witherrealmdata", <contenttweaker:witherrealmdata>,
	["IXX",
	 "XXX",
	 "XXX"],
	{ I : <contenttweaker:impossiblerealmdata>,
	  X : <deepmoblearning:living_matter_hellish> }
);

// Quantum Flux Recipes
makeShaped("of_quantumflux_a", <contenttweaker:quantumflux>,
	[" X ",
	 "XMX",
	 " X "],
	{ M : <enderio:item_material:14>,
	  X : <deepmoblearning:living_matter_extraterrestrial> }
);

makeShaped("of_quantumflux_b", <contenttweaker:quantumflux>,
	[" M ",
	 "MDM",
	 " M "],
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
	format.green("Drops from monsters, and can be made in"));
<actuallyadditions:item_solidified_experience>.addTooltip(
	format.green("a Fluid Solidifier or Experience Solidifier."));

// Solidified Experience
solidifier.recipeBuilder()
    .fluidInputs([<liquid:xpjuice> * 160])
    .notConsumable(<gregtech:meta_item_1:32307>)
    .outputs(<actuallyadditions:item_solidified_experience>)
    .duration(500).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder()
	.inputs(<actuallyadditions:item_solidified_experience>)
	.fluidOutputs(<liquid:xpjuice> * 160)
	.duration(80).EUt(32).buildAndRegister();

<contenttweaker:tierfourship>.addTooltip(format.white(
	format.italic("Harvests ultra cold materials from the deepest parts of empty space.")));
<contenttweaker:tierfiveship>.addTooltip(format.white(
	format.italic("Harvests strange materials from End microverses.")));
<contenttweaker:tiersixship>.addTooltip(format.white(
	format.italic("Harvests extremely rare materials from every concievable reality.")));
<contenttweaker:tiersevenship>.addTooltip(format.white(
	format.italic("Hunts Wyrms and End Dragons from the microverse.")));
<contenttweaker:tiersevenship>.addTooltip(format.white(
	format.italic("and returns with parts from their carapaces.")));
<contenttweaker:tiereightship>.addTooltip(format.white(
	format.italic("Hunts inconcievable monstrosities from beyond the End.")));
<contenttweaker:tiereightship>.addTooltip(format.white(
	format.italic("and returns with bizzare trinkets.")));
<contenttweaker:tiernineship>.addTooltip(format.white(
	format.italic("Collapses microverse stars and harvests their delicious neutronium cores.")));
<contenttweaker:tiertenship>.addTooltip(format.white(
	format.italic("Collapses an entire microverse and harvests it whole.")));
<contenttweaker:tiertenship>.addTooltip(format.white(
	format.italic("Try to aim for uninhabited ones.")));


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
