#loader gregtech
import mods.gregtech.material.MaterialRegistry;

var materialList = MaterialRegistry.getAllMaterials();

val conductiveIron = MaterialRegistry.createIngotMaterial(700, "conductive_iron", 0xf7b29b, "shiny", 2);
conductiveIron.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val energeticAlloy = MaterialRegistry.createIngotMaterial(701, "energetic_alloy", 0xf49507, "shiny", 2);
energeticAlloy.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val vibrantAlloy = MaterialRegistry.createIngotMaterial(702, "vibrant_alloy", 0xa4ff70, "shiny", 2);
vibrantAlloy.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val pulsatingIron = MaterialRegistry.createIngotMaterial(703, "pulsating_iron", 0x6ae26e, "shiny", 2);
pulsatingIron.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val darkSteel = MaterialRegistry.createIngotMaterial(704, "dark_steel", 0x414751, "dull", 2);
darkSteel.addFlags(["GENERATE_PLATE","GENERATE_ROD"]);

val electricalSteel = MaterialRegistry.createIngotMaterial(705, "electrical_steel", 0xb2c0c1, "shiny", 2);
electricalSteel.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val lumium = MaterialRegistry.createIngotMaterial(706, "lumium", 0xf6ff99, "shiny", 2);
lumium.addFlags(["GENERATE_ROD"]);

val signalum = MaterialRegistry.createIngotMaterial(707, "signalum", 0xce4b00, "shiny", 2);
signalum.addFlags(["GENERATE_ROD"]);

val enderium = MaterialRegistry.createIngotMaterial(708, "enderium", 0x1f6b62, "shiny", 2);
enderium.addFlags(["GENERATE_ROD"]);

val omnium = MaterialRegistry.createIngotMaterial(709, "omnium", 0x84053e, "shiny", 2);

val draconium = MaterialRegistry.createIngotMaterial(710, "draconium", 0xbe49ed, "dull", 2);

val endSteel = MaterialRegistry.createIngotMaterial(712, "end_steel", 0xe0efbd, "shiny", 2);
endSteel.addFlags(["GENERATE_PLATE","GENERATE_GEAR"]);

val ardite = MaterialRegistry.createIngotMaterial(713, "ardite", 0xad2f05, "dull", 2);
ardite.addFlags(["GENERATE_PLATE"]);

val manyullyn = MaterialRegistry.createIngotMaterial(714, "manyullyn", 0x9949cc, "dull", 2);
manyullyn.addFlags(["GENERATE_PLATE"]);

pulsatingIron.setCableProperties(8, 1, 0);
conductiveIron.setCableProperties(32, 1, 0);
energeticAlloy.setCableProperties(128, 1, 0);
vibrantAlloy.setCableProperties(512, 1, 0);
endSteel.setCableProperties(2048, 1, 0);
lumium.setCableProperties(8192, 1, 0);
signalum.setCableProperties(32768, 1, 0);
enderium.setCableProperties(131072, 1, 0);
draconium.setCableProperties(524288, 1, 0);
omnium.setCableProperties(2147483647, 1, 0);

val microversium = MaterialRegistry.createIngotMaterial(976, "microversium", 0x837793, "metallic", 2);
microversium.addFlags(["GENERATE_PLATE", "GENERATE_ROD", "GENERATE_GEAR", "GENERATE_LONG_ROD"]);

/*
 Note to maintainers: certain metaitem IDs can be shifted if you try to add
 blocks in ID range gaps, which can silently break the scripts. For consistency,
 new ported material IDs must start one larger than the previous highest ID. To
 make this easier, always add new entries at the end of the file to maintain
 ascending ID order.

 Components generated from these IDs will have a metadata value following a
 pattern: the prefix number for that part's range, followed by the material
 ID (such as: 711, 1711, 2711, 9711, 26711 for the material with ID 711).
 
 Note that Shadows of Greg adds a material at ID 975, so all materials registered
 including and after microversium should take on IDs in the range 975 < x <= 1000.
 */
