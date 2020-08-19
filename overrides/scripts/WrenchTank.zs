import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.block.IBlockPattern;
import crafttweaker.event.PlayerInteractBlockEvent;

<ore:wrenchTank>.add(<thermalfoundation:wrench>,
                     <enderio:item_yeta_wrench>,
                     <redstonearsenal:tool.wrench_flux>,
                     <redstonearsenal:tool.battlewrench_flux>);

<ore:wrenchTank>.addAll(<ore:craftingToolWrench>);

static tankBlock as IBlock = <thermalexpansion:tank> as IBlock;

function isNotCreativeTank(block as IBlock) as bool {
	return isNull(block) || // no block
		!(tankBlock has block) || // not a portable tank
		isNull(block.data) || // no tile entity
		isNull(block.data.Creative) || // no "Creative" key on the tag
		block.data.Creative as byte != 1; // not a creative tank
}

function isNotWrenching(player as IPlayer) as bool {
	return isNull(player) || // no player
		!player.isSneaking || // not sneaking
		isNull(player.currentItem) || // no item is held
		!(<ore:wrenchTank> has player.currentItem); // not a wrench
}

function getEventBlock(evt as PlayerInteractBlockEvent) as IBlock {
    // evt.block doesn't properly represent the tile entity at the position,
    // so get it directly from the world
    return isNull(evt.position) ? null : evt.world.getBlock(evt.position);
}

function playerIsNotWrenchingACreativeTank(evt as PlayerInteractBlockEvent) as bool {
	// gracefully handle unusual circumstances
	if (isNull(evt) || isNull(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;

	return isNotCreativeTank(getEventBlock(evt)) || isNotWrenching(evt.player);
}

function coerceNullByte(data as IData) as byte {
    return isNull(data) ? 0 as byte : data as byte;
}

function coerceNullInt(data as IData) as int {
    return isNull(data) ? 0 as int : data as int;
}

function dropTank(evt as PlayerInteractBlockEvent) as bool {
    if (evt.world.remote)
        return true;

    val stack = evt.world.getPickedBlock(evt.position, evt.player.getRayTrace(4, 0), evt.player);

    if (isNull(stack) || !evt.world.setBlockState(<blockstate:minecraft:air>, evt.position))
        return false;

    // dummy entity to drop the item with
    val dummy = <entity:minecraft:arrow>.createEntity(evt.world);
    dummy.posX = evt.x as double + 0.5;
    dummy.posY = evt.y as double + 0.5;
    dummy.posZ = evt.z as double + 0.5;

    dummy.dropItem(stack);
}

events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerIsNotWrenchingACreativeTank(evt))
		return;

    if (dropTank(evt)) {
        evt.cancellationResult = "SUCCESS";
        evt.cancel();
	}
});
