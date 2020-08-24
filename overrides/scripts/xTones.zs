import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.mods.IMod;


/*
   === XTones recipe changes ===
*/
recipes.remove(<xtones:lamp_flat>);
recipes.addShaped(<xtones:lamp_flat>, [
	[null, null, null],
	[<gregtech:meta_item_1:10184>, <minecraft:glowstone>, <gregtech:meta_item_1:10184>],
	[<minecraft:stone_slab>, <minecraft:stone_slab>, <minecraft:stone_slab>]]);
<xtones:lamp_flat>.addTooltip(format.yellow("Requires a redstone signal to light."));


val xtones as IMod = loadedMods["xtones"];
if(!isNull(xtones)) {
    val xtonesItems as IItemStack[] = xtones.items;

    for item in xtonesItems {

    	if(item.displayName has "Lamp" | item.displayName has "Tile") {
    		//Skip the lamp and base block
    	}
    	else {
    		var oreName as string = "block" ~ item.displayName;

    		var oreDictEntry as IOreDictEntry = oreDict[oreName];

    		oreDictEntry.add(item);
    	}
    }
 
}