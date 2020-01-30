import loottweaker.vanilla.loot.LootTables;
import loottweaker.vanilla.loot.LootTable;
import loottweaker.vanilla.loot.LootPool;

// Remove Zero Point Modules from Jungle Temples
val jungleTemple = LootTables.getTable("minecraft:chests/jungle_temple");
val pool = jungleTemple.getPool("main");

pool.removeEntry("#gregtech:loot_1xitem.meta_item@32599");