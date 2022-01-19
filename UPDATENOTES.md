# Update Notes

This document contains only the most important things required to know when updating Nomifactory to the next version. Please see the changelog for a complete desciption of everything that has been changed.

**Do not skip versions when updating!** We have tested to ensure that each version is safe to update to from the previous version, but skipping versions may result in problems. Please update to each version in order and refer to the Update Notes for that version to know what you should do to safely update to the next version.

## New Players

If you are playing Nomifactory for the first time with a new world, welcome! You can skip reading the section pertaining to upgrading from Omnifactory 1.2.1.

## Configuration

The minimum requirement for heap size is 2GB. Under normal circumstances, neither the client nor the server should require more than 4GB of heap space. Exceeding this amount unnecessarily is more likely to decrease performance than increase it.

### Servers

Server operators may wish to change the world generator or other settings in `server.properties`, or adjust the heap size (default 2GB) in the provided launch scripts.

### Clients

For the client it is recommended to use at least 2560M (2.5GB) for a smoother experience.

## Updating to Nomifactory from Omnifactory 1.2.1

This pack is designed to be fully compatible with existing worlds from Omnifactory 1.2.1.

### Before Playing
Do not unzip Nomifactory over your Omnifactory instance! That's not going to work. You need to create a new instance of Nomifactory in your launcher.

To keep important data from your old instance, copy the following files and folders:

File | Description
-----|------------
`minecraft/saves` directory | Single Player worlds
`minecraft/resourcepacks` directory | Resource Packs
`minecraft/options.txt` | Minecraft settings like keybinds, selected resource packs, video options, etc.
`minecraft/journeymap` directory | Journeymap waypoints and map data
`minecraft/config/jei/bookmarks.ini` | JEI Bookmarks

If you have made any customizations to configuration files not mentioned above, you should make those same changes by editing the files. Don't overwrite the updated configs with ones from the old instance.

For those familiar with Exa's "fix zip" from late 2019, do not use it. All of the changes have been integrated directly into the pack.

There is also no need to install any unofficial bugfix patches manually. AE2: Trousers Edition comes with the pack, and the GTCE/SoG jars are bugfix-patched automatically when you launch the pack.

### After You Update

1. Once loaded in game, open your Quest Book and click on the **Update Quests** button on the book's main menu screen. This will update your Quest Book to the latest version. Otherwise, you will still have cached the Quest Book from Omnifactory 1.2.1. DO NOT use the "Reload the Quest Book" quest from 1.2.1, as that functionality was broken in a BetterQuesting update.
    - Run the command `/bq_admin default load` in single player, as an operator on a server, or via the server console itself, if the update button is missing or if you prefer to use a command.
2. Fusion Reactors behave differently than before. They can no longer be exploited to run any tier of recipe in any tier of reactor, and the heat mechanics are different as well. Please refer to the Fusion Reactor quests for more information.
3. With our fork of DimensionalEdibles, players who ate a cake and got an unfortunate result can be fixed. Use the command `/de invalidate PlayerName DimensionNumber` to make the next slice of that cake recompute your destination using our fixed method that avoids spawning players outside of the world or in lava pools. For example, if a player named Steve was spawned in a large pool of lava in the nether, use `/de invalidate Steve -1`.
