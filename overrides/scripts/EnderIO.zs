import mods.jei.JEI.removeAndHide as rh;

// Construction Alloy
recipes.remove(<enderio:block_alloy:9>);
rh(<enderio:block_alloy:9>);

recipes.remove(<enderio:item_alloy_ingot:9>);
rh(<enderio:item_alloy_ingot:9>);

recipes.remove(<enderio:item_alloy_nugget:9>);
rh(<enderio:item_alloy_nugget:9>);

rh(<enderio:item_material:46>); // Clippings and Trimmings
rh(<enderio:item_material:47>); // Twigs and Prunings
rh(<enderio:item_material:75>); // Infinity Goop
rh(<enderio:item_material:76>); // Clay-Coated Glowstone

// Blank Dark Steel Upgrade
alloy.recipeBuilder()
    .inputs([<gregtech:meta_item_1:12704>, <forestry:crafting_material>])
    .outputs([<enderio:item_dark_steel_upgrade>])
    .duration(100)
    .EUt(20)
    .buildAndRegister();

// Glowstone Nano-Particles
macerator.recipeBuilder()
    .inputs([<minecraft:glowstone_dust>])
    .outputs([<enderio:block_holy_fog>])
    .duration(100)
    .EUt(20)
    .buildAndRegister();
