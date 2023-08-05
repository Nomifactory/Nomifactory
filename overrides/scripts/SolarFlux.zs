#Author: Damien Reave

import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.oredict.IOreDictEntry;
import mods.gregtech.recipe.RecipeMap;
import mods.contenttweaker.MaterialPart;
import mods.contenttweaker.MaterialSystem;
import mods.contenttweaker.Material;

//////////////////////////////////////////////////////////////
/////////////	    Solar Panels  	    //////////////////
//////////////////////////////////////////////////////////////	
	
//Mirror
recipes.remove(<solarflux:mirror>);
recipes.addShaped(<solarflux:mirror>,[
	[<minecraft:glass_pane>, <minecraft:glass_pane>, <minecraft:glass_pane>],
	[<gregtech:meta_item_1:12062>,<gregtech:meta_item_1:12062>,<gregtech:meta_item_1:12062>],
	[null,null,null]]);

// Solar 1
recipes.remove(<solarflux:solar_panel_1>);
recipes.addShaped(<solarflux:solar_panel_1>,[
	[<solarflux:mirror>, <solarflux:mirror>, <solarflux:mirror>],
	[<gregtech:meta_item_2:16018>,<gregtech:meta_item_2:16018>,<gregtech:meta_item_2:16018>],
	[<minecraft:stone_slab>, <enderio:item_power_conduit>, <minecraft:stone_slab>]]);
	
//Solar 2	

recipes.remove(<solarflux:solar_panel_2>);
recipes.addShaped(<solarflux:solar_panel_2>,[
	[<solarflux:solar_panel_1>, <solarflux:photovoltaic_cell_1>, <solarflux:solar_panel_1>],
	[<gregtech:cable:3035>, <minecraft:redstone_block>, <gregtech:cable:3035>],
	[<gregtech:meta_item_1:12109>,<enderio:item_power_conduit:1>,<gregtech:meta_item_1:12109>]]);
	
//Cell 1	
recipes.remove(<solarflux:photovoltaic_cell_1>);
recipes.addShaped(<solarflux:photovoltaic_cell_1> * 6,[
	[<gregtech:meta_item_1:12216>,<gregtech:meta_item_1:12216>,<gregtech:meta_item_1:12216>],		
	[<solarflux:mirror>,<solarflux:mirror>,<solarflux:mirror>],
	[<moreplates:fluix_plate>,<moreplates:fluix_plate>,<moreplates:fluix_plate>]]);		
	
//Solar 3	
recipes.remove(<solarflux:solar_panel_3>);
recipes.addShaped(<solarflux:solar_panel_3>,[
	[<solarflux:solar_panel_2>, <solarflux:photovoltaic_cell_1>, <solarflux:solar_panel_2>],	
	[<gregtech:meta_item_1:12705>, <enderio:block_alloy:4>, <gregtech:meta_item_1:12705>],	
	[<gregtech:meta_item_2:26705>, <enderio:item_power_conduit:2>, <gregtech:meta_item_2:26705>]]);	

recipes.remove(<solarflux:solar_panel_4>);
recipes.remove(<solarflux:solar_panel_5>);
recipes.remove(<solarflux:solar_panel_6>);
recipes.remove(<solarflux:solar_panel_7>);
recipes.remove(<solarflux:solar_panel_8>);
recipes.remove(<solarflux:solar_panel_wyvern>);
recipes.remove(<solarflux:solar_panel_draconic>);
recipes.remove(<solarflux:photovoltaic_cell_6>);
recipes.remove(<solarflux:photovoltaic_cell_5>);
recipes.remove(<solarflux:photovoltaic_cell_4>);
recipes.remove(<solarflux:photovoltaic_cell_3>);
recipes.remove(<solarflux:photovoltaic_cell_2>);
mods.jei.JEI.removeAndHide(<solarflux:blank_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:efficiency_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:transfer_rate_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:capacity_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:block_charging_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:traversal_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:dispersive_upgrade>);
mods.jei.JEI.removeAndHide(<solarflux:furnace_upgrade>);

recipes.removeByRecipeName("forestry:silk_wisp_to_web");
recipes.removeByRecipeName("darkutils:soulsand");

alloy.recipeBuilder()
	.outputs([<advsolars:sunnarium>])
	.inputs([<contenttweaker:stabilizedplutonium>, <contenttweaker:stabilizedcurium>])
	.duration(2000).EUt(4000).buildAndRegister();

recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:zombie"}), [
	[null,<minecraft:skull:2>,null],
	[<minecraft:skull:2>,<enderio:item_soul_vial>,<minecraft:skull:2>],
	[null,<minecraft:skull:2>,null]]);

recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:ghast"}), [
	[null,<minecraft:ghast_tear>,null],
	[<minecraft:ghast_tear>,<enderio:item_soul_vial>,<minecraft:ghast_tear>],
	[null,<minecraft:ghast_tear>,null]]);
	
recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:villager"}), [
	[null,<minecraft:emerald>,null],
	[<minecraft:emerald>,<enderio:item_soul_vial>,<minecraft:emerald>],
	[null,<minecraft:emerald>,null]]);

recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:enderman"}), [
	[null,<enderio:block_enderman_skull>,null],
	[<enderio:block_enderman_skull>,<enderio:item_soul_vial>,<enderio:block_enderman_skull>],
	[null,<enderio:block_enderman_skull>,null]]);
	
recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:shulker"}), [
	[null,<minecraft:shulker_shell>,null],
	[<minecraft:shulker_shell>,<enderio:item_soul_vial>,<minecraft:shulker_shell>],
	[null,<minecraft:shulker_shell>,null]]);

recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:witch"}), [
	[<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:glowstone_dust>],
	[<minecraft:redstone>,<enderio:item_soul_vial>,<minecraft:redstone>],
	[<minecraft:glowstone_dust>,<minecraft:redstone>,<minecraft:glowstone_dust>]]);

recipes.addShaped(<enderio:item_soul_vial:1>.withTag({entityId: "minecraft:bat"}), [
	[null,<actuallyadditions:item_misc:15>,null],
	[<actuallyadditions:item_misc:15>,<enderio:item_soul_vial>,<actuallyadditions:item_misc:15>],
	[null,<actuallyadditions:item_misc:15>,null]]);
	
recipes.addShaped(<actuallyadditions:item_misc:15>, [
	[null,null,null],
	[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>],
	[<minecraft:leather>,<minecraft:leather>,<minecraft:leather>]]);
	
recipes.addShaped(<solarflux:solar_panel_8> * 4, [
	[<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>,<solarflux:photovoltaic_cell_6>],
	[<solarflux:solar_panel_7>,<thermalfoundation:storage_alloy:7>,<solarflux:solar_panel_7>],
	[<gregtech:meta_item_1:12207>,<enderio:item_endergy_conduit>,<gregtech:meta_item_1:12207>]]);

recipes.addShaped(<solarflux:photovoltaic_cell_6> * 6, [
	[<advsolars:sunnarium_enriched_plate>,<advsolars:sunnarium_enriched_plate>,<advsolars:sunnarium_enriched_plate>],
	[<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>],
	[<advsolars:sunnarium_enriched_plate>,<advsolars:sunnarium_enriched_plate>,<advsolars:sunnarium_enriched_plate>]]);	
	
recipes.addShaped(<solarflux:solar_panel_7> * 4, [
	[<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>,<solarflux:photovoltaic_cell_5>],
	[<solarflux:solar_panel_6>,<thermalfoundation:storage_alloy:5>,<solarflux:solar_panel_6>],
	[<gregtech:meta_item_1:12047>,<enderio:item_endergy_conduit:4>,<gregtech:meta_item_1:12047>]]);

recipes.addShaped(<solarflux:photovoltaic_cell_5> * 6, [
	[<advsolars:sunnarium_plate>,<advsolars:sunnarium_plate>,<advsolars:sunnarium_plate>],
	[<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>,<solarflux:photovoltaic_cell_4>],
	[<advsolars:sunnarium_plate>,<advsolars:sunnarium_plate>,<advsolars:sunnarium_plate>]]);

recipes.addShaped(<solarflux:photovoltaic_cell_4> * 6, [
[<gregtech:meta_item_1:15092>,<gregtech:meta_item_1:15092>,<gregtech:meta_item_1:15092>],
[<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>,<solarflux:photovoltaic_cell_3>],
[<ore:meshPulsating>,<ore:meshPulsating>,<ore:meshPulsating>]]);

recipes.addShaped(<solarflux:photovoltaic_cell_3> * 6, [
[<gregtech:meta_item_1:15218>,<gregtech:meta_item_1:15218>,<gregtech:meta_item_1:15218>],
[<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>,<solarflux:photovoltaic_cell_2>],
[<gregtech:meta_item_1:12087>,<gregtech:meta_item_1:12087>,<gregtech:meta_item_1:12087>]]);

recipes.addShaped(<solarflux:photovoltaic_cell_2> * 6, [
[<enderio:item_material:3>,<enderio:item_material:3>,<enderio:item_material:3>],
[<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>,<solarflux:photovoltaic_cell_1>],
[<gregtech:meta_item_1:12091>,<gregtech:meta_item_1:12091>,<gregtech:meta_item_1:12091>]]);

recipes.removeByRecipeName("enderio:tweak_wood_hopper");

recipes.addShaped(<solarflux:solar_panel_6> * 4, [
	[<solarflux:solar_panel_5>, <solarflux:photovoltaic_cell_4>, <solarflux:solar_panel_5>],	
	[<thermalfoundation:material:357>, <advsolars:sunnarium_enriched>, <thermalfoundation:material:357>],	
	[<thermalfoundation:material:357>,<enderio:item_endergy_conduit:4>,<thermalfoundation:material:357>]]);	

recipes.addShaped(<solarflux:solar_panel_5> * 4, [
	[<solarflux:solar_panel_4>, <solarflux:photovoltaic_cell_3>, <solarflux:solar_panel_4>],	
	[<thermalfoundation:material:358>, <advsolars:sunnarium>, <thermalfoundation:material:358>],	
	[<thermalfoundation:material:358>,<enderio:item_endergy_conduit:6>,<thermalfoundation:material:358>]]);	

recipes.addShaped(<solarflux:solar_panel_4> * 2, [
	[<solarflux:solar_panel_3>, <solarflux:photovoltaic_cell_2>, <solarflux:solar_panel_3>],	
	[<ore:ingotMicroversium>, <enderio:block_alloy:8>, <ore:ingotMicroversium>],	
	[<ore:ingotMicroversium>,<enderio:item_endergy_conduit:1>,<ore:ingotMicroversium>]]);	
