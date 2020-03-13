#priority -9999

import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

// I feel genuinely sorry for Forestry.
// - Neeve01

//Forestry Removals
var toRemove = [
	<forestry:phosphor>
	, <forestry:ash>
	, <forestry:wood_pulp>
	, <forestry:mulch>
	, <forestry:beeswax>
	, <forestry:refractory_wax>
	, <forestry:fertilizer_bio>
	, <forestry:soldering_iron>
	, <forestry:ash_brick>
	, <forestry:ash_stairs>
	, <forestry:wrench>
	, <forestry:sturdy_machine>
	, <forestry:hardened_machine>
	, <forestry:impregnated_casing>
	, <forestry:flexible_casing>
	, <forestry:crafting_material:2>
	, <forestry:crafting_material:3>
	, <forestry:crafting_material:4>
	, <forestry:crafting_material:5>
	, <forestry:crafting_material:6>
	, <forestry:crafting_material:7>
	, <forestry:peat>
	, <forestry:bituminous_peat>
	, <forestry:chipsets>.withTag({T: 0 as short})
	, <forestry:chipsets:1>.withTag({T: 1 as short})
	, <forestry:chipsets:2>.withTag({T: 2 as short})
	, <forestry:chipsets:3>.withTag({T: 3 as short})
	, <forestry:carton>
	, <forestry:oak_stick>
	, <forestry:broken_bronze_pickaxe>
	, <forestry:broken_bronze_shovel>
	, <forestry:bronze_pickaxe>
	, <forestry:bronze_shovel>
	, <forestry:kit_shovel>
	, <forestry:kit_pickaxe>
	, <forestry:mouldy_wheat>
	, <forestry:decaying_wheat>
	, <forestry:iodine_capsule>
	, <forestry:fruits>
	, <forestry:fruits:1>
	, <forestry:fruits:2>
	, <forestry:fruits:3>
	, <forestry:fruits:4>
	, <forestry:fruits:5>
	, <forestry:fruits:6>
	, <forestry:analyzer>
	, <forestry:escritoire>
	, <forestry:bog_earth>
	, <forestry:humus>
	, <forestry:resources>
	, <forestry:resources:1>
	, <forestry:resources:2>
	, <forestry:resource_storage:1>
	, <forestry:resource_storage:2>
	, <forestry:resource_storage:3>
	, <forestry:habitat_former>
	, <forestry:habitat_screen>
	, <forestry:portable_alyzer>
	, <forestry:can>
	, <forestry:refractory>
	, <forestry:capsule>
] as IItemStack[];

for item in toRemove {
	mods.jei.JEI.removeAndHide(item);
	var ores = item.ores;
	if (!isNull(ores)) {
		for entry in ores {
			entry.remove(item);
		}
	}

	recipes.remove(item);
}

for can in [<forestry:can:1>, <forestry:capsule:1>, <forestry:refractory:1>] as IItemStack[] {
	for liquid in game.liquids {
		mods.jei.JEI.hide(can.withTag({Fluid: {FluidName: liquid.name, Amount: 1000}}));
	}
}
