import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import mods.gregtech.recipe.Recipe;
import mods.gregtech.recipe.RecipeMap;
import scripts.CommonVars.makeShaped as makeShaped;


/* ******* Applied Energistics 2 ******* */

// AE Network Tool
recipes.addShapeless(<appliedenergistics2:network_tool>, 
	[<ore:itemIlluminatedPanel>, <actuallyadditions:item_laser_wrench>]);

// AE Spatial Pylon
recipes.remove(<appliedenergistics2:spatial_pylon>);
makeShaped("of_spatial_pylon", <appliedenergistics2:spatial_pylon>,
    ["APA",
     "PCP",
     "APA"],
    { A : <gregtech:meta_item_1:12331>, // Nether Star Plate
      P : <moreplates:draconium_plate>,
      C : <draconicevolution:wyvern_energy_core> });

// Certus Quartz
autoclave.recipeBuilder().
	inputs([<appliedenergistics2:material:2>])
	.fluidInputs([<liquid:water> * 200])
	.outputs([<appliedenergistics2:material>])
	.duration(50).EUt(16).buildAndRegister();	


/* ******* Enderio ****** */

// Enderio Attractor Obelisk
recipes.remove(<enderio:block_attractor_obelisk>);
makeShaped("of_attractor_obelisk", <enderio:block_attractor_obelisk>,
    [" C ",
     "EGE",
     "SHS"],
    { C : <ore:itemAttractorCrystal>,
      E : <ore:ingotEnergeticAlloy>,
      G : <moreplates:restonia_gear>,
      S	: <ore:ingotSoularium>,
      H : <ore:itemSoulMachineChassi> });

//Fused Glass
furnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass>, 0.0);

//Dew Of The Void
mods.enderio.Vat.removeRecipe(<liquid:ender_distillation> * 1000);
mods.enderio.Vat.addRecipe(<liquid:ender_distillation> * 1000, 0.5, <liquid:ender> * 4000, [<enderio:item_material:36>], [2], [<enderio:item_material:35>], [2]);

// Z-Logic Controller
makeShaped("of_Z_Logic", <enderio:item_material:41>,
    ["ISI",
     "ICI",
     "WAW"],
    { I : <enderio:item_alloy_ingot:7>, // Soularium
      S : <minecraft:skull:2>, 			// Zombie Skull
      C : <ore:circuitGood>,			// T2 Circuit
      W : <gregtech:meta_item_2:32440>, //Wafer
      A : <ore:blockRedAlloy> });

/* ******* GTCE ******* */

/* ******* GTCE Distillation Tower ******* */

//Distillation Tower
recipes.remove(<gregtech:machine:515>);
makeShaped("of_distillation_tower", <gregtech:machine:515>,
    ["PAP",
     "CMC",
     "PAP"],
    { P : <ore:pipeLargeStainlessSteel>,
      A : <gregtech:meta_item_1:32612>,		// HV Pump
      C : <ore:circuitAdvanced>,			// T3 Circuit
      M : <gregtech:machine:502> });		// MV Machine Hull

//Tower Processing Recipes - Biomass
tower.findRecipe(400, [], [<liquid:biomass> * 1000]).remove();
tower.findRecipe(400, [], [<liquid:biomass> * 1000]).remove();
tower.recipeBuilder()
	.fluidInputs([<liquid:biomass> * 1000])
	.fluidOutputs([<liquid:bio.ethanol> * 700, <liquid:water> * 300])
	.duration(120).EUt(120).buildAndRegister();

// Distillery Processing Recipes - Biomass
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:biomass> * 1000]).remove();	

/* ******* GTCE Drums ******* */

//Tungstensteel Drum
makeShaped("of_tungstensteel_drum", <gregtech:machine:2200>,
    ["PPP",
     "PBP",
     "PPP"],
    { B : <minecraft:bucket>,
      P : <gregtech:meta_item_1:12235>});

// Stainless Steel Drum
makeShaped("of_stainless_drum", <gregtech:machine:2198>,
    ["PPP",
     "PBP",
     "PPP"],
    { B : <minecraft:bucket>,
      P : <gregtech:meta_item_1:12183>});	

// Titanium Drum
makeShaped("of_titanium_drum", <gregtech:machine:2199>,
    ["PPP",
     "PBP",
     "PPP"],
    { B : <minecraft:bucket>,
      P : <gregtech:meta_item_1:12072>});

// Steel Drum
makeShaped("of_steel_drum", <gregtech:machine:2197>,
    ["PPP",
     "PBP",
     "PPP"],
    { B : <minecraft:bucket>,
      P : <gregtech:meta_item_1:12184>});	

// Bronze Drum
makeShaped("of_bronze_drum", <gregtech:machine:2196>,
    ["PPP",
     "PBP",
     "PPP"],
    { B : <minecraft:bucket>,
      P : <gregtech:meta_item_1:12095>});

/* ******* GTCE Lens ******* */


val lensRemoval = [<gregtech:meta_item_1:12154>, <gregtech:meta_item_1:12219>, <gregtech:meta_item_1:12113>, <gregtech:meta_item_1:12092>, <gregtech:meta_item_1:12111>, <gregtech:meta_item_1:12331>, <gregtech:meta_item_1:12209>,<gregtech:meta_item_1:12218>,<gregtech:meta_item_1:12214> ] as IItemStack[];

for lens in lensRemoval {
	
	lathe.findRecipe(16, [lens], [null]).remove();
}

val lensMap as IItemStack[][IItemStack] = {

	//Red Lens
	<gregtech:meta_item_1:15154> : [<gregtech:meta_item_1:8154>, <gregtech:meta_item_1:8206>, <gregtech:meta_item_1:8122>, <gregtech:meta_item_1:8243>, <gregtech:meta_item_1:8085>],
	// Green Lens
	<gregtech:meta_item_1:15113> : [<gregtech:meta_item_1:8117>, <minecraft:emerald>, <gregtech:meta_item_1:8212>],
	// Blue Lens
	<gregtech:meta_item_1:15092> : [<gregtech:meta_item_1:8092>, <gregtech:meta_item_1:8213>, <minecraft:dye:4>, <gregtech:meta_item_1:8157>],
	// Diamond Lens
	<gregtech:meta_item_1:15111> : [<minecraft:diamond>],
	// Nether Star Lens
	<gregtech:meta_item_1:15331>: [<minecraft:nether_star>],
	// Glass Lens
	<gregtech:meta_item_1:15209> : [<minecraft:glass>],
	// Ender Pearl Lens
	<gregtech:meta_item_1:15218> : [<minecraft:ender_pearl>],
	// Ender Eye Lens
	<gregtech:meta_item_1:15219> : [<minecraft:ender_eye>]

} as IItemStack[][IItemStack];

for lens, inputs in lensMap {
	
	for input in inputs {

		autoclave.recipeBuilder()
			.inputs(input)
			.fluidInputs(<liquid:water>*1000)
			.outputs(lens)
			.duration(200).EUt(16).buildAndRegister();

	}
}

<gregtech:meta_item_1:15154>.clearTooltip();
<gregtech:meta_item_1:15154>.displayName = "Red Lens";
<gregtech:meta_item_1:15154>.addTooltip("Red Lens"); 

<gregtech:meta_item_1:15113>.clearTooltip();
<gregtech:meta_item_1:15113>.displayName = "Green Lens";
<gregtech:meta_item_1:15113>.addTooltip("Green Lens");

<gregtech:meta_item_1:15092>.clearTooltip();
<gregtech:meta_item_1:15092>.displayName = "Blue Lens";
<gregtech:meta_item_1:15092>.addTooltip("Blue Lens");

// Draconium Lens
autoclave.recipeBuilder()
	.inputs([<draconicevolution:draconium_block>])
	.fluidInputs([<liquid:mana> * 1000])
	.outputs([<gregtech:meta_item_1:15214>])
	.duration(1200).EUt(1960).buildAndRegister();

<gregtech:meta_item_1:15214>.clearTooltip();
<gregtech:meta_item_1:15214>.displayName = "Draconium Lens";
<gregtech:meta_item_1:15214>.addTooltip("Draconium Lens");





/* ******* GTCE Precision Laser Engraver ****** */

// RAM Wafer - level 1
engraver.findRecipe(120, [<metaitem:wafer.silicon>,<gregtech:meta_item_1:15117>], [null]).remove();	
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.silicon>])
	.notConsumable(<gregtech:meta_item_1:15111>)
	.outputs([<metaitem:wafer.random_access_memory>])
	.duration(900).EUt(120).buildAndRegister();

// RAM Wafer - level 2
engraver.findRecipe(480, [<metaitem:wafer.glowstone>,<gregtech:meta_item_1:15117>], [null]).remove();
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.glowstone>])
	.notConsumable(<gregtech:meta_item_1:15111>)
	.outputs([<metaitem:wafer.random_access_memory> * 4])
	.duration(500).EUt(480).buildAndRegister();

// RAM Wafer - level 3
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15117>], [null]).remove();
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.naquadah>])
	.notConsumable(<gregtech:meta_item_1:15111>)
	.outputs([<metaitem:wafer.random_access_memory> * 8])
	.duration(200).EUt(1920).buildAndRegister();

// CPU Wafer - level 2
engraver.findRecipe(480, [<metaitem:wafer.glowstone>,<gregtech:meta_item_1:15209>], [null]).remove();	
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.glowstone>])
	.notConsumable(<gregtech:meta_item_1:15209>)
	.outputs([<metaitem:wafer.central_processing_unit> * 4])
	.duration(500).EUt(480).buildAndRegister();

// CPU Wafer - level 3
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15209>], [null]).remove();
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.naquadah>])
	.notConsumable(<gregtech:meta_item_1:15209>)
	.outputs([<metaitem:wafer.central_processing_unit> * 16])
	.duration(200).EUt(1920).buildAndRegister();

// Advanced System on Chip Wafer
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15190>], [null]).remove();
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.naquadah>])
	.notConsumable(<gregtech:meta_item_1:15214>)
	.outputs([<metaitem:wafer.advanced_system_on_chip>])
	.duration(200).EUt(1920).buildAndRegister();
	
// System on Chip Wafer
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15244>], [null]).remove();	
engraver.recipeBuilder()
	.inputs([<metaitem:wafer.naquadah>])
	.notConsumable(<gregtech:meta_item_1:15331>)
	.outputs([<metaitem:wafer.system_on_chip> * 2])
	.duration(200).EUt(1920).buildAndRegister();


/* ******* GTCE Cutting Saw ******* */

// Cental Processing Unit - Water
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:water> * 90]).remove();	
saw.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>])
	.fluidInputs([<liquid:water> * 90])
	.outputs([<metaitem:plate.central_processing_unit> * 8])
	.duration(1200).EUt(8).buildAndRegister();

//Central Processing Unit - Distilled Water
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:distilled_water> * 67]).remove();	
saw.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>])
	.fluidInputs([<liquid:distilled_water> * 67])
	.outputs([<metaitem:plate.central_processing_unit> * 8])
	.duration(780).EUt(8).buildAndRegister();

// Central Processing Unit - Lubricant
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:lubricant> * 22]).remove();
saw.recipeBuilder()
	.inputs([<metaitem:wafer.central_processing_unit>])
	.fluidInputs([<liquid:lubricant> * 22])
	.outputs([<metaitem:plate.central_processing_unit> * 8])
	.duration(300).EUt(8).buildAndRegister();

/* ******* GTCE Lathe ******* */
	
// HSS-G Long Rod
lathe.recipeBuilder()
	.inputs([<gregtech:meta_item_1:14302> * 2])
	.outputs([<gregtech:meta_item_2:19302>])
	.duration(200).EUt(30).buildAndRegister();

// HSS-E Long Rod
lathe.recipeBuilder()
	.inputs([<gregtech:meta_item_1:14303> * 2])
	.outputs([<gregtech:meta_item_2:19303>])
	.duration(200).EUt(30).buildAndRegister();

// Neutronium Long Rod
lathe.recipeBuilder()
	.inputs([<gregtech:meta_item_1:14972> * 2])
	.outputs([<gregtech:meta_item_2:19972>])
	.duration(200).EUt(30).buildAndRegister();

// Magnetic Neodymium Long Rod
lathe.recipeBuilder()
	.inputs([<gregtech:meta_item_1:14299> * 2])
	.outputs([<gregtech:meta_item_2:19299>])
	.duration(200).EUt(30).buildAndRegister();


/* ******* GTCE Brewery ******* */


val brewMap as ILiquidStack[][IItemStack] = {
	
	// Plant ball
	<gregtech:meta_item_2:32570> : [<liquid:water> * 180, <liquid:water> * 180, <liquid:for.honey> * 180, <liquid:juice> * 180],
	// Oak Sapling
	<minecraft:sapling> : [<liquid:water> * 100, <liquid:for.honey> * 100, <liquid:juice> * 100],
	// Spruce Sapling
	<minecraft:sapling:1> : [<liquid:water> * 100],	
	// Birch Sapling
	<minecraft:sapling:2> : [<liquid:water> * 100],	
	// Jungle Sapling
	<minecraft:sapling:3> : [<liquid:water> * 100],	
	// Acacia Sapling
	<minecraft:sapling:4> : [<liquid:water> * 100],	
	// Dark Oak Sapling
	<minecraft:sapling:5> : [<liquid:water> * 100],	
	// Potato
	<minecraft:potato> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Sugarcane
	<minecraft:reeds> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Beetroot
	<minecraft:beetroot> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Red Mushroom
	<minecraft:red_mushroom> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Brown Mushroom
	<minecraft:brown_mushroom> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Carrot 
	<minecraft:carrot> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// Cactus
	<minecraft:cactus> : [<liquid:water> * 20, <liquid:water> * 20, <liquid:for.honey> * 20, <liquid:juice> * 20],
	// AR Sapling
	<advancedrocketry:aliensapling> : [<liquid:water> * 100],
	// Rubber Sapling
	<gregtech:sapling> : [<liquid:water> * 100]


} as ILiquidStack[][IItemStack];

for item, liquids in brewMap {

	
	for liquid in liquids {
	
		var recipe as Recipe = brewer.findRecipe(3, [item], [liquid]);
		if(!isNull(recipe)) {
			recipe.remove();
		} else {
			print("No matching brewing recipe found for [" ~ item.name ~ "] [" ~ liquid.name ~ " * " ~ liquid.amount ~ "]");
		}
	}
}



// Biomass - Plant Ball
brewer.recipeBuilder()
	.inputs(<gregtech:meta_item_2:32570>)
	.fluidInputs([<liquid:water> * 180])
	.fluidOutputs([<liquid:biomass> * 180])
	.duration(1440).EUt(3).buildAndRegister();

// Biomass - Sapling
brewer.recipeBuilder()
	.inputs(<ore:treeSapling>)
	.fluidInputs([<liquid:water> * 100])
	.fluidOutputs([<liquid:biomass> * 100])
	.duration(800).EUt(3).buildAndRegister();

// Biomass - Potato
brewer.recipeBuilder()
	.inputs(<minecraft:potato>)
	.fluidInputs([<liquid:water> * 80])
	.fluidOutputs([<liquid:biomass> * 80])
	.duration(640).EUt(3).buildAndRegister();

// Biomass - Beetroot
brewer.recipeBuilder()
	.inputs(<minecraft:beetroot>)
	.fluidInputs([<liquid:water> * 60])
	.fluidOutputs([<liquid:biomass> * 60])
	.duration(480).EUt(3).buildAndRegister();

// Biomass - Carrot
brewer.recipeBuilder()
	.inputs(<minecraft:carrot>)
	.fluidInputs([<liquid:water> * 60])
	.fluidOutputs([<liquid:biomass> * 60])
	.duration(480).EUt(3).buildAndRegister();

// Biomass - Cactus
brewer.recipeBuilder()
	.inputs(<minecraft:cactus>)
	.fluidInputs([<liquid:water> * 60])
	.fluidOutputs([<liquid:biomass> * 60])
	.duration(480).EUt(3).buildAndRegister();

// Biomass - Sugarcane
brewer.recipeBuilder()
	.inputs(<minecraft:reeds>)
	.fluidInputs([<liquid:water> * 100])
	.fluidOutputs([<liquid:biomass> * 100])
	.duration(800).EUt(3).buildAndRegister();

// Biomass - Brown Mushroom
brewer.recipeBuilder()
	.inputs(<minecraft:brown_mushroom>)
	.fluidInputs([<liquid:water> * 60])
	.fluidOutputs([<liquid:biomass> * 60])
	.duration(480).EUt(3).buildAndRegister();

// Biomass - Red Mushroom
brewer.recipeBuilder()
	.inputs(<minecraft:red_mushroom>)
	.fluidInputs([<liquid:water> * 60])
	.fluidOutputs([<liquid:biomass> * 60])
	.duration(480).EUt(3).buildAndRegister();


/* ******* GTCE Fermenter ******* */

// Refined Canola
fermenter.recipeBuilder()
	.fluidInputs([<liquid:canolaoil> * 100])
	.fluidOutputs([<liquid:refinedcanolaoil> * 100])
	.duration(400).EUt(2).buildAndRegister();

/* ******* GTCE Macerator ******* */

// Moon Dust
macerator.recipeBuilder()
	.inputs([<advancedrocketry:moonturf>])
	.outputs([<contenttweaker:moondust>])
	.duration(200).EUt(400).buildAndRegister();

macerator.recipeBuilder()
	.inputs([<advancedrocketry:moonturf_dark>])
	.outputs([<contenttweaker:moondust>])
	.duration(200).EUt(400).buildAndRegister();

/* ******* GTCE Centrifuge ******* */

// Deuterium
centrifuge.findRecipe(20, [], [<liquid:hydrogen> * 160]).remove();
centrifuge.recipeBuilder()
	.fluidInputs(<liquid:hydrogen> * 500)
	.fluidOutputs([<liquid:deuterium> * 10])
	.duration(800).EUt(30).buildAndRegister();

centrifuge.recipeBuilder()
	.inputs(<contenttweaker:moondust>)
	.fluidOutputs([<liquid:deuterium> * 100])
	.duration(200).EUt(20).buildAndRegister();

// Silicon Oxide Dust
centrifuge.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2328> * 3)
	.outputs([<gregtech:meta_item_1:2159> * 2])
	.duration(40).EUt(20).buildAndRegister();


/* ******* GTCE Assembler ******* */

	/* ****** Pumps ******* */

// LV Pump
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_1:32600>, <gregtech:fluid_pipe:2095>, <gregtech:cable:5071>, <gregtech:meta_item_1:18152> * 2])
	.outputs([<gregtech:meta_item_1:32610>])
	.duration(200).EUt(16).buildAndRegister();	

// MV Pump
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18095>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_1:32601>, <gregtech:fluid_pipe:2184>, <gregtech:cable:5018>, <gregtech:meta_item_1:18152> * 2])
	.outputs([<gregtech:meta_item_1:32611>])
	.duration(200).EUt(16).buildAndRegister();

// HV Pump
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18184>, <gregtech:meta_item_1:17184>, <gregtech:meta_item_1:32602>, <gregtech:fluid_pipe:2183>, <gregtech:cable:5026>, <gregtech:meta_item_1:18152> * 2])
	.outputs([<gregtech:meta_item_1:32612>])
	.duration(200).EUt(16).buildAndRegister();

// EV Pump
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18183>, <gregtech:meta_item_1:17183>, <gregtech:meta_item_1:32603>, <gregtech:fluid_pipe:2072>, <gregtech:cable:5001>, <gregtech:meta_item_1:18152> * 2])
	.outputs([<gregtech:meta_item_1:32613>])
	.duration(200).EUt(16).buildAndRegister();

// IV Pump
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18235>, <gregtech:meta_item_1:17235>, <gregtech:meta_item_1:32604>, <gregtech:fluid_pipe:2235>, <gregtech:cable:5074>, <gregtech:meta_item_1:18152> * 2])
	.outputs([<gregtech:meta_item_1:32614>])
	.duration(200).EUt(16).buildAndRegister();

	/* ******* GTCE Diesel Engine ******* */

// Engine Intake
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:18072> * 4, <gregtech:fluid_pipe:2072> * 2, <gregtech:metal_casing:6>])
	.outputs([<gregtech:multiblock_casing>])
	.duration(400).EUt(16).buildAndRegister();

	/* ******* GTCE Gear Boxes ******* */

//Gear Boxes Via Assembler
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:26184> * 2, <gregtech:meta_item_1:12184> * 4, <gregtech:frame_steel>])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 8}))
	.outputs([<gregtech:turbine_casing:1> * 3])
	.duration(200).EUt(16).buildAndRegister();
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_2:26072> * 2, <gregtech:meta_item_1:12072> * 4, <gregtech:frame_titanium>])
	.outputs([<gregtech:turbine_casing:2> * 3])
	.duration(400).EUt(16).buildAndRegister();


/* ******* GTCE Extruder ******* */

val gearMap as IItemStack[][IItemStack] = {
	
	// Small Steel Gear
	<gregtech:meta_item_2:17184> : [<gregtech:meta_item_1:10184>],
	// Small Aluminium Gear
	<gregtech:meta_item_2:17001> : [<gregtech:meta_item_1:10001>],
	// Small Stainless Steel Gear
	<gregtech:meta_item_2:17183> : [<gregtech:meta_item_1:10183>],
	// Small Titanium Gear
	<gregtech:meta_item_2:17072> : [<gregtech:meta_item_1:10072>],
	// Small Tungstensteel Gear
	<gregtech:meta_item_2:17235> : [<gregtech:meta_item_1:10235>],
	// Small HSS-G Gear
	<gregtech:meta_item_2:17302> : [<gregtech:meta_item_1:10302>],
	// Small HSS-E Gear
	<gregtech:meta_item_2:17303> : [<gregtech:meta_item_1:10303>],
	// Small Neutronium Gear
	<gregtech:meta_item_2:17972> : [<avaritia:resource:4>]
};

for gear, input in gearMap {
	
	extruder.recipeBuilder()
		.inputs(input)
		.notConsumable(<contenttweaker:smallgearextrudershape>)
		.outputs(gear)
		.duration(130).EUt(64).buildAndRegister();		
}

/* ******* GTCE Compressor ******* */

//Rose Gold Plate
compressor.recipeBuilder()
	.inputs([<gregtech:meta_item_1:10228>])
	.outputs([<gregtech:meta_item_1:12228>])
	.duration(100).EUt(10).buildAndRegister();

/* ******* GTCE Chemical Reactor ******** */

// Fixes #357: CO2 output should be 4 buckets
reactor.findRecipe(480,
    [<gregtech:meta_item_1:2012> * 2, <gregtech:meta_item_1:2122>],
    [<liquid:chlorine> * 4000])
    .remove();

reactor.recipeBuilder()
    .inputs([<gregtech:meta_item_1:2012> * 2, <gregtech:meta_item_1:2122>])
    .fluidInputs([<liquid:chlorine> * 4000])
    .fluidOutputs([<liquid:carbon_monoxide> * 4000, <liquid:titanium_tetrachloride> * 1000])
    .duration(500)
    .EUt(480)
    .buildAndRegister();
// end Fix for #357



/* ******* GTCE Crafting ******* */

// Small Gear Mold
recipes.addShaped(<contenttweaker:smallgearextrudershape>, [
	[<gregtech:meta_item_1:32300>,null,null],
	[null,<gregtech:meta_tool:13>,null], 
	[null,null,null]]);
	
// Creative Tank Mold
recipes.addShaped(<contenttweaker:creativeportabletankmold>, [
	[null,null,<gregtech:meta_tool:6>],
	[null,<gregtech:meta_item_1:32300>,null], 
	[null,null,null]]);

// Basic Transistor
recipes.addShaped(<metaitem:component.transistor> * 4, [
	[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19001>],
	[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19001>], 
	[<gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16062>]]);
	
// Basic Capacitor
recipes.addShaped(<metaitem:component.capacitor> * 4, [
	[<gregtech:meta_item_1:19189>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19189>],
	[<gregtech:meta_item_1:19189>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19189>], 
	[<gregtech:meta_item_2:16062>, null, <gregtech:meta_item_2:16062>]]);


/* ******* GTCE Removals ******* */

// Lapotron Crystals
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesslapis");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedlazurite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedlapis");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesssodalite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedsodalite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesslazurite");



/* ******* Minecraft ******* */

// Blaze Rod
macerator.findRecipe(8, [<minecraft:blaze_rod>], [null]).remove();
macerator.recipeBuilder()
	.inputs([<minecraft:blaze_rod>])
	.outputs([<minecraft:blaze_powder> * 4])
	.duration(200).EUt(16).buildAndRegister();

// Hopper - Iron Plates
assembler.findRecipe(2, [<gregtech:meta_item_1:12033> * 5, <minecraft:trapped_chest>], [null]).remove();
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12033> * 5, <minecraft:chest>])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
	.outputs([<minecraft:hopper>])
	.duration(100).EUt(16).buildAndRegister();

// Hopper - Wrought Iron Plates
assembler.findRecipe(2, [<gregtech:meta_item_1:12197> * 5, <minecraft:trapped_chest>], [null]).remove();
assembler.recipeBuilder()
	.inputs([<gregtech:meta_item_1:12197> * 5, <minecraft:chest>])
	.notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5}))
	.outputs([<minecraft:hopper>])
	.duration(100).EUt(16).buildAndRegister();

// Cow Spawn Egg
recipes.addShapeless(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}), 
[<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:cow"})]);

/* ******* Thermal Expansion ******* */

// Thermal Expansion Satchel
recipes.remove(<thermalexpansion:satchel:2>);
recipes.addShaped("test", <thermalexpansion:satchel:2>, [
	[null, <gregtech:meta_item_1:9112>, null],
	[<gregtech:meta_item_1:10001>, <thermalexpansion:satchel:1>.marked("satchel"), <gregtech:meta_item_1:10001>], 
	[<gregtech:meta_item_1:9112>, null, <gregtech:meta_item_1:9112>]],
	function(out, ins, cInfo) {
    var tag = {} as IData;
    # This if is here to keep the tinkers workbench from screwing up JEI autocomplete
    if(ins has "satchel" && !isNull(ins.satchel) && ins.satchel.hasTag) {
        tag = ins.satchel.tag;
    }
    return out.withTag(tag);
}, null);

// Blizz Powder
macerator.recipeBuilder()
	.inputs([<thermalfoundation:material:2048>])
	.outputs([<thermalfoundation:material:2049> * 4])
	.duration(200).EUt(16).buildAndRegister();

// Blitz Powder
macerator.recipeBuilder()
	.inputs([<thermalfoundation:material:2050>])
	.outputs([<thermalfoundation:material:2051> * 4])
	.duration(200).EUt(16).buildAndRegister();

// Basalz Powder
macerator.recipeBuilder()
	.inputs([<thermalfoundation:material:2052>])
	.outputs([<thermalfoundation:material:2053> * 4])
	.duration(200).EUt(16).buildAndRegister();

/* ******* Deep Mob Learning ******* */

//Deep Learner
recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped(<deepmoblearning:deep_learner>, 
	[[null,null,null],
	[<scannable:module_monster>,<scannable:scanner>,<scannable:module_monster>],
	[null,null,null]]);

// Deep Mob Learning book
recipes.remove(
	<patchouli:guide_book>
		.withTag({"patchouli:book": "deepmoblearning:book"})
);
recipes.addShapeless(
	<patchouli:guide_book>
		.withTag({"patchouli:book": "deepmoblearning:book"}),
	[<ore:book>, <forestry:crafting_material>]
);

/* ******* Actually Additions ******* */

//Ender Star
recipes.remove(<actuallyadditions:item_misc:19>);	
reactor.recipeBuilder()
	.inputs([<minecraft:nether_star>])
	.fluidInputs([<liquid:ender_distillation> * 8000])
	.outputs(<actuallyadditions:item_misc:19>)
	.EUt(400).duration(2000).buildAndRegister();


// Bio Diesel - Methanol/Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:canolaoil> * 1000,<liquid:methanol> * 6000])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Ethanol/Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:canolaoil> * 1000,<liquid:bio.ethanol> * 6000])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Methanol/Refined Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:refinedcanolaoil> * 750,<liquid:methanol> * 4500])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Ethanol/Refined Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:refinedcanolaoil> * 750,<liquid:bio.ethanol> * 4500])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Methanol/Crystallized Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:crystaloil> * 500,<liquid:methanol> * 3000])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Ethanol/Crystallized Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:crystaloil> * 500,<liquid:bio.ethanol> * 3000])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Methanol/Empowered Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:empoweredoil> * 250,<liquid:methanol> * 1500])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000])
	.duration(300).EUt(30).buildAndRegister();

// Bio Diesel - Ethanol/Empowered Canola
reactor.recipeBuilder()
	.inputs(<gregtech:meta_item_1:373>)
	.fluidInputs([<liquid:empoweredoil> * 250,<liquid:bio.ethanol> * 1500])
	.fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000])
	.duration(300).EUt(30).buildAndRegister();

// Crystallized Canola
reactor.recipeBuilder()
	.inputs(<actuallyadditions:item_misc:23>)
	.fluidInputs([<liquid:canolaoil> * 1000])
	.fluidOutputs([<liquid:crystaloil> * 1000])
	.duration(100).EUt(120).buildAndRegister();

// Empowered Canola
reactor.recipeBuilder()
	.inputs(<actuallyadditions:item_misc:24>)
	.fluidInputs([<liquid:canolaoil> * 1000])
	.fluidOutputs([<liquid:empoweredoil> * 1000])
	.duration(100).EUt(500).buildAndRegister();


// Canola Press
recipes.removeByRecipeName("actuallyadditions:recipes132");
makeShaped("of_canola_press", <actuallyadditions:block_canola_press>,
    ["SES",
     "P P",
     "SCS"],
    { S : <gregtech:meta_item_1:12184>, //Steel Plate
      E : <actuallyadditions:block_crystal:5>, //Enori Crystal
      P : <gregtech:meta_item_1:32641>, //MV Piston
      C : <actuallyadditions:item_misc:8> //Advanced Coil
      });

<actuallyadditions:block_canola_press>.addTooltip(format.green("Turns Canola into Canola Oil. Requires RF."));  

/* ******* Simply Jetpacks ******* */

//Ghast for Flight Controller
mods.enderio.SoulBinder.addRecipe(<simplyjetpacks:metaitemmods:6>, <simplyjetpacks:metaitemmods:5>, ["ghast"], 75000, 300);

// Glowstone Elevation Unit
assembler.recipeBuilder()
	.inputs([<simplyjetpacks:metaitemmods:18>])
	.fluidInputs([<liquid:glowstone> * 4320])
	.outputs([<simplyjetpacks:metaitemmods:19>])
	.duration(2000).EUt(3000).buildAndRegister();

// Cryotheum Coolant Unit
assembler.recipeBuilder()
	.inputs([<simplyjetpacks:metaitemmods:20>])
	.fluidInputs([<liquid:cryotheum> * 4320])
	.outputs([<simplyjetpacks:metaitemmods:21>])
	.duration(2000).EUt(8000).buildAndRegister();