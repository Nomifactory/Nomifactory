import crafttweaker.item.IItemDefinition;


val fusedQuartz		= [
    <enderio:block_fused_quartz>			.definition,
    <enderio:block_enlightened_fused_quartz>		.definition,
    <enderio:block_dark_fused_quartz>			.definition,
    <enderio:block_holy_fused_quartz>			.definition,
    <enderio:block_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_holy_dark_fused_quartz>		.definition,
    <enderio:block_unholy_fused_quartz>			.definition,
    <enderio:block_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_unholy_dark_fused_quartz>		.definition,
    <enderio:block_pasture_fused_quartz>		.definition,
    <enderio:block_pasture_enlightened_fused_quartz>	.definition,
    <enderio:block_pasture_dark_fused_quartz>		.definition,
    <enderio:block_not_holy_fused_quartz>		.definition,
    <enderio:block_not_holy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_holy_dark_fused_quartz>		.definition,
    <enderio:block_not_unholy_fused_quartz>		.definition,
    <enderio:block_not_unholy_enlightened_fused_quartz>	.definition,
    <enderio:block_not_unholy_dark_fused_quartz>	.definition,
    <enderio:block_not_pasture_fused_quartz>		.definition,
    <enderio:block_not_pasture_enlightened_fused_quartz>.definition,
    <enderio:block_not_pasture_dark_fused_quartz>	.definition
] as IItemDefinition[];

val fusedGlass		= [
    <enderio:block_fused_glass>				.definition,
    <enderio:block_enlightened_fused_glass>		.definition,
    <enderio:block_dark_fused_glass>			.definition,
    <enderio:block_holy_fused_glass>			.definition,
    <enderio:block_holy_enlightened_fused_glass>	.definition,
    <enderio:block_holy_dark_fused_glass>		.definition,
    <enderio:block_unholy_fused_glass>			.definition,
    <enderio:block_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_unholy_dark_fused_glass>		.definition,
    <enderio:block_pasture_fused_glass>			.definition,
    <enderio:block_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_pasture_dark_fused_glass>		.definition,
    <enderio:block_not_holy_fused_glass>		.definition,
    <enderio:block_not_holy_enlightened_fused_glass>	.definition,
    <enderio:block_not_holy_dark_fused_glass>		.definition,
    <enderio:block_not_unholy_fused_glass>		.definition,
    <enderio:block_not_unholy_enlightened_fused_glass>	.definition,
    <enderio:block_not_unholy_dark_fused_glass>		.definition,
    <enderio:block_not_pasture_fused_glass>		.definition,
    <enderio:block_not_pasture_enlightened_fused_glass>	.definition,
    <enderio:block_not_pasture_dark_fused_glass>	.definition
] as IItemDefinition[];

val gtFrame		= [
    <gregtech:frame_hssg>				.definition,
    <gregtech:frame_bronze>				.definition,
    <gregtech:frame_darmstadtium>			.definition,
    <gregtech:frame_aluminium>				.definition,
    <gregtech:frame_tungsten_steel>			.definition,
    <gregtech:frame_invar>				.definition,
    <gregtech:frame_wood>				.definition,
    <gregtech:frame_stainless_steel>			.definition,
    <gregtech:frame_steel>				.definition,
    <gregtech:frame_blue_steel>				.definition,
    <gregtech:frame_hsse>				.definition,
    <gregtech:frame_neutronium>				.definition,
    <gregtech:frame_iron>				.definition,
    <gregtech:frame_titanium>				.definition,
    <gregtech:frame_tritanium>				.definition
] as IItemDefinition[];


val allArrays		= [
    fusedQuartz,
    fusedGlass,
    gtFrame
] as IItemDefinition[][];

val colorDesc		= [
    "Most colors for this item are hidden to reduce clutter.",
    "They can still be crafted.",
    "See the coloring recipe for the pattern."
] as string[];


for array in allArrays {
    for item in array {
	mods.jei.JEI.addDescription(item.makeStack(0), colorDesc);

	for color in 1 .. 16 {
	    mods.jei.JEI.hide(item.makeStack(color));
	}
    }
}
