import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;

// A Temporary file, used to create refund recipes for Simple Fluid Tanks before its eventual removal


val sft as IMod = loadedMods["simplefluidtanks"];

if(!isNull(sft)) {
	val sftItems as IItemStack[] = sft.items;

	for item in sftItems {
		item.addTooltip(format.red("This item will be removed in the next update"));
	}

}

recipes.remove(<simplefluidtanks:tankitem>);
recipes.addShapeless(<metaitem:plateIron>, [<simplefluidtanks:tankitem>]);

recipes.remove(<simplefluidtanks:valveitem>);
recipes.addShapeless(<gregtech:fluid_pipe:2095>, [<simplefluidtanks:valveitem>]);

recipes.remove(<simplefluidtanks:wrench>);
recipes.addShapeless(<minecraft:iron_ingot> * 4, [<simplefluidtanks:wrench>]);