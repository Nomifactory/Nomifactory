import mods.gregtech.recipe.RecipeMap;

recipes.remove(<draconicevolution:draconic_core>);
recipes.addShaped(<draconicevolution:draconic_core>, [
	[<draconicevolution:draconium_ingot>, <ore:ingotTungstenCarbide>, <draconicevolution:draconium_ingot>],
	[<ore:ingotTungstenCarbide>, <actuallyadditions:block_crystal_empowered:1>, <ore:ingotTungstenCarbide>], 
	[<draconicevolution:draconium_ingot>, <ore:ingotTungstenCarbide>, <draconicevolution:draconium_ingot>]]);

var star = <minecraft:nether_star>;
var dblock = <draconicevolution:draconium_block>;
var dragcore = <draconicevolution:draconic_core>;
var wyvcore = <draconicevolution:wyvern_core>;

//Wyvern Energy Core
recipes.remove(<draconicevolution:wyvern_energy_core>);		
recipes.addShaped(<draconicevolution:wyvern_energy_core>, [
	[dragcore, <actuallyadditions:block_crystal_empowered>, dragcore], 
	[<actuallyadditions:block_crystal_empowered>, <actuallyadditions:item_battery_quintuple>, <actuallyadditions:block_crystal_empowered>], 
	[dragcore, <actuallyadditions:block_crystal_empowered>, dragcore]]);	

//Wyvern Bow	
recipes.remove(<draconicevolution:wyvern_bow>);	
recipes.addShaped(<draconicevolution:wyvern_bow>, [
	[star, wyvcore, star],
	[dragcore, <armorplus:ender_dragon_bow>, dragcore], 
	[star, <draconicevolution:wyvern_energy_core>, star]]);	
	
//Wyvern Axe	
recipes.remove(<draconicevolution:wyvern_axe>);	
recipes.addShaped(<draconicevolution:wyvern_axe>, [
	[star, wyvcore, star],
	[dragcore, <armorplus:ender_dragon_battle_axe>, dragcore], 
	[star, <draconicevolution:wyvern_energy_core>, star]]);	

//Wyvern Pickaxe
recipes.remove(<draconicevolution:wyvern_pick>);	
recipes.addShaped(<draconicevolution:wyvern_pick>, [
	[star, wyvcore, star],
	[dragcore, <redstonearsenal:tool.pickaxe_flux>, dragcore], 
	[star, <draconicevolution:wyvern_energy_core>, star]]);		
	
//Wyvern Shovel	
recipes.remove(<draconicevolution:wyvern_shovel>);	
recipes.addShaped(<draconicevolution:wyvern_shovel>, [
	[star, wyvcore, star],
	[dragcore, <redstonearsenal:tool.shovel_flux>, dragcore], 
	[star, <draconicevolution:wyvern_energy_core>, star]]);		
	
//Wyvern Sword	
recipes.remove(<draconicevolution:wyvern_sword>);	
recipes.addShaped(<draconicevolution:wyvern_sword>, [
	[star, wyvcore, star],
	[dragcore, <armorplus:ender_dragon_sword>, dragcore], 
	[star, <draconicevolution:wyvern_energy_core>, star]]);		

//Fusion Injector
recipes.remove(<draconicevolution:crafting_injector>);	
recipes.addShaped(<draconicevolution:crafting_injector>, [
	[<enderio:item_material:16>, <gregtech:meta_item_1:12022>, <enderio:item_material:16>], 
	[dragcore, <actuallyadditions:block_crystal_empowered:5>, dragcore], 
	[<enderio:item_material:16>, <gregtech:multiblock_casing:3>, <enderio:item_material:16>]]);
	
//Reactor Stabalizer Frame
recipes.remove(<draconicevolution:reactor_part>);	
recipes.addShaped(<draconicevolution:reactor_part>, [
	[<nuclearcraft:part:3>,<nuclearcraft:part:3>,<nuclearcraft:part:3>], 
	[<draconicevolution:awakened_core:*>, <moreplates:awakened_draconium_gear>, null], 
	[<nuclearcraft:part:3>,<nuclearcraft:part:3>,<nuclearcraft:part:3>]]);
	

recipes.remove(<draconicevolution:reactor_part:1>);
recipes.addShaped(<draconicevolution:reactor_part:1>, [
	[null, null, null], 
	[<moreplates:awakened_draconium_plate>,<moreplates:awakened_draconium_plate>,<moreplates:awakened_draconium_plate>],
	[<moreplates:draconium_gear>, <moreplates:draconium_plate>,<moreplates:draconium_plate>]]);

recipes.remove(<draconicevolution:reactor_part:2>);
recipes.addShaped(<draconicevolution:reactor_part:2>, [
	[null, null, null], 
	[<moreplates:crystal_matrix_plate>,<moreplates:crystal_matrix_plate>,<moreplates:crystal_matrix_plate>], 
	[<moreplates:draconium_gear>, <moreplates:draconium_plate>,<moreplates:draconium_plate>]]);

recipes.remove(<draconicevolution:reactor_part:3>);
recipes.addShaped(<draconicevolution:reactor_part:3>, [
	[null, <draconicevolution:reactor_part:1>, <draconicevolution:reactor_part:2>], 
	[<moreplates:awakened_draconium_gear>, <moreplates:awakened_draconium_plate>,<moreplates:awakened_draconium_plate>], 
	[null, <draconicevolution:reactor_part:1>, <draconicevolution:reactor_part:2>]]);
	
recipes.remove(<draconicevolution:reactor_part:4>);
recipes.addShaped(<draconicevolution:reactor_part:4>, [
	[<advsolars:sunnarium_plate>, <moreplates:crystal_matrix_plate>, <advsolars:sunnarium_plate>], 
	[<moreplates:crystal_matrix_plate>, <draconicevolution:awakened_core:*>, <moreplates:crystal_matrix_plate>], 
	[<advsolars:sunnarium_plate>, <moreplates:crystal_matrix_plate>, <advsolars:sunnarium_plate>]]);
	
recipes.remove(<draconicevolution:particle_generator>);
recipes.addShaped(<draconicevolution:particle_generator>, [
	[<actuallyadditions:block_crystal_empowered>, <minecraft:blaze_rod>, <actuallyadditions:block_crystal_empowered>], 
	[<minecraft:blaze_rod>, <draconicevolution:draconic_core:*>, <minecraft:blaze_rod>], 
	[<actuallyadditions:block_crystal_empowered>, <minecraft:blaze_rod>, <actuallyadditions:block_crystal_empowered>]]);
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
