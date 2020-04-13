import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.data.IData;

recipes.addShapeless(<appliedenergistics2:network_tool>, [<ore:itemIlluminatedPanel>, <actuallyadditions:item_laser_wrench>]);

furnace.addRecipe(<enderio:block_fused_glass>, <minecraft:glass>, 0.0);
recipes.remove(<appliedenergistics2:spatial_pylon>);
recipes.addShaped(<appliedenergistics2:spatial_pylon>, [[<gregtech:meta_item_1:12331>, <moreplates:draconium_plate>, <gregtech:meta_item_1:12331>],[<moreplates:draconium_plate>, <draconicevolution:wyvern_energy_core>, <moreplates:draconium_plate>], [<gregtech:meta_item_1:12331>, <moreplates:draconium_plate>, <gregtech:meta_item_1:12331>]]);

recipes.remove(<enderio:block_attractor_obelisk>);
recipes.addShaped(<enderio:block_attractor_obelisk>, [[null, <ore:itemAttractorCrystal>, null], [<ore:ingotEnergeticAlloy>, <moreplates:restonia_gear>, <ore:ingotEnergeticAlloy>], [<ore:ingotSoularium>, <ore:itemSoulMachineChassi>, <ore:ingotSoularium>]]);

//Tower Processing
tower.findRecipe(400, [], [<liquid:biomass> * 1000]).remove();
tower.findRecipe(400, [], [<liquid:biomass> * 1000]).remove();
tower.recipeBuilder().fluidInputs([<liquid:biomass> * 1000]).fluidOutputs([<liquid:bio.ethanol> * 700, <liquid:water> * 300]).duration(120).EUt(120).buildAndRegister();

distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:biomass> * 1000]).remove();	
distillery.findRecipe(100, [<gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:biomass> * 1000]).remove();	

recipes.addShaped(<gregtech:machine:2200>, [[<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12235>],[<gregtech:meta_item_1:12235>, <minecraft:bucket>, <gregtech:meta_item_1:12235>], [<gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12235>, <gregtech:meta_item_1:12235>]]);
recipes.addShaped(<gregtech:machine:2198>, [[<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>],[<gregtech:meta_item_1:12183>, <minecraft:bucket>, <gregtech:meta_item_1:12183>], [<gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>, <gregtech:meta_item_1:12183>]]);
recipes.addShaped(<gregtech:machine:2199>, [[<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12072>],[<gregtech:meta_item_1:12072>, <minecraft:bucket>, <gregtech:meta_item_1:12072>], [<gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12072>, <gregtech:meta_item_1:12072>]]);
recipes.addShaped(<gregtech:machine:2197>, [[<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>],[<gregtech:meta_item_1:12184>, <minecraft:bucket>, <gregtech:meta_item_1:12184>], [<gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>, <gregtech:meta_item_1:12184>]]);
recipes.addShaped(<gregtech:machine:2196>, [[<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>],[<gregtech:meta_item_1:12095>, <minecraft:bucket>, <gregtech:meta_item_1:12095>], [<gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>, <gregtech:meta_item_1:12095>]]);

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

//red lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12154>], [null]).remove();	
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8243>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15154>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8154>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15154>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8206>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15154>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8122>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15154>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8085>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15154>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<appliedenergistics2:material:2>]).fluidInputs([<liquid:water> * 200]).outputs([<appliedenergistics2:material>]).duration(50).EUt(16).buildAndRegister();
<gregtech:meta_item_1:15154>.clearTooltip();
<gregtech:meta_item_1:15154>.displayName = "Red Lens";
<gregtech:meta_item_1:15154>.addTooltip("Red Lens");

//green lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12219>], [null]).remove();	
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8117>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15113>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<minecraft:emerald>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15113>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8212>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15113>]).duration(200).EUt(16).buildAndRegister();
<gregtech:meta_item_1:15113>.clearTooltip();
<gregtech:meta_item_1:15113>.displayName = "Green Lens";
<gregtech:meta_item_1:15113>.addTooltip("Green Lens");

//blue lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12092>], [null]).remove();	
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8092>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15092>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8213>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15092>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<minecraft:dye:4>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15092>]).duration(200).EUt(16).buildAndRegister();
autoclave.recipeBuilder().inputs([<gregtech:meta_item_1:8157>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15092>]).duration(200).EUt(16).buildAndRegister();
<gregtech:meta_item_1:15092>.clearTooltip();
<gregtech:meta_item_1:15092>.displayName = "Blue Lens";
<gregtech:meta_item_1:15092>.addTooltip("Blue Lens");

//Diamond Lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12111>], [null]).remove();	
autoclave.recipeBuilder().inputs([<minecraft:diamond>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15111>]).duration(400).EUt(16).buildAndRegister();
engraver.findRecipe(120, [<metaitem:wafer.silicon>,<gregtech:meta_item_1:15117>], [null]).remove();	
engraver.findRecipe(480, [<metaitem:wafer.glowstone>,<gregtech:meta_item_1:15117>], [null]).remove();	
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15117>], [null]).remove();	
engraver.recipeBuilder().inputs([<metaitem:wafer.silicon>]).notConsumable(<gregtech:meta_item_1:15111>).outputs([<metaitem:wafer.random_access_memory>]).duration(900).EUt(120).buildAndRegister();
engraver.recipeBuilder().inputs([<metaitem:wafer.glowstone>]).notConsumable(<gregtech:meta_item_1:15111>).outputs([<metaitem:wafer.random_access_memory> * 4]).duration(500).EUt(480).buildAndRegister();
engraver.recipeBuilder().inputs([<metaitem:wafer.naquadah>]).notConsumable(<gregtech:meta_item_1:15111>).outputs([<metaitem:wafer.random_access_memory> * 8]).duration(200).EUt(1920).buildAndRegister();

//Netherstar Lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12331>], [null]).remove();	
autoclave.recipeBuilder().inputs([<minecraft:nether_star>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15331>]).duration(1600).EUt(16).buildAndRegister();
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15244>], [null]).remove();	
engraver.recipeBuilder().inputs([<metaitem:wafer.naquadah>]).notConsumable(<gregtech:meta_item_1:15331>).outputs([<metaitem:wafer.system_on_chip> * 2]).duration(200).EUt(1920).buildAndRegister();

//Glass Lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12209>], [null]).remove();	
autoclave.recipeBuilder().inputs([<minecraft:glass>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15209>]).duration(100).EUt(16).buildAndRegister();
engraver.findRecipe(480, [<metaitem:wafer.glowstone>,<gregtech:meta_item_1:15209>], [null]).remove();	
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15209>], [null]).remove();	
engraver.recipeBuilder().inputs([<metaitem:wafer.glowstone>]).notConsumable(<gregtech:meta_item_1:15209>).outputs([<metaitem:wafer.central_processing_unit> * 4]).duration(500).EUt(480).buildAndRegister();
engraver.recipeBuilder().inputs([<metaitem:wafer.naquadah>]).notConsumable(<gregtech:meta_item_1:15209>).outputs([<metaitem:wafer.central_processing_unit> * 16]).duration(200).EUt(1920).buildAndRegister();
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:water> * 90]).remove();	
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:distilled_water> * 67]).remove();	
saw.findRecipe(48, [<metaitem:wafer.central_processing_unit>], [<liquid:lubricant> * 22]).remove();	
saw.recipeBuilder().inputs([<metaitem:wafer.central_processing_unit>]).fluidInputs([<liquid:water> * 90]).outputs([<metaitem:plate.central_processing_unit> * 8]).duration(1200).EUt(8).buildAndRegister();
saw.recipeBuilder().inputs([<metaitem:wafer.central_processing_unit>]).fluidInputs([<liquid:distilled_water> * 67]).outputs([<metaitem:plate.central_processing_unit> * 8]).duration(780).EUt(8).buildAndRegister();
saw.recipeBuilder().inputs([<metaitem:wafer.central_processing_unit>]).fluidInputs([<liquid:lubricant> * 22]).outputs([<metaitem:plate.central_processing_unit> * 8]).duration(300).EUt(8).buildAndRegister();

//Enderpearl Lens
//lathe.findRecipe(16, [<gregtech:meta_item_1:12218>], [null]).remove();	
autoclave.recipeBuilder().inputs([<minecraft:ender_pearl>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15218>]).duration(400).EUt(16).buildAndRegister();

//Endereye Lens
autoclave.recipeBuilder().inputs([<minecraft:ender_eye>]).fluidInputs([<liquid:water> * 1000]).outputs([<gregtech:meta_item_1:15219>]).duration(800).EUt(16).buildAndRegister();

//Draconium Lens
lathe.findRecipe(16, [<gregtech:meta_item_1:12214>], [null]).remove();	
engraver.findRecipe(1920, [<metaitem:wafer.naquadah>,<gregtech:meta_item_1:15190>], [null]).remove();	
autoclave.recipeBuilder().inputs([<draconicevolution:draconium_block>]).fluidInputs([<liquid:mana> * 1000]).outputs([<gregtech:meta_item_1:15214>]).duration(1200).EUt(1960).buildAndRegister();
engraver.recipeBuilder().inputs([<metaitem:wafer.naquadah>]).notConsumable(<gregtech:meta_item_1:15214>).outputs([<metaitem:wafer.advanced_system_on_chip>]).duration(200).EUt(1920).buildAndRegister();
<gregtech:meta_item_1:15214>.clearTooltip();
<gregtech:meta_item_1:15214>.displayName = "Draconium Lens";
<gregtech:meta_item_1:15214>.addTooltip("Draconium Lens");

//Ender Star
recipes.remove(<actuallyadditions:item_misc:19>);	
reactor.recipeBuilder().inputs([<minecraft:nether_star>]).fluidInputs([<liquid:ender_distillation> * 8000]).outputs(<actuallyadditions:item_misc:19>).EUt(400).duration(2000).buildAndRegister();


//Distillation Tower
recipes.remove(<gregtech:machine:515>);
recipes.addShaped(<gregtech:machine:515>, [
	[<ore:pipeLargeStainlessSteel>, <gregtech:meta_item_1:32612>, <ore:pipeLargeStainlessSteel>], 
	[<ore:circuitAdvanced>, <gregtech:machine:502>, <ore:circuitAdvanced>], 
	[<ore:pipeLargeStainlessSteel>, <gregtech:meta_item_1:32612>, <ore:pipeLargeStainlessSteel>]]);
	
//Long Rods
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:14302> * 2]).outputs([<gregtech:meta_item_2:19302>]).duration(200).EUt(30).buildAndRegister();
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:14303> * 2]).outputs([<gregtech:meta_item_2:19303>]).duration(200).EUt(30).buildAndRegister();
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:14972> * 2]).outputs([<gregtech:meta_item_2:19972>]).duration(200).EUt(30).buildAndRegister();
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:14299> * 2]).outputs([<gregtech:meta_item_2:19299>]).duration(200).EUt(30).buildAndRegister();

//Neutronium Round
recipes.remove(<gtadditions:ga_meta_item:2972>);	
lathe.findRecipe(8, [<gregtech:meta_item_1:9972>], [null]).remove();	
lathe.recipeBuilder().inputs([<avaritia:resource:3>]).outputs([<gtadditions:ga_meta_item:2972>]).duration(5000).EUt(8).buildAndRegister();

//HSS-E Round
lathe.findRecipe(8, [<gregtech:meta_item_1:9303>], [null]).remove();	
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:9303>]).outputs([<gtadditions:ga_meta_item:2303>]).duration(1480).EUt(8).buildAndRegister();

	
//Brewery
	
brewer.findRecipe(3, [<gregtech:meta_item_2:32570>], [<liquid:water> * 180]).remove();
brewer.findRecipe(3, [<gregtech:meta_item_2:32570>], [<liquid:water> * 180]).remove();
brewer.findRecipe(3, [<gregtech:meta_item_2:32570>], [<liquid:for.honey> * 180]).remove();		
brewer.findRecipe(3, [<gregtech:meta_item_2:32570>], [<liquid:juice> * 180]).remove();		
brewer.findRecipe(3, [<minecraft:sapling>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling:1>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling:2>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling:3>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling:4>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling:5>], [<liquid:water> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling>], [<liquid:for.honey> * 100]).remove();
brewer.findRecipe(3, [<minecraft:sapling>], [<liquid:juice> * 100]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:potato>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:reeds>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:beetroot>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:brown_mushroom>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:red_mushroom>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:carrot>], [<liquid:juice> * 20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:water> * 20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:for.honey> * 20]).remove();
brewer.findRecipe(3, [<minecraft:cactus>], [<liquid:juice> * 20]).remove();


brewer.recipeBuilder().inputs(<gregtech:meta_item_2:32570>).fluidInputs([<liquid:water> * 180]).fluidOutputs([<liquid:biomass> * 180]).duration(1440).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<ore:treeSapling>).fluidInputs([<liquid:water> * 100]).fluidOutputs([<liquid:biomass> * 100]).duration(800).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:potato>).fluidInputs([<liquid:water> * 80]).fluidOutputs([<liquid:biomass> * 80]).duration(640).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:beetroot>).fluidInputs([<liquid:water> * 60]).fluidOutputs([<liquid:biomass> * 60]).duration(480).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:carrot>).fluidInputs([<liquid:water> * 60]).fluidOutputs([<liquid:biomass> * 60]).duration(480).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:cactus>).fluidInputs([<liquid:water> * 60]).fluidOutputs([<liquid:biomass> * 60]).duration(480).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:reeds>).fluidInputs([<liquid:water> * 100]).fluidOutputs([<liquid:biomass> * 100]).duration(800).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:brown_mushroom>).fluidInputs([<liquid:water> * 60]).fluidOutputs([<liquid:biomass> * 60]).duration(480).EUt(3).buildAndRegister();
brewer.recipeBuilder().inputs(<minecraft:red_mushroom>).fluidInputs([<liquid:water> * 60]).fluidOutputs([<liquid:biomass> * 60]).duration(480).EUt(3).buildAndRegister();


//Fermenter
fermenter.recipeBuilder().fluidInputs([<liquid:canolaoil> * 100]).fluidOutputs([<liquid:refinedcanolaoil> * 100]).duration(400).EUt(2).buildAndRegister();

//Canola

reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:canolaoil> * 1000,<liquid:methanol> * 6000]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:canolaoil> * 1000,<liquid:bio.ethanol> * 6000]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:refinedcanolaoil> * 750,<liquid:methanol> * 4500]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:refinedcanolaoil> * 750,<liquid:bio.ethanol> * 4500]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000,]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:crystaloil> * 500,<liquid:methanol> * 3000]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:crystaloil> * 500,<liquid:bio.ethanol> * 3000]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:empoweredoil> * 250,<liquid:methanol> * 1500]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000]).duration(300).EUt(30).buildAndRegister();
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:373>).fluidInputs([<liquid:empoweredoil> * 250,<liquid:bio.ethanol> * 1500]).fluidOutputs([<liquid:glycerol> * 1000,<liquid:bio_diesel> * 6000]).duration(300).EUt(30).buildAndRegister();

reactor.recipeBuilder().inputs(<actuallyadditions:item_misc:23>).fluidInputs([<liquid:canolaoil> * 1000]).fluidOutputs([<liquid:crystaloil> * 1000]).duration(100).EUt(120).buildAndRegister();
reactor.recipeBuilder().inputs(<actuallyadditions:item_misc:24>).fluidInputs([<liquid:canolaoil> * 1000]).fluidOutputs([<liquid:empoweredoil> * 1000]).duration(100).EUt(500).buildAndRegister();


recipes.removeByRecipeName("actuallyadditions:recipes132");
recipes.addShaped(<actuallyadditions:block_canola_press>, [
	[<gregtech:meta_item_1:12184>, <actuallyadditions:block_crystal:5>, <gregtech:meta_item_1:12184>], 
	[<gregtech:meta_item_1:32641>, null, <gregtech:meta_item_1:32641>], 
	[<gregtech:meta_item_1:12184>, <actuallyadditions:item_misc:8>, <gregtech:meta_item_1:12184>]]);
<actuallyadditions:block_canola_press>.addTooltip(format.green("Turns Canola into Canola Oil. Requires RF."));  

//Deep Learner
recipes.remove(<deepmoblearning:deep_learner>);
recipes.addShaped(<deepmoblearning:deep_learner>, [[null,null,null],[<scannable:module_monster>,<scannable:scanner>,<scannable:module_monster>],[null,null,null]]);

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

//Moon Materials
macerator.findRecipe(8, [<minecraft:blaze_rod>], [null]).remove();
macerator.recipeBuilder().inputs([<advancedrocketry:moonturf>]).outputs([<contenttweaker:moondust>]).duration(200).EUt(400).buildAndRegister();
macerator.recipeBuilder().inputs([<advancedrocketry:moonturf_dark>]).outputs([<contenttweaker:moondust>]).duration(200).EUt(400).buildAndRegister();
macerator.recipeBuilder().inputs([<minecraft:blaze_rod>]).outputs([<minecraft:blaze_powder> * 4]).duration(200).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<thermalfoundation:material:2048>]).outputs([<thermalfoundation:material:2049> * 4]).duration(200).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<thermalfoundation:material:2050>]).outputs([<thermalfoundation:material:2051> * 4]).duration(200).EUt(16).buildAndRegister();
macerator.recipeBuilder().inputs([<thermalfoundation:material:2052>]).outputs([<thermalfoundation:material:2053> * 4]).duration(200).EUt(16).buildAndRegister();

centrifuge.findRecipe(20, [], [<liquid:hydrogen> * 160]).remove();
centrifuge.recipeBuilder().fluidInputs(<liquid:hydrogen> * 500).fluidOutputs([<liquid:deuterium> * 10]).duration(800).EUt(30).buildAndRegister();
centrifuge.recipeBuilder().inputs(<contenttweaker:moondust>).fluidOutputs([<liquid:deuterium> * 100]).duration(200).EUt(20).buildAndRegister();
centrifuge.recipeBuilder().inputs(<gregtech:meta_item_1:2328> * 3).outputs([<gregtech:meta_item_1:2159> * 2]).duration(40).EUt(20).buildAndRegister();


//Basic Transistor
recipes.addShaped(<metaitem:component.transistor> * 4, [
	[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19001>],
	[<gregtech:meta_item_1:19001>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19001>], 
	[<gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16062>, <gregtech:meta_item_2:16062>]]);
	
//Basic Capacitor
recipes.addShaped(<metaitem:component.capacitor> * 4, [
	[<gregtech:meta_item_1:19189>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19189>],
	[<gregtech:meta_item_1:19189>, <gregtech:meta_item_1:12152>, <gregtech:meta_item_1:19189>], 
	[<gregtech:meta_item_2:16062>, null, <gregtech:meta_item_2:16062>]]);

//Dew Of The Void
mods.enderio.Vat.removeRecipe(<liquid:ender_distillation> * 1000);
mods.enderio.Vat.addRecipe(<liquid:ender_distillation> * 1000, 0.5, <liquid:ender> * 4000, [<enderio:item_material:36>], [2], [<enderio:item_material:35>], [2]);

//Ghast for Flight Controller
mods.enderio.SoulBinder.addRecipe(<simplyjetpacks:metaitemmods:6>, <simplyjetpacks:metaitemmods:5>, ["ghast"], 75000, 300);

assembler.recipeBuilder().inputs([<simplyjetpacks:metaitemmods:18>]).fluidInputs([<liquid:glowstone> * 4320]).outputs([<simplyjetpacks:metaitemmods:19>]).duration(2000).EUt(3000).buildAndRegister();
assembler.recipeBuilder().inputs([<simplyjetpacks:metaitemmods:20>]).fluidInputs([<liquid:cryotheum> * 4320]).outputs([<simplyjetpacks:metaitemmods:21>]).duration(2000).EUt(8000).buildAndRegister();


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


//Engine Intake
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18072> * 4, <gregtech:fluid_pipe:2072> * 2, <gregtech:metal_casing:6>]).outputs([<gregtech:multiblock_casing>]).duration(400).EUt(16).buildAndRegister();


//Pumps Via Assembler

assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18071>, <gregtech:meta_item_1:17071>, <gregtech:meta_item_1:32600>, <gregtech:fluid_pipe:2095>, <gregtech:cable:5071>, <gregtech:meta_item_1:18152> * 2]).outputs([<gregtech:meta_item_1:32610>]).duration(200).EUt(16).buildAndRegister();	//lv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18095>, <gregtech:meta_item_1:17095>, <gregtech:meta_item_1:32601>, <gregtech:fluid_pipe:2184>, <gregtech:cable:5018>, <gregtech:meta_item_1:18152> * 2]).outputs([<gregtech:meta_item_1:32611>]).duration(200).EUt(16).buildAndRegister();	//mv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18184>, <gregtech:meta_item_1:17184>, <gregtech:meta_item_1:32602>, <gregtech:fluid_pipe:2183>, <gregtech:cable:5026>, <gregtech:meta_item_1:18152> * 2]).outputs([<gregtech:meta_item_1:32612>]).duration(200).EUt(16).buildAndRegister();	//hv pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18183>, <gregtech:meta_item_1:17183>, <gregtech:meta_item_1:32603>, <gregtech:fluid_pipe:2072>, <gregtech:cable:5001>, <gregtech:meta_item_1:18152> * 2]).outputs([<gregtech:meta_item_1:32613>]).duration(200).EUt(16).buildAndRegister();	//ev pump
assembler.recipeBuilder().inputs([<gregtech:meta_item_2:18235>, <gregtech:meta_item_1:17235>, <gregtech:meta_item_1:32604>, <gregtech:fluid_pipe:2235>, <gregtech:cable:5074>, <gregtech:meta_item_1:18152> * 2]).outputs([<gregtech:meta_item_1:32614>]).duration(200).EUt(16).buildAndRegister();	//iv pump

//Lapotron Crystals
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesslapis");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedlazurite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedlapis");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesssodalite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapedsodalite");
recipes.removeByRecipeName("gtadditions:lapotron_crystal_shapelesslazurite");


assembler.findRecipe(2, [<gregtech:meta_item_1:12197> * 5, <minecraft:trapped_chest>], [null]).remove();	
assembler.findRecipe(2, [<gregtech:meta_item_1:12033> * 5, <minecraft:trapped_chest>], [null]).remove();	
assembler.recipeBuilder().inputs([<gregtech:meta_item_1:12033> * 5, <minecraft:chest>]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5})).outputs([<minecraft:hopper>]).duration(100).EUt(16).buildAndRegister();
assembler.recipeBuilder().inputs([<gregtech:meta_item_1:12197> * 5, <minecraft:chest>]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 5})).outputs([<minecraft:hopper>]).duration(100).EUt(16).buildAndRegister();
recipes.addShapeless(<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}}), [<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:cow"})]);
furnace.remove(<gregtech:meta_item_1:9706>, <gregtech:meta_item_1:706>);
furnace.remove(<gregtech:meta_item_1:9707>, <gregtech:meta_item_1:707>);
furnace.remove(<gregtech:meta_item_1:9708>, <gregtech:meta_item_1:708>);
recipes.remove(<gregtech:meta_item_1:706>);
recipes.remove(<gregtech:meta_item_1:707>);
recipes.remove(<gregtech:meta_item_1:708>);
recipes.remove(<gregtech:meta_item_1:2706>);
recipes.remove(<gregtech:meta_item_1:2707>);
recipes.remove(<gregtech:meta_item_1:2708>);

//Small Gear Via Extruder

recipes.addShaped(<contenttweaker:smallgearextrudershape>, [
	[<gregtech:meta_item_1:32300>,null,null],
	[null,<gregtech:meta_tool:13>,null], 
	[null,null,null]]);
	
recipes.addShaped(<contenttweaker:creativeportabletankmold>, [
	[null,null,<gregtech:meta_tool:6>],
	[null,<gregtech:meta_item_1:32300>,null], 
	[null,null,null]]);

extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10184>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17184>]).duration(130).EUt(64).buildAndRegister();	//steel	small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10001>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17001>]).duration(130).EUt(64).buildAndRegister();	//aluminium	small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10183>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17183>]).duration(130).EUt(64).buildAndRegister();	//stainless steel small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10072>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17072>]).duration(130).EUt(64).buildAndRegister();	//titanium small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10235>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17235>]).duration(130).EUt(64).buildAndRegister();	//tungstensteel	small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10302>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17302>]).duration(130).EUt(64).buildAndRegister();	//hss-g	small gear
extruder.recipeBuilder().inputs([<gregtech:meta_item_1:10303>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17303>]).duration(130).EUt(64).buildAndRegister();	//hss-e	small gear
extruder.recipeBuilder().inputs([<avaritia:resource:4>]).notConsumable(<contenttweaker:smallgearextrudershape>).outputs([<gregtech:meta_item_2:17972>]).duration(130).EUt(64).buildAndRegister();			//neutronium small gear


recipes.addShaped(<enderio:item_material:41>, [
	[<enderio:item_alloy_ingot:7>,<minecraft:skull:2>,<enderio:item_alloy_ingot:7>],
	[<enderio:item_alloy_ingot:7>,<ore:circuitGood>,<enderio:item_alloy_ingot:7>], 
	[<gregtech:meta_item_2:32440>,<ore:blockRedAlloy>,<gregtech:meta_item_2:32440>]]);

//Rose Gold Plate
compressor.recipeBuilder().inputs([<gregtech:meta_item_1:10228>]).outputs([<gregtech:meta_item_1:12228>]).duration(100).EUt(10).buildAndRegister();


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

