import mods.gregtech.recipe.RecipeMap;

//Removed From Furnace Smelting
furnace.remove(<ore:ingotIridium>);
furnace.remove(<ore:ingotTungsten>);
furnace.remove(<ore:ingotBlackSteel>);
furnace.remove(<ore:ingotUranium>);
furnace.remove(<ore:ingotAluminium>);
furnace.remove(<thermalfoundation:material:132>);
furnace.remove(<thermalfoundation:ore:4>);
furnace.remove(<ore:gemQuartzBlack>);
furnace.remove(<ore:ingotDraconium>);
furnace.remove(<ore:ingotMithril>);
furnace.remove(<appliedenergistics2:material:5>);
furnace.remove(<thermalfoundation:material:167>, <gregtech:meta_item_1:2708>);
furnace.remove(<thermalfoundation:material:166>, <gregtech:meta_item_1:2706>);
furnace.remove(<thermalfoundation:material:165>, <gregtech:meta_item_1:2707>);

//  Tier 0										Steel, Silicon
//	Tier 1	[1000 temp]		120		Copper		Black Steel, Annealed Copper
//	Tier 2	[1500 temp]		120		Copper		Aluminium, Kanthal, Energetic Alloy, Neodymium
//	Tier 3	[1700 temp]		120		Copper		Stainless Steel, Nickel Zinc Ferrite, Ilmenite, Silicon Boule, Vibrant Alloy, Red Steel, Nickel Zinc Ferrite, Palladium, Microversium
//	Tier 4	[2100 temp]		480		Kanthal		Titanium, Nichrome, Yttrium
//	Tier 5	[2700 temp]		480		Kanthal		Tungstencarbide, Tungstensteel, Glowstone Doped Boule
//	Tier 6	[3000 temp]		480		Nichrome	Tungsten, Niobium
//	Tier 7	[3600 temp]		480		Nichrome	Vanadium, 
//	Tier 8	[4000 temp]		2000	TunSteel	Signalum, Vanadium-Gallium
//	Tier 9	[4500 temp]		2000	TunSteel	Lumium, HSSG, Iridium, Niobium-Titanium
//	Tier 10	[5000 temp]		8000	HSSG		HSSE, Osmium, Crystal Chips
//	Tier 11	[5400 temp]		8000	HSSG		Naquadah, Naquadah Doped Boule
//	Tier 12	[6000 temp]		8000	Naq			Osmiridium, 
//	Tier 13	[6400 temp]		8000	Naq			Enderium, 
//	Tier 14	[6800 temp]		32000	Naq			Draconium
//	Tier 15	[7200 temp]		32000	Naq			Naquadah Alloy, 
//	Tier 16	[8000 temp]		32000	NaqAlloy	HSSS, 
//	Tier 17	[8600 temp]		32000	NaqAlloy	Dark Soularium,  
//	Tier 18	[8800 temp]		130000	NaqAlloy	
//	Tier 19	[9000 temp]		250000	SuperCon	 
//	Tier 20	[9700 temp]		500000	Fusion		Neutronium Nugget, 

//Steel [tier 0]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2184>], [null]).remove();	
blast_furnace.findRecipe(120, [<minecraft:iron_ingot>], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:10140>], [<liquid:oxygen> * 1000]).remove();	
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:10197>], [<liquid:oxygen> * 1000]).remove();	

//Silcon [tier 0]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2061>, <gregtech:meta_item_1:32766>.withTag({Configuration: 0})], [null]).remove();	
furnace.addRecipe(<gregtech:meta_item_1:10061>, <gregtech:meta_item_1:2061>, 0.0);

//Black Steel [tier 1]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2231>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2231>]).outputs([<gregtech:meta_item_1:10231>]).property("temperature", 1000).duration(200).EUt(120).buildAndRegister();

//Annealed Copper [tier 1]
//Remove Annealed Copper recipes from Copper dust and ingot
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2018>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:oxygen> * 1000]).remove();
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:10018>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:oxygen> * 1000]).remove();
//Adjusting the Temperature and duration of Annealed Copper
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:10018>])
	.fluidInputs([<liquid:oxygen> * 1000])
	.circuit(1)
	.outputs([<gregtech:meta_item_1:10087>])
	.property("temperature", 1000)
	.duration(200).EUt(120).buildAndRegister();

//HSLA - unused
//blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10184>]).fluidInputs([<liquid:oxygen> * 1000]).outputs([<nuclearcraft:alloy:15>]).property("temperature", 1000).duration(200).EUt(120).buildAndRegister();


//Kanthal [tier 2]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2127>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2127>]).outputs([<gregtech:meta_item_1:11127>]).property("temperature", 1500).duration(200).EUt(120).buildAndRegister();

//Aluminium [tier 2]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2001>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2001>]).outputs([<gregtech:meta_item_1:10001>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Neodymium [tier 2]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2042>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2042>]).outputs([<gregtech:meta_item_1:10042>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Energetic Alloy [tier 2]
blast_furnace.recipeBuilder().inputs([<minecraft:gold_ingot>,<nuclearcraft:compound:2>]).outputs([<enderio:item_alloy_ingot:1>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Energetic Silver [tier 2]
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10062>,<nuclearcraft:compound:2>]).outputs([<enderio:item_alloy_endergy_ingot:5>]).property("temperature", 1500).duration(400).EUt(120).buildAndRegister();

//Vibrant Alloy [tier 3]
blast_furnace.recipeBuilder().inputs([<enderio:item_alloy_ingot:1>,<minecraft:ender_pearl>]).outputs([<enderio:item_alloy_ingot:2>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Silicon Boule [tier 3]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2061> * 32, <gregtech:meta_item_1:25>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2061> * 32, <gregtech:meta_item_1:25>]).outputs([<gregtech:meta_item_2:32439>]).property("temperature", 1700).duration(6000).EUt(120).buildAndRegister();

//Red Steel [tier 3]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2232>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2232>]).outputs([<gregtech:meta_item_1:10232>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Nickel Zinc Ferrite [tier 3]
//Furnace Recipe from NZF dust
furnace.addRecipe(<gregtech:meta_item_1:10424>, <gregtech:meta_item_1:2424>, 0.0);
//Remove the recipe from NZF dust
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2424>], [null]).remove();

//Stainless Steel [tier 3]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2183>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2183>]).outputs([<gregtech:meta_item_1:10183>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Ilmenite [tier 3]
blast_furnace.findRecipe(500, [<gregtech:meta_item_1:2121>,<gregtech:meta_item_1:2012>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2121>,<gregtech:meta_item_1:2012>]).outputs([<gregtech:meta_item_1:9197> * 4, <gregtech:meta_item_1:122> * 5]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Palladium [tier 3]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2049>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2049>]).outputs([<gregtech:meta_item_1:10049>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Chrome [tier 3]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2016>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2016>]).outputs([<gregtech:meta_item_1:10016>]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Microversium [tier 3]
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2184>,<nuclearcraft:compound:2>]).fluidInputs([<liquid:deuterium>*50]).outputs([<ore:ingotMicroversium>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10184>,<nuclearcraft:compound:2>]).fluidInputs([<liquid:deuterium>*50]).outputs([<ore:ingotMicroversium>.firstItem]).property("temperature", 1700).duration(600).EUt(120).buildAndRegister();

//Nichrome [tier 4]
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:10044> * 4,<gregtech:meta_item_1:10016>], [null]).remove();
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2133>], [null]).remove();	
furnace.addRecipe(<gregtech:meta_item_1:10133>, <gregtech:meta_item_1:2133>, 0.0);
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10044> * 4,<gregtech:meta_item_1:10016>]).outputs([<gregtech:meta_item_1:11133> * 5]).property("temperature", 2100).duration(800).EUt(480).buildAndRegister();

//Titanium [tier 4]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2072>], [null]).remove();


//Yttrium [tier 4]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2078>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2078>]).outputs([<gregtech:meta_item_1:11078>]).property("temperature", 2100).duration(800).EUt(480).buildAndRegister();

//Tungstencarbide [tier 5]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2300>], [null]).remove();	
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:2012>], [null]).remove();
blast_furnace.recipeBuilder()
	.inputs([<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:2012>])
	.outputs([<gregtech:meta_item_1:11300> * 2])
	.property("temperature", 2700)
	.duration(500).EUt(480).buildAndRegister();	
furnace.addRecipe(<gregtech:meta_item_1:10300>, <gregtech:meta_item_1:2300>, 0.0);

//Tungstensteel [tier 5]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2235>], [null]).remove();	
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:10184>], [null]).remove();
furnace.addRecipe(<gregtech:meta_item_1:10235>, <gregtech:meta_item_1:2235>, 0.0);
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10074>,<gregtech:meta_item_1:10184>]).outputs([<gregtech:meta_item_1:11235> * 2]).property("temperature", 2700).duration(1000).EUt(480).buildAndRegister();	

//Glowstone Doped Silicon Boule [tier 5]
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:2061> * 64, <minecraft:glowstone_dust> * 8, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:nitrogen> * 8000]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2061> * 64, <minecraft:glowstone_dust> * 8]).fluidInputs([<liquid:argon> * 8000]).outputs([<gregtech:meta_item_2:32437>]).property("temperature", 2700).duration(3000).EUt(480).buildAndRegister();

//Tungsten [tier 6]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2074>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2074>]).outputs([<gregtech:meta_item_1:11074>]).property("temperature", 3000).duration(600).EUt(480).buildAndRegister();	

//Niobium [tier 6]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2045>], [null]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:2045>]).outputs([<gregtech:meta_item_1:11045>]).property("temperature", 3000).duration(600).EUt(480).buildAndRegister();	

//Signalum [tier 8]
recipes.remove(<thermalfoundation:material:101>);
recipes.addShapeless(<thermalfoundation:material:101> * 4, [
	<gregtech:meta_item_1:2087>,<gregtech:meta_item_1:2087>,<gregtech:meta_item_1:2087>,
	<gregtech:meta_item_1:2087>,<gregtech:meta_item_1:2713>,<gregtech:meta_item_1:2713>,
	<gregtech:meta_item_1:2237>,<gregtech:meta_item_1:2237>,<thermalfoundation:material:893>]);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:101>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:165>]).property("temperature", 4000).duration(12800).EUt(120).buildAndRegister();

//Vanadium-Gallium [tier 8]
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:10077> * 3, <gregtech:meta_item_1:10025>], [null]).remove();
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2195>], [null]).remove();
furnace.addRecipe(<gregtech:meta_item_1:10195>, <gregtech:meta_item_1:2195>, 0.0);		
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10077> * 3, <gregtech:meta_item_1:10025>]).outputs([<gregtech:meta_item_1:11195> * 4]).property("temperature", 4000).duration(10000).EUt(120).buildAndRegister();
	
//Lumium [tier 9]
recipes.remove(<thermalfoundation:material:102>);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:102>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:166>]).property("temperature", 4500).duration(14400).EUt(120).buildAndRegister();
recipes.addShapeless(<thermalfoundation:material:102> * 4, [
	<gregtech:meta_item_1:2189>, <gregtech:meta_item_1:2189>, <gregtech:meta_item_1:2189>, 
	<gregtech:meta_item_1:2189>, <gregtech:meta_item_1:2227>, <gregtech:meta_item_1:2227>,
	<extendedcrafting:material:7>,<extendedcrafting:material:7>,<thermalfoundation:material:894>]);

//Niobium-Titanium [tier 9]
blast_furnace.findRecipe(480, [<gregtech:meta_item_1:10045>,<gregtech:meta_item_1:10072>], [null]).remove();
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2135>], [null]).remove();	
furnace.addRecipe(<gregtech:meta_item_1:10135>, <gregtech:meta_item_1:2135>, 0.0);
blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10045>,<gregtech:meta_item_1:10072>]).outputs([<gregtech:meta_item_1:11135> * 2]).property("temperature", 4500).duration(7000).EUt(120).buildAndRegister();	

//Osmium [Tier 10]

blast_furnace.findRecipe(120, [<metaitem:dustOsmium>], [null]).remove();

blast_furnace.recipeBuilder()
	.inputs(<metaitem:dustOsmium>)
	.outputs(<metaitem:ingotHotOsmium>)
	.property("temperature", 3306)
	.duration(400).EUt(120).buildAndRegister();

//Naquadah [tier 11]
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2307>], [null]).remove();	
blast_furnace.recipeBuilder()
	.inputs(<gregtech:meta_item_1:2307>)
	.outputs(<gregtech:meta_item_1:11307>)
	.property("temperature", 5400)
	.EUt(1920).duration(200).buildAndRegister();

//Naquadah Doped Boule [tier 11]
blast_furnace.findRecipe(1920, [<gregtech:meta_block_compressed_3:13> * 9, <gregtech:meta_item_1:10307>, <gregtech:meta_item_1:32766>.withTag({Configuration: 1})], [<liquid:argon> * 8000]).remove();	
blast_furnace.recipeBuilder().inputs([<gregtech:meta_block_compressed_3:13> * 9, <gregtech:meta_item_1:10307>]).fluidInputs([<liquid:argon> * 16000]).outputs([<gregtech:meta_item_2:32438>]).property("temperature", 5400).duration(1440).EUt(8000).buildAndRegister();
	
//Osiridium [tier 12]		DISABLED IN FAVOR OF VANILLA RECIPE
//blast_furnace.findRecipe(1920, [<gregtech:meta_item_1:10032> * 3, <gregtech:meta_item_1:10047>], [<liquid:helium>*1000]).remove();
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2207>], [null]).remove();		
furnace.addRecipe(<gregtech:meta_item_1:10207>, <gregtech:meta_item_1:2207>, 0.0);
//blast_furnace.recipeBuilder().inputs([<gregtech:meta_item_1:10032> * 3, <gregtech:meta_item_1:10047>]).fluidInputs([<liquid:helium>*1000]).outputs([<gregtech:meta_item_1:11207> * 4]).property("temperature", 6000).duration(4400).EUt(8000).buildAndRegister();	
	
//Enderium [tier 13]
recipes.remove(<thermalfoundation:material:103>);
recipes.addShapeless(<thermalfoundation:material:103> * 4, [
	<gregtech:meta_item_1:2035>,<gregtech:meta_item_1:2035>,<gregtech:meta_item_1:2035>,
	<gregtech:meta_item_1:2035>,<gregtech:meta_item_1:2051>,<gregtech:meta_item_1:2051>,
	<gregtech:meta_item_1:2233>,<ore:dustOsmium>,<thermalfoundation:material:895>]);
blast_furnace.recipeBuilder().inputs([<thermalfoundation:material:103>]).fluidInputs([<liquid:mana>*250]).outputs([<thermalfoundation:material:167>]).property("temperature", 6400).duration(20800).EUt(120).buildAndRegister();

//Draconium [tier 14]
blast_furnace.recipeBuilder().inputs([<draconicevolution:draconium_dust>]).fluidInputs([<liquid:nitro_fuel>*2000]).outputs(<contenttweaker:hotdraconiumingot>).property("temperature", 6800).duration(10000).EUt(120).buildAndRegister();
blast_furnace.recipeBuilder().inputs([<armorplus:material:3> * 4]).fluidInputs([<liquid:nitro_fuel>*8000]).outputs([<contenttweaker:hotdraconiumingot> * 2]).property("temperature", 6800).duration(20000).EUt(120).buildAndRegister();

//Naquadah Alloy [tier 15]		DISABLED IN FAVOR OF VANILLA RECIPE
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2308>], [null]).remove();		
furnace.addRecipe(<gregtech:meta_item_1:10308>, <gregtech:meta_item_1:2308>, 0.0);

//Dark Soularium [tier 18]
blast_furnace.recipeBuilder().inputs([<enderio:item_alloy_ingot:6>,<enderio:item_alloy_ingot:7>]).fluidInputs([<liquid:tritium>*1000]).outputs([<simplyjetpacks:metaitemmods:3>]).property("temperature", 8600).duration(1200).EUt(32000).buildAndRegister();

//Fluxed Electrum
blast_furnace.recipeBuilder().inputs([<redstonearsenal:material>]).outputs([<redstonearsenal:material:32>]).property("temperature", 1000).duration(300).EUt(120).buildAndRegister();



//EnderIO Alloys
alloy.recipeBuilder().inputs([<minecraft:iron_ingot>,<minecraft:redstone>]).outputs([<enderio:item_alloy_ingot:4>]).duration(150).EUt(16).buildAndRegister();
alloy.recipeBuilder().inputs([<minecraft:iron_ingot>,<ore:dustPulsating>]).outputs([<enderio:item_alloy_ingot:5>]).duration(150).EUt(16).buildAndRegister();


//Removed
blast_furnace.findRecipe(120, [<gregtech:meta_item_1:2310>], [null]).remove();		//Naquadriah
furnace.addRecipe(<gregtech:meta_item_1:10310>, <gregtech:meta_item_1:2310>, 0.0);

// Fluxed Electrum Blend (Mixer)
mixer.recipeBuilder()
    .outputs([<redstonearsenal:material:0> * 9])
    .inputs([<metaitem:dustElectrum> * 6, <thermalfoundation:material:102>, <thermalfoundation:material:101>, <thermalfoundation:material:1028>])
    .duration(400).EUt(30).buildAndRegister();

// Lumium Blend (Mixer)
mixer.recipeBuilder()
    .outputs([<thermalfoundation:material:102> * 4])
    .inputs([<metaitem:dustTinAlloy> * 4, <metaitem:dustSterlingSilver> * 2, <extendedcrafting:material:7> * 2, <thermalfoundation:material:894>])
    .duration(400).EUt(30).buildAndRegister();

// Signalum Blend (Mixer)
mixer.recipeBuilder()
    .outputs([<thermalfoundation:material:101> * 4])
    .inputs([<metaitem:dustAnnealedCopper> * 4, <metaitem:dustArdite> * 2, <metaitem:dustRedAlloy> * 2, <thermalfoundation:material:893>])
    .duration(400).EUt(30).buildAndRegister();

// Enderium Blend (Mixer)
mixer.recipeBuilder()
    .outputs([<thermalfoundation:material:103> * 4])
    .fluidInputs([<liquid:lead> * 576])
    .inputs([<metaitem:dustPlatinum> * 2, <metaitem:dustBlueSteel>, <metaitem:dustOsmium>, <thermalfoundation:material:895>])
    .duration(400).EUt(30).buildAndRegister();

// Mixer recipes for HSS-G/E/S
mixer.recipeBuilder()
    .outputs([<metaitem:dustHssg> * 9])
    .inputs([<metaitem:dustTungstenSteel> * 5, <metaitem:dustChrome>, <metaitem:dustMolybdenum> * 2, <metaitem:dustVanadium>])
    .duration(900).EUt(8).buildAndRegister();

mixer.recipeBuilder()
    .outputs([<metaitem:dustHsse> * 9])
    .inputs([<metaitem:dustHssg> * 6, <metaitem:dustCobalt>, <metaitem:dustManganese>, <metaitem:dustSilicon>])
    .duration(900).EUt(8).buildAndRegister();

mixer.recipeBuilder()
    .outputs([<metaitem:dustHsss> * 9])
    .inputs([<metaitem:dustHssg> * 6, <metaitem:dustIridium> * 2, <metaitem:dustOsmium>])
    .duration(900).EUt(8).buildAndRegister();

