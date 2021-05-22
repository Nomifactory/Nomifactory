#priority -9998

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


/* Hide all of AE2's facades (can still be crafted, just hiding from JEI) */
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {

            if(item.displayName has "Block of Omnium") {

                item.addTooltip(format.darkAqua("Facades can be crafted from most blocks, but are hidden from JEI to reduce clutter"));
            }
            else {
               mods.jei.JEI.hide(item); 
            }
        }
    }
}

//Hiding the GTCE omnium block facade version
mods.jei.JEI.hide(<appliedenergistics2:facade>.withTag({damage: 5, item: "gregtech:meta_block_compressed_44"}));

//Adding a tooltop to the GTCE facade
<gregtech:meta_item_2:32509>.withTag({Facade: {id: "minecraft:stone", Count: 1 as byte, Damage: 0 as short}}).addTooltip(format.darkAqua("GTCE Cable facades can be made from most non-tile-entites, and craft into different amounts based on the metal used."));


/* Hide filled ceramics clay buckets from JEI */
for liquid in game.liquids {
    mods.jei.JEI.hide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: liquid.name, Amount: 1000}}));
}

//Hide the two special case buckets
mods.jei.JEI.hide(<ceramics:clay_bucket:1>);
mods.jei.JEI.hide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: "betterquesting.placeholder", Amount: 1000}}));

// Remove Jackhammer Crafting Recipes
recipes.removeShaped(<gregtech:meta_tool:32>, [ 
                    [<gregtech:meta_item_1:17072>, <*>, <*>],
                    [<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:21072> ,<gregtech:meta_item_1:13072>],
                    [<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:13072>, <gregtech:meta_item_1:32537>]]);

recipes.removeShaped(<gregtech:meta_tool:32>, [ 
                    [<gregtech:meta_item_1:17072>, <*>, <*>],
                    [<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:21072> ,<gregtech:meta_item_1:13072>],
                    [<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:13072>, <gregtech:meta_item_1:32538>]]);

recipes.removeShaped(<gregtech:meta_tool:32>, [ 
                    [<gregtech:meta_item_1:17072>, <*>, <*>],
                    [<gregtech:meta_item_1:13072>, <gregtech:meta_item_2:21072> ,<gregtech:meta_item_1:13072>],
                    [<gregtech:meta_item_1:32642>, <gregtech:meta_item_1:13072>, <gregtech:meta_item_1:32539>]]);

recipes.removeShaped(<gregtech:meta_tool:32>, [
                    [<ore:gtceWrenches>, <*>, <ore:gtceScrewdrivers>],
                    [null, <gregtech:meta_item_2:32576>, null]]);


<gregtech:meta_item_2:32494>.removeTooltip("Quantum computing comes to life!");
<gregtech:meta_item_2:32447>.removeTooltip("A Good Board");
<gregtech:meta_item_2:32492>.removeTooltip("Smaller than ever");
<gregtech:meta_item_2:32487>.removeTooltip("A Basic Circuit");
//<gregtech:meta_item_1:32724>.removeTooltip("Quantum Eye");
<gregtech:meta_item_2:32498>.removeTooltip("You have a feeling like it's watching you");
<gregtech:meta_item_2:32499>.removeTooltip("Can run Minecraft");
//<gregtech:meta_item_1:32725>.removeTooltip("Quantum Star");
