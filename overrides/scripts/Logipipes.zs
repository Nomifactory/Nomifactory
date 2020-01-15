# v1.02
# removed Greggic Additions items
#
# v1.01
# fixed wrong copper wire in Raw Basic Chip

import crafttweaker.item.IItemStack as IItemStack;
import mods.jei.JEI.removeAndHide as rh;
print("--- loading Logipipes.zs ---");

	#Remove and Hide items that has no use
	rh(<logisticspipes:power_provider_mj>);
	rh(<logisticspipes:upgrade_logic_controller>);
	rh(<logisticspipes:hud_glasses>);
	rh(<logisticspipes:parts>);
	rh(<logisticspipes:parts:1>);
	rh(<logisticspipes:parts:2>);
	rh(<logisticspipes:parts:3>);
	rh(<logisticspipes:broken_item>);
	rh(<logisticspipes:upgrade_power_supplier_mj>);
	rh(<logisticspipes:upgrade_cc_remote_control>);
	rh(<logisticspipes:power_provider_rf>);
	rh(<logisticspipes:power_provider_eu>);
	rh(<logisticspipes:upgrade_power_transportation>);
	rh(<logisticspipes:upgrade_power_supplier_rf>);
	rh(<logisticspipes:upgrade_power_supplier_eu_lv>);
	rh(<logisticspipes:upgrade_power_supplier_eu_mv>);
	rh(<logisticspipes:upgrade_power_supplier_eu_hv>);
	rh(<logisticspipes:upgrade_power_supplier_eu_ev>);
	rh(<logisticspipes:frame>);


	#Hide only
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:1>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:2>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:3>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:4>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:5>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:6>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:7>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:8>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:9>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:10>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:11>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:12>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:13>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:14>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:15>);
	#mods.jei.JEI.hide(<logisticspipes:remote_orderer:16>);

	#Tooltips
	<logisticspipes:crafting_table>.addTooltip("Used for autocrafting with Logistics");
	<logisticspipes:crafting_table_fuzzy>.addTooltip("Used for oredict autocrafting with Logistics");
	<logisticspipes:pipe_request_table>.addTooltip("This is your Logistics Crafting Terminal");

	#FPGA Chip
	recipes.remove(<logisticspipes:chip_fpga_raw>);
	recipes.addShapedMirrored("Raw FPGA", 
	<logisticspipes:chip_fpga_raw> *16, [
	[<ore:dustSilicon>, <ore:foilGold>, <ore:dustSilicon>], 
	[<ore:wireGtSingleRedAlloy>, <ore:gemDiamond>, <ore:wireGtSingleRedAlloy>], 
	[<ore:dustSilicon>, <ore:foilGold>, <ore:dustSilicon>]]);

	#Basic Chip
	recipes.remove(<logisticspipes:chip_basic_raw>);
	recipes.addShapedMirrored("Raw Basic Chip", 
	<logisticspipes:chip_basic_raw> *16, [
	[<ore:wireGtSingleCopper>, <ore:dustRedstone>, <ore:wireGtSingleCopper>], 
	[<ore:dustRedstone>, <ore:dustSilicon>, <ore:dustRedstone>], 
	[<ore:wireGtSingleCopper>, <ore:dustRedstone>, <ore:wireGtSingleCopper>]]);
	
	#Advanced Chip
	recipes.remove(<logisticspipes:chip_advanced_raw>);
	recipes.addShapedMirrored("Raw Advanced Chip", 
	<logisticspipes:chip_advanced_raw>, [
	[<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>], 
	[<ore:nuggetDiamond>, <logisticspipes:chip_basic_raw>, <ore:nuggetDiamond>], 
	[<ore:nuggetDiamond>, <ore:nuggetDiamond>, <ore:nuggetDiamond>]]);

	# Tweaks
	recipes.remove(<logisticspipes:power_junction>);
	recipes.addShapedMirrored("Logistics Power Junction", 
	<logisticspipes:power_junction>, [
	[null, <ore:circuitBasic>, null], 
	[<ore:plateRedAlloy>, <gregtech:machine:501>, <ore:plateRedAlloy>], 
	[<ore:cableGtSingleTin>, <ore:plateRedAlloy>, <ore:cableGtSingleTin>]]);

	recipes.remove(<logisticspipes:program_compiler>);
	recipes.addShapedMirrored("Logistics Program Compiler", 
	<logisticspipes:program_compiler>, [
	[null, <logisticspipes:disk>, null], 
	[<ore:gemLapis>, <gregtech:machine:501>, <ore:gemLapis>], 
	[<ore:cableGtSingleTin>, <ore:plateRedAlloy>, <ore:cableGtSingleTin>]]);

	recipes.remove(<logisticspipes:crafting_table>);
	recipes.addShapedMirrored("Logistics Crafting Table", 
	<logisticspipes:crafting_table> *4, [
	[null, <ore:circuitBasic>, null], 
	[null, <gregtech:machine:501>, null], 
	[<logisticspipes:pipe_basic>, <extrautils2:crafter>, <logisticspipes:pipe_basic>]]);

	recipes.remove(<logisticspipes:crafting_table_fuzzy>);
	recipes.addShapeless("Logistics Fuzzy Crafting Table", 
	<logisticspipes:crafting_table_fuzzy>, [<ore:plateRedAlloy>, <logisticspipes:crafting_table>]);

	recipes.remove(<logisticspipes:pipe_transport_basic>);
	recipes.addShapedMirrored("Unrouted Transport Pipe", 
	<logisticspipes:pipe_transport_basic> *8, [
	[<ore:plateWroughtIron>, <ore:itemConduitBinder>, <ore:plateWroughtIron>], 
	[<ore:itemConduitBinder>, <ore:blockGlass>, <ore:itemConduitBinder>], 
	[<ore:plateWroughtIron>, <ore:itemConduitBinder>, <ore:plateWroughtIron>]]);

	recipes.remove(<logisticspipes:pipe_request_table>);
	recipes.addShapedMirrored("Logistics Request Table", 
	<logisticspipes:pipe_request_table>, [
	[<ore:circuitBasic>, <extrautils2:crafter>, <ore:circuitBasic>], 
	[<logisticspipes:pipe_request_mk2>, <gregtech:machine:501>, <logisticspipes:pipe_crafting>], 
	[<scannable:module_blank>, <scannable:module_blank>, <scannable:module_blank>]]);

	recipes.remove(<logisticspipes:security_station>);
	recipes.addShapedMirrored("Logistics Security Station", 
	<logisticspipes:security_station>, [
	[null, <storagedrawers:personal_key>, null], 
	[<ore:plateRedAlloy>, <gregtech:machine:501>, <ore:plateRedAlloy>], 
	[<logisticspipes:chip_advanced>, <ore:plateRedAlloy>, <logisticspipes:chip_advanced>]]);

	recipes.remove(<logisticspipes:statistics_table>);
	recipes.addShapedMirrored("Logistics Statistics Table", 
	<logisticspipes:statistics_table>, [
	[null, <scannable:module_blank>, null], 
	[<ore:plateRedAlloy>, <gregtech:machine:501>, <ore:plateRedAlloy>], 
	[<logisticspipes:chip_advanced>, <ore:plateRedAlloy>, <logisticspipes:chip_advanced>]]);


print("--- Logipipes.zs initialized ---");