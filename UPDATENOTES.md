# Update Notes

This document contains only the most important things required to know when updating Nomifactory to the next version. Please see the changelog for a complete desciption of everything that has been changed.

**Do not skip versions when updating!** We have tested to ensure that each version is safe to update to from the previous version, but skipping versions may result in problems. Please update to each version in order and refer to the Update Notes for that version to know what you should do to safely update to the next version.

## Updating to 1.3.0 from 1.2.2

There have been significant changes between 1.2.2 and 1.3.0. Depending on your existing progress, some effort may be required to adjust. It's well worth it though, as the benefits are many.

Please be sure to read and address all of the following points as applicable.

### Before You Update

1. **GregTech Community Edition**, as part of fixing a significant bug with block ID mappings, will remap the IDs of specific items from worlds created with a sufficiently old version of the mod. Please make sure to move all **GTCE** Material Blocks (e.g. "Block of Polyethylene" or "Block of Stainless Steel") out of Ender Chests (from the **Ender Storage** mod) before updating, as they are inaccessible to the remapping process. If these items are left in an Ender Chest, after updating the items may become broken and could cause issues.
2. Ensure that all **Modular Machinery** structures have finished running their current crafts. Structures will un-form and consequently any ongoing craft will be voided. More on this in the following section.

### After You Update

1. Click on the **Update Quests** button on the Main Menu of the Better Questing Quest Book. This will update your Quest Book to the latest version. Otherwise, you will still have the Quest Book from 1.2.2 in your existing world.
    - Run the command `/bq_admin default load` in single player, as an operator on a server, or via the server console itself, if the update button is missing or if you prefer to use a command.
2. **Modular Machinery** had several bugs and shortcomings, so we decided to transition to using **Multiblock Tweaker** instead. This mod allows us to create custom multiblock structures that behave just like the native ones from GregTech Community Edition. All existing Modular Machinery multiblock structures will no longer be formed when you load the world, and must be dismantled and rebuilt.
    - Temporary conversion recipes have been provided to convert your old Modular Machinery items and blocks to replacement items and blocks. These conversion recipes will be removed in the next update, along with the Modular Machinery mod itself: all items not converted before the next update will be lost.
    - The Multiblock Tweaker structures are identical to the Modular Machinery structures in most respects, except that:
      - Structures will require GTCE hatches and buses
      - Structures exclusively accept EU power and will overclock
      - As with native GTCE structures, the positions of hatches and buses can be flexibly swapped with casings.
      - Each structure now has a unique controller, instead of using the same controller for every structure. Conversion recipes are provided to convert Modular Machinery generic controllers irreversibly into a specific Multiblock Tweaker multiblock controller.
    
3. Due to being a redundant item, it was decided to remove the **ContentTweaker** version of **Endstone Dust**. A free temporary conversion recipe to turn it into the GregTech Community Edition version has been provided. This conversion recipe will be removed in the next update along with the item: all items not converted before the next update will be lost.
4. The **ContentTweaker** version of **Pulsating Iron Wire** has been replaced with a native GregTech Community Edition wire of the same material. A free temporary conversion recipe has been provided to convert to the replacement item. The conversion recipe and **ContentTweaker** variant of the item will be removed in the next update: all items not converted before the next update will be lost.
5. Due to several Chemistry updates in **Gregtech Community Edition**, some existing chemistry recipes have been changed. If you are having issues, please check to see if the recipe has been changed before reporting an issue.
6. The mod **Simple Fluid Tanks** will be removed in the next version due to general bad performace, and a plethora of substitutes. See the Gregtech multiblock tank structures if you want a similar looking replacement.
7. The mod **Forestry** will be removed in the next version of the pack due to its minimal uses and available replacement items. The following items have had conversion recipes provided, with the first two also having an Ore Dictionary entry added so either version will be usable for recipes. All items not converted before the next update will be lost.
    - Pulsating Dust has been replaced with a **ContentTweaker** version
    - Pulsating Mesh has been replaced with a **ContentTweaker** version
    - The Worktable has been replaced with the Crafting Station from **Gregtech Community Edition**
