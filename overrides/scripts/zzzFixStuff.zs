import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;

print("--- Exa is fixing stuff! ---");

/*
    === GT Compressor Section ===
    Essentially, compactor recipes that aren't gems that for some reason are missing from compressors.
 */

// HSS-G Plate recipe for compressor
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:10302>).outputs(<gregtech:meta_item_1:12302>).duration(100).EUt(10).buildAndRegister();

// HSS-E Plate recipe for compressor
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:10303>).outputs(<gregtech:meta_item_1:12303>).duration(100).EUt(10).buildAndRegister();

// HSS-S Plate recipe for compressor
compressor.recipeBuilder().inputs(<gregtech:meta_item_1:10304>).outputs(<gregtech:meta_item_1:12304>).duration(100).EUt(10).buildAndRegister();


/*
    === GT Lathe Section ===
 */

// Titanium long rods (seems like an oversight that this is missing)
lathe.recipeBuilder().inputs([<gregtech:meta_item_1:14072> * 2]).outputs([<gregtech:meta_item_2:19072>]).duration(200).EUt(30).buildAndRegister();


/*
    === GT Assembler Section ===
 */

// Heavy Weighted Pressure Plate (used in XU upgrade bases)
assembler.recipeBuilder().inputs([<gregtech:meta_item_1:12033> * 2]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 2})).outputs([<minecraft:heavy_weighted_pressure_plate>]).duration(20).EUt(16).buildAndRegister();

// Cauldron (nice for XU drums)
assembler.recipeBuilder().inputs([<gregtech:meta_item_1:12033> * 7]).notConsumable(<gregtech:meta_item_1:32766>.withTag({Configuration: 7})).outputs([<minecraft:cauldron>]).duration(70).EUt(16).buildAndRegister();

// Assembly Line Casing
assembler.recipeBuilder().inputs([<gregtech:meta_item_1:12184> * 4, <gregtech:meta_item_1:32654> * 2, <gregtech:frame_tungsten_steel>]).outputs([<gtadditions:ga_multiblock_casing:1> * 2]).duration(100).EUt(8000).buildAndRegister();


/*
    === Advanced Rocketry ===
 */

// Oxygen vent recipe using EV motor and titanium rotor
recipes.remove(<advancedrocketry:oxygenvent>);
recipes.addShaped(<advancedrocketry:oxygenvent>, [
	[<minecraft:iron_bars>, <gregtech:meta_item_2:18072>, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, <gregtech:meta_item_1:32603>, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, <advancedrocketry:fueltank>, <minecraft:iron_bars>]]);

// CO2 Scrubber Recipe - same material replacements as above
recipes.remove(<advancedrocketry:oxygenscrubber>);
recipes.addShaped(<advancedrocketry:oxygenscrubber>, [
	[<minecraft:iron_bars>, <gregtech:meta_item_2:18072>, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, <gregtech:meta_item_1:32603>, <minecraft:iron_bars>],
	[<minecraft:iron_bars>, <gregtech:meta_item_1:10012>, <minecraft:iron_bars>]]);

// Carbon Collection Cartridge - steel plating since these last a while
recipes.remove(<advancedrocketry:carbonscrubbercartridge>);
recipes.addShaped(<advancedrocketry:carbonscrubbercartridge>, [
	[<contenttweaker:steelplating>, <minecraft:iron_bars>, <contenttweaker:steelplating>],
    [<contenttweaker:steelplating>, <minecraft:iron_bars>, <contenttweaker:steelplating>],
    [<contenttweaker:steelplating>, <minecraft:iron_bars>, <contenttweaker:steelplating>]]);


/*
    === Ore Dictionary Issues ===
 */

/*
    Add an ore dictionary entry for Hot Draconium Ingot so you can route them into a freezer
    that has an ore dictionary filter on it.
 */
<ore:ingotHotDraconium>.add(<contenttweaker:hotdraconiumingot>);


/*
    === Fixing weird GT <-> NC recipe interactions ===

    U-235 is not consistent with other recipes from GT. This corrects that.
 */

/*
    First, remove the crafting table recipe that turns U235 clumps into a GT ingot.
    This recipe overlaps the NuclearCraft tiny to full clump recipe.
    Form GT uranium with a solidifer.
 */
recipes.removeByRecipeName("gregtech:nugget_assembling_uranium235");

// remove the NC clumps => GT block recipe
recipes.removeByRecipeName("gregtech:block_compress_uranium235");

// replace with a consistent GT ingots => GT block recipe
recipes.addShapeless("gregtech_block_compress_uranium235",
    <gregtech:compressed_3:13>,
    [<gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>,
     <gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>,
     <gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>,<gregtech:meta_item_1:10076>]);

/*
    === TE to GT Dust shapeless conversions ===
    Thanks Grom PE for these fixes.
 */
// obsidian pulv => dust
recipes.addShapeless(<gregtech:meta_item_1:2138>, [<thermalfoundation:material:770>]);
// TE niter to GT saltpeter
recipes.addShapeless(<gregtech:meta_item_1:2156>, [<thermalfoundation:material:772>]);

/*
    === Avaritia Tweaks ===
 */

// Add solidifier block recipe
solidifier.recipeBuilder()
    .fluidInputs([<liquid:moltencrystalmatrix> * 1296])
    .notConsumable(<gregtech:meta_item_1:32308>)
    .outputs([<avaritia:block_resource:2>])
    .duration(200).EUt(30).buildAndRegister();

// decomposition for crystal matrix block
recipes.addShapeless("of_crystal_matrix_decomp", <avaritia:resource:1> * 9, [<avaritia:block_resource:2>]);

/*
    Anti-Footgun: remove recipe for max energy hatch
 */
recipes.removeByRecipeName("gregtech:energy_input_hatch_max");


/*
    Airtight Seal books for the low price of 900 omnicoins!
 */
recipes.addShaped("of_craft_airtight_seal",
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 12 as short}]}),
    [[<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>],
     [<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>],
     [<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>]]);

