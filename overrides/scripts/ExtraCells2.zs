#modloaded extracells

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

//JEI Cleanup
val removal as IItemStack[] = [

    //Deprecated Items

    //Other stuff I can't be bothered to list off
    <extracells:part.base:0>,
    <extracells:part.base:1>,
    <extracells:part.base:2>,
    <extracells:part.base:3>,
    <extracells:part.base:4>,
    <extracells:part.base:5>,
    <extracells:part.base:6>,
    <extracells:part.base:9>,
    <extracells:ecbaseblock>,

    //Fluid Storage Cells
    <extracells:storage.fluid:0>,
    <extracells:storage.fluid:1>,
    <extracells:storage.fluid:2>,
    <extracells:storage.fluid:3>,

    //Fluid Storage Components
    <extracells:storage.component:4>,
    <extracells:storage.component:5>,
    <extracells:storage.component:6>,
    <extracells:storage.component:7>,

    //End of deprecated items
    
    <extracells:pattern.fluid:*>, //Fluid Patterns
    <extracells:storage.fluid.portable>, //Portable Fluid Storage
    <extracells:vibrantchamberfluid>, //Fluid Vibration Chamber
    <extracells:certustank>, //Certus Quartz Tank
    <extracells:storage.casing:1>, //Fluid Storage Housing
    <extracells:terminal.fluid.wireless>, //Wireless Fluid Terminal (because it may cause issues)
    <extracells:terminal.universal.wireless>, //Wireless Universal Terminal (for the same reason as fluid)
    <extracells:fluidcrafter>, //Fluid Crafter
    <extracells:fluidfiller>, //Fluid Filler
    <extracells:hardmedrive>, //Blast resistant ME Drive
    <extracells:storage.physical:4> //ME Block Container
];

for item in removal {
    mods.jei.JEI.removeAndHide(item);
}

//Recipes

//Advanced Storage Housing
recipes.remove(<extracells:storage.casing:0>); 
recipes.addShaped(<extracells:storage.casing:0>, [
    [<ore:wireFineGold>, <ore:plateStainlessSteel>, <ore:wireFineGold>],
    [<ore:plateStainlessSteel>, <appliedenergistics2:material:39>, <ore:plateStainlessSteel>],
    [<ore:wireFineGold>, <ore:plateStainlessSteel>, <ore:wireFineGold>]
]);

//Fixing Fluid Storage Cell Recipes
recipes.remove(<extracells:storage.fluid:4>);
recipes.remove(<extracells:storage.fluid:5>);
recipes.remove(<extracells:storage.fluid:6>);

recipes.addShapeless(<extracells:storage.fluid:4>, [<extracells:storage.casing:0>, <extracells:storage.component:8>]);
recipes.addShapeless(<extracells:storage.fluid:5>, [<extracells:storage.casing:0>, <extracells:storage.component:9>]);
recipes.addShapeless(<extracells:storage.fluid:6>, [<extracells:storage.casing:0>, <extracells:storage.component:10>]);

//Storage Cell "1 step" removal
recipes.removeByRecipeName("extracells:storagecells/item/owncasing/256k");
recipes.removeByRecipeName('extracells:storagecells/item/owncasing/1024k');
recipes.removeByRecipeName('extracells:storagecells/item/owncasing/4096k');
recipes.removeByRecipeName('extracells:storagecells/item/owncasing/16384k');

//Storage Components
//256K
recipes.remove(<extracells:storage.component:0>);
recipes.addShaped(<extracells:storage.component:0>, [
    [<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:22>],
    [<appliedenergistics2:material:38>, <ore:circuitElite>, <appliedenergistics2:material:38>],
    [<appliedenergistics2:material:22>, <appliedenergistics2:material:38>, <appliedenergistics2:material:22>]
]);

//1024K
recipes.remove(<extracells:storage.component:1>);
recipes.addShaped(<extracells:storage.component:1>, [
    [<appliedenergistics2:material:23>, <appliedenergistics2:material:24>, <appliedenergistics2:material:23>],
    [<extracells:storage.component:0>, <ore:circuitMaster>, <extracells:storage.component:0>],
    [<appliedenergistics2:material:23>, <extracells:storage.component:0>, <appliedenergistics2:material:23>]
]);

//4096K
recipes.remove(<extracells:storage.component:2>);
recipes.addShaped(<extracells:storage.component:2>, [
    [<appliedenergistics2:material:24>, <appliedenergistics2:material:22>, <appliedenergistics2:material:24>],
    [<extracells:storage.component:1>, <ore:circuitMaster>, <extracells:storage.component:1>],
    [<appliedenergistics2:material:24>, <extracells:storage.component:1>, <appliedenergistics2:material:24>]
]);

//16384K
recipes.remove(<extracells:storage.component:3>);
recipes.addShaped(<extracells:storage.component:3>, [
    [<appliedenergistics2:material:22>, <appliedenergistics2:material:23>, <appliedenergistics2:material:22>],
    [<extracells:storage.component:2>, <ore:circuitMaster>, <extracells:storage.component:2>],
    [<appliedenergistics2:material:22>, <extracells:storage.component:2>, <appliedenergistics2:material:22>]
]);