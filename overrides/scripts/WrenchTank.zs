#debug
import crafttweaker.block.IBlock;
import crafttweaker.world.IWorld;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.block.IBlockPattern;
import crafttweaker.event.PlayerInteractBlockEvent;

<ore:wrenchTank>.add(<thermalfoundation:wrench>, <enderio:item_yeta_wrench>);

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

function isClient(world as IWorld) as bool {
    return isNull(world) || // no world
        world.remote; // client world
}

function playerIsNotWrenchingACreativeTank(evt as PlayerInteractBlockEvent) as bool {
	// gracefully handle unusual circumstances
	if(isNull(evt) || isClient(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;

	return isNotCreativeTank(getEventBlock(evt)) || isNotWrenching(evt.player);
}

events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerIsNotWrenchingACreativeTank(evt))
		return;

	evt.player.give(<thermalexpansion:tank>.withTag(getEventBlock(evt).data));
	evt.world.setBlockState(<metastate:minecraft:air:0>, evt.position);
	evt.cancellationResult = "SUCCESS";
	evt.cancel();
});
