import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;

/*
	This file adds recipes for cutting exquisite and flawless gems.
	Additionally adjusts amounts of dusts from pulverizing both.
	
	1 Exquisite Gem -> 2 Flawless Gems
	1 Flawless  Gem -> 4 Regular Gems

	Thus 1 Exquisite Gem = 8 Regular Gems.

	1 Exquisite Gem -> 8 Gem Dust
	1 Flawless  Gem -> 4 Gem Dust

	gemVariants is a 2D array of ore dictionary entries, it defines gem variants as follows:
	[
		[ exquisite_gem, flawless_gem, regular_gem, regular_gem_dust ]
	]

	cuttingFluidTypes defines cutting fluids.
	cuttingFluidDurations defines recipe durations for said fluids.
	cuttingFluidAmounts defines amounts of said fluids per recipe.
	cuttingRecipeEUt defines... guess what.
*/

val gemVariants as IOreDictEntry[][] = [
	[
		<ore:gemExquisiteEmerald> 
		, <ore:gemFlawlessEmerald> 
		, <ore:gemEmerald>
		, <ore:dustEmerald>
	]
	, [
		<ore:gemExquisiteDiamond> 
		, <ore:gemFlawlessDiamond> 
		, <ore:gemDiamond>
		, <ore:dustDiamond>
	]
	, [
		<ore:gemExquisiteRuby>
		, <ore:gemFlawlessRuby>
		, <ore:gemRuby>
		, <ore:dustRuby>
	]
];

val cuttingFluidTypes as ILiquidStack[] = [
	<liquid:water>
	, <liquid:distilled_water>
	, <liquid:lubricant>
];

val cuttingFluidDurations as int[] = [
	120, 78, 30
];

val cuttingFluidAmounts as int[] = [
	90, 67, 22
];

val cuttingRecipeEUt = 300;

for variant in gemVariants {
	for fluidId, _ in cuttingFluidTypes {
		val cuttingFluid = cuttingFluidTypes[fluidId];
		val cuttingFluidAmount = cuttingFluidAmounts[fluidId];
		val recipeDuration = cuttingFluidDurations[fluidId];

		val gemExquisite = variant[0];
		val gemFlawless = variant[1];
		val gemRegular = variant[2];
		val gemDust = variant[3];

		// Cut 1 Exquisite into 2 Flawless
		saw.recipeBuilder()
			.inputs(gemExquisite)
			.outputs(gemFlawless.firstItem * 2)
			.fluidInputs(cuttingFluid * cuttingFluidAmount)
			.duration(recipeDuration)
			.EUt(cuttingRecipeEUt)
			.buildAndRegister();

		// Cut 1 Flawless into 4 Regular
		saw.recipeBuilder()
			.inputs(gemFlawless)
			.outputs(gemRegular.firstItem * 4)
			.fluidInputs(cuttingFluid * cuttingFluidAmount)
			.duration(recipeDuration)
			.EUt(cuttingRecipeEUt)
			.buildAndRegister();

		// Remove existing Macerator recipes
		for entry in [gemExquisite, gemFlawless] as IOreDictEntry[] {
			val recipe = macerator.findRecipe(8, [entry.firstItem], [null]);

			if (!isNull(recipe)) {
				recipe.remove();
			}
		}
		
		// Macerate 1 Exquisite into 8 Dust
		macerator.recipeBuilder()
			.inputs(gemExquisite)
			.outputs([gemDust.firstItem * 8])
			.duration(120)
			.EUt(8)
			.buildAndRegister();

		// Macerate 1 Flawless into 4 Dust
		macerator.recipeBuilder()
			.inputs(gemFlawless)
			.outputs([gemDust.firstItem * 4])
			.duration(60)
			.EUt(8)
			.buildAndRegister();

	}
}

//Remove more Flawless gem recipes for other gem variants

val extraGems as IOreDictEntry[] = 
	[
		<ore:gemFlawlessGreenSapphire>,
		<ore:gemExquisiteGreenSapphire>,
		<ore:gemFlawlessTopaz>,
		<ore:gemExquisiteTopaz>,		
		<ore:gemFlawlessAlmandine>,
		<ore:gemExquisiteAlmandine>,
		<ore:gemFlawlessVinteum>,
		<ore:gemExquisiteVinteum>,
		<ore:gemFlawlessGarnetYellow>,
		<ore:gemExquisiteGarnetYellow>,
		<ore:gemFlawlessOlivine>,
		<ore:gemExquisiteOlivine>,						
		<ore:gemFlawlessOpal>,
		<ore:gemExquisiteOpal>,
		<ore:gemFlawlessRutile>,
		<ore:gemExquisiteRutile>,
		<ore:gemFlawlessSapphire>,
		<ore:gemExquisiteSapphire>,
		<ore:gemFlawlessGarnetRed>,
		<ore:gemExquisiteGarnetRed>,				
		<ore:gemFlawlessGlass>,
		<ore:gemExquisiteGlass>,
		<ore:gemChippedGlass>,
		<ore:gemFlawedGlass>,
		<ore:gemFlawlessJasper>,
		<ore:gemExquisiteJasper>,
		<ore:gemFlawlessTanzanite>,
		<ore:gemExquisiteTanzanite>,
		<ore:gemFlawlessAmethyst>,
		<ore:gemExquisiteAmethyst>						
	];


// Remove leftover Macerator recipes
for uselessEntry in extraGems as IOreDictEntry[] {
	val recipe = macerator.findRecipe(8, [uselessEntry.firstItem], [null]);

	if (!isNull(recipe)) {
		recipe.remove();
	}

}

//Removing Rod recipes
//Topaz
recipes.removeShaped(<gregtech:meta_item_1:14190>, [[<*>, <*>],[<gregtech:meta_item_2:24190>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14190>*2, [[<*>, <*>],[<gregtech:meta_item_2:25190>, null]]);
//Almandine
recipes.removeShaped(<gregtech:meta_item_1:14085>, [[<*>, <*>],[<gregtech:meta_item_2:24085>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14085>*2,[[<*>, <*>],[<gregtech:meta_item_2:25085>, null]]);
//Vinteum
recipes.removeShaped(<gregtech:meta_item_1:14247>, [[<*>, <*>],[<gregtech:meta_item_2:24247>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14247>*2, [[<*>, <*>],[<gregtech:meta_item_2:25247>, null]]);
//Yellow Garnet
recipes.removeShaped(<gregtech:meta_item_1:14244>, [[<*>, <*>],[<gregtech:meta_item_2:24244>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14244>*2, [[<*>, <*>],[<gregtech:meta_item_2:25244>, null]]);
//Olivine
recipes.removeShaped(<gregtech:meta_item_1:14212>, [[<*>, <*>],[<gregtech:meta_item_2:24212>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14212>*2, [[<*>, <*>],[<gregtech:meta_item_2:25212>, null]]);
//Opal
recipes.removeShaped(<gregtech:meta_item_1:14213>, [[<*>, <*>],[<gregtech:meta_item_2:24213>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14213>*2, [[<*>, <*>],[<gregtech:meta_item_2:25213>, null]]);
//Rutile
recipes.removeShaped(<gregtech:meta_item_1:14122>, [[<*>, <*>],[<gregtech:meta_item_2:24122>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14122>*2, [[<*>, <*>],[<gregtech:meta_item_2:25122>, null]]);
//Sapphire
recipes.removeShaped(<gregtech:meta_item_1:14157>, [[<*>, <*>],[<gregtech:meta_item_2:24157>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14157>*2, [[<*>, <*>],[<gregtech:meta_item_2:25157>, null]]);
//Red Garnet
recipes.removeShaped(<gregtech:meta_item_1:14243>, [[<*>, <*>],[<gregtech:meta_item_2:24243>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14243>*2, [[<*>, <*>],[<gregtech:meta_item_2:25243>, null]]);
//Jasper
recipes.removeShaped(<gregtech:meta_item_1:14206>, [[<*>, <*>],[<gregtech:meta_item_2:24206>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14206>*2, [[<*>, <*>],[<gregtech:meta_item_2:25206>, null]]);
//Tanzanite
recipes.removeShaped(<gregtech:meta_item_1:14187>, [[<*>, <*>],[<gregtech:meta_item_2:24187>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14187>*2, [[<*>, <*>],[<gregtech:meta_item_2:25187>, null]]);
//Amethyst
recipes.removeShaped(<gregtech:meta_item_1:14214>, [[<*>, <*>],[<gregtech:meta_item_2:24214>, null]]);
recipes.removeShaped(<gregtech:meta_item_1:14214>*2,[[<*>, <*>],[<gregtech:meta_item_2:25214>, null]]);



//Impossible Blast Furnace Recipe
blast_furnace.findRecipe(480, [<ore:gemExquisiteOlivine>.firstItem, <gregtech:meta_item_1:12212>*10], [<liquid:helium>*5000]).remove();

//Fluid Extracting Glass Crystals
fluid_extractor.findRecipe(32, [<gregtech:meta_item_2:23209>],[null]).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_2:22209>],[null]).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_2:25209>],[null]).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_2:24209>],[null]).remove();
