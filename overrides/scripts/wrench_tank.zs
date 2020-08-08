import crafttweaker.block.IBlock;
import crafttweaker.event.PlayerInteractBlockEvent;
import crafttweaker.player.IPlayer;

<ore:wrenchTank>.addItem(<thermalexpansion:wrench>);

function isNotCreativeTank(block as IBlock) as bool {
	return isNull(block) || // no block
		block.definition.id != "thermalexpansion:tank" || // not a portable tank
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

function playerIsNotWrenchingACreativeTank(evt as PlayerInteractBlockEvent) as bool {
	// gracefully handle unusual circumstances
	if(isNull(evt) || evt.cancelled || !evt.usingItem)
		return true;

	return isNotCreativeTank(evt.block) || isNotWrenching(evt.player);
}

events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerIsNotWrenchingACreativeTank(evt))
		return;

	evt.player.give(<thermalexpansion:tank>.withTag(evt.block.tag));
	evt.world.setBlockState(<metastate:minecraft:air:0>, evt.position);
	evt.cancellationResult = "success";
	evt,cancel();
});
