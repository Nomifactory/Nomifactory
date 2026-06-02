import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.material.MaterialRegistry;
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Color;
import crafttweaker.item.IItemStack;

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
    Airtight Seal books for the low price of 900 nomicoins!
 */
recipes.addShaped("of_craft_airtight_seal",
    <minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 12 as short}]}),
    [[<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>],
     [<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>],
     [<contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>, <contenttweaker:omnicoin100>]]);

//Temporary recipe for red alloy with annealed copper in EBF, and adjusting the times of red alloy
//Red Alloy with annealed copper
val coppers = [<metaitem:ingotAnnealedCopper>, <metaitem:dustAnnealedCopper>, <metaitem:ingotCopper>, <metaitem:dustCopper>] as IItemStack[];

for copper in coppers {
    blast_furnace.recipeBuilder()
        .inputs(copper, <minecraft:redstone>)
        .outputs(<metaitem:ingotRedAlloy> * 2)
        .property("temperature", 1200)
        .duration(880).EUt(30).buildAndRegister();

    alloy.findRecipe(16, [<minecraft:redstone> * 4, copper], [null]).remove();
    alloy.recipeBuilder()
        .inputs(<minecraft:redstone> * 2, copper)
        .outputs(<metaitem:ingotRedAlloy>)
        .duration(100).EUt(16).buildAndRegister();
}

blast_furnace.findRecipe(120, [<minecraft:redstone>, <metaitem:ingotCopper>], [null]).remove();
blast_furnace.findRecipe(120, [<minecraft:redstone>, <metaitem:dustCopper>], [null]).remove();

/*
    === Add tooltips ===
*/
var tooltips as IItemStack[string] = {
    "item.contenttweaker.refinedcircuit.tooltip" : <contenttweaker:refinedcircuit>,
    "item.contenttweaker.combinationcircuit.tooltip" : <contenttweaker:combinationcircuit>,
    "item.contenttweaker.electronicprocessor.tooltip" : <contenttweaker:electronicprocessor>,
    "item.contenttweaker.refinedprocessor.tooltip" : <contenttweaker:refinedprocessor>,
    "item.contenttweaker.microcircuit.tooltip" : <contenttweaker:microcircuit>,
    "item.contenttweaker.electronicprocessorarray.tooltip" : <contenttweaker:electronicprocessorarray>,
    "item.contenttweaker.refinedprocessorarray.tooltip" : <contenttweaker:refinedprocessorarray>,
    "item.contenttweaker.refinedprocessormainframe.tooltip" : <contenttweaker:refinedprocessormainframe>,
    "item.contenttweaker.microprocessorarray.tooltip" : <contenttweaker:microprocessorarray>,
    "item.contenttweaker.microprocessormainframe.tooltip" : <contenttweaker:microprocessormainframe>,
    "item.contenttweaker.nanoprocessorarray.tooltip" : <contenttweaker:nanoprocessorarray>,
    "item.contenttweaker.quantumprocessor.tooltip" : <contenttweaker:quantumprocessor>,
    "item.contenttweaker.crystalcircuit.tooltip" : <contenttweaker:crystalcircuit>,
    "item.contenttweaker.nanoprocessormainframe.tooltip" : <contenttweaker:nanoprocessormainframe>,
    "item.contenttweaker.quantumprocessorarray.tooltip" : <contenttweaker:quantumprocessorarray>,
    "item.contenttweaker.quantumprocessormainframe.tooltip" : <contenttweaker:quantumprocessormainframe>,
    "item.contenttweaker.crystalprocessorarray.tooltip" : <contenttweaker:crystalprocessorarray>,
    "item.contenttweaker.crystalprocessormainframe.tooltip" : <contenttweaker:crystalprocessormainframe>,
    "item.actuallyadditions.item_misc_drill_core.tooltip1" : <actuallyadditions:item_misc:16>,
    "item.actuallyadditions.item_misc_drill_core.tooltip2" : <actuallyadditions:item_misc:16>,
    "item.appliedenergistics2.material.purified_certus_quartz_crystal.tooltip" : <appliedenergistics2:material:10>,
    "item.appliedenergistics2.material.purified_nether_quartz_crystal.tooltip" : <appliedenergistics2:material:11>,
    "item.appliedenergistics2.material.purified_fluix_crystal.tooltip" : <appliedenergistics2:material:12>,
    "item.darkutils.ender_tether.tooltip" : <darkutils:ender_tether>,
    "item.deepmoblearning.glitch_fragment.tooltip" : <deepmoblearning:glitch_fragment>,
    "item.appliedenergistics2.material.certus_quartz_crystal_charged.tooltip" : <appliedenergistics2:material:1>,
    "item.appliedenergistics2.p2p_fe.tooltip" : <appliedenergistics2:part:469>,
    "item.appliedenergistics2.p2p_fluid.tooltip" : <appliedenergistics2:part:463>,
    "item.appliedenergistics2.p2p_item.tooltip" : <appliedenergistics2:part:462>,
    "item.appliedenergistics2.p2p_light.tooltip" : <appliedenergistics2:part:467>,
    "item.appliedenergistics2.p2p_redstone.tooltip" : <appliedenergistics2:part:461>,
    "item.appliedenergistics2.p2p_gteu.tooltip" : <appliedenergistics2:part:470>,
    "tile.xtones.lamp_flat.tooltip" : <xtones:lamp_flat>,
    "tile.contenttweaker.excitationcoil.tooltip" : <contenttweaker:excitationcoil>,
    "tile.actuallyadditions.block_canola_press.tooltip" : <actuallyadditions:block_canola_press>,
    "item.contenttweaker.tierfourship.tooltip" : <contenttweaker:tierfourship>,
    "item.contenttweaker.tierfiveship.tooltip" : <contenttweaker:tierfiveship>,
    "item.contenttweaker.tiersixship.tooltip" : <contenttweaker:tiersixship>,
    "item.contenttweaker.tiersevenship.tooltip1" : <contenttweaker:tiersevenship>,
    "item.contenttweaker.tiersevenship.tooltip2" : <contenttweaker:tiersevenship>,
    "item.contenttweaker.tiereightship.tooltip1" : <contenttweaker:tiereightship>,
    "item.contenttweaker.tiereightship.tooltip2" : <contenttweaker:tiereightship>,
    "item.contenttweaker.tiernineship.tooltip" : <contenttweaker:tiernineship>,
    "item.contenttweaker.tiertenship.tooltip1" : <contenttweaker:tiertenship>,
    "item.contenttweaker.tiertenship.tooltip2" : <contenttweaker:tiertenship>,
    "tile.modularmachinery.blockcontroller.tooltip1" : <modularmachinery:blockcontroller>,
    "tile.modularmachinery.blockcontroller.tooltip2" : <modularmachinery:blockcontroller>,
    "tile.logisticspipes.crafting_table.tooltip" : <logisticspipes:crafting_table>,
	"tile.logisticspipes.crafting_table_fuzzy.tooltip" : <logisticspipes:crafting_table_fuzzy>,
	"item.logisticspipes.pipe_request_table.tooltip" : <logisticspipes:pipe_request_table>, 
    "item.contenttweaker.compressedoctadiccapacitor.tooltip" : <contenttweaker:compressedoctadiccapacitor>,
    "item.contenttweaker.doublecompressedoctadiccapacitor.tooltip" : <contenttweaker:doublecompressedoctadiccapacitor>,
    "item.contenttweaker.eternalcatalyst.tooltip" : <contenttweaker:eternalcatalyst>,
    "item.contenttweaker.ultimate_gem.tooltip" : <contenttweaker:ultimate_gem>,
    "item.contenttweaker.ultimate_generator.tooltip" : <contenttweaker:ultimate_generator>,
    "item.contenttweaker.tieroneship.tooltip" : <contenttweaker:tieroneship>,
    "item.contenttweaker.tiertwoship.tooltip" : <contenttweaker:tiertwoship>,
    "item.contenttweaker.tierthreeship.tooltip" : <contenttweaker:tierthreeship>,
    "item.contenttweaker.universalnavigator.tooltip" : <contenttweaker:universalnavigator>,
    "item.actuallyadditions.item_solidified_experience.tooltip1" : <actuallyadditions:item_solidified_experience>,
    "item.actuallyadditions.item_solidified_experience.tooltip2" : <actuallyadditions:item_solidified_experience>
};
// Add localizable tooltips to items in this dictionary
for tooltip, item in tooltips {
    item.addAdvancedTooltip(function(x) { return game.localize(tooltip); });
}