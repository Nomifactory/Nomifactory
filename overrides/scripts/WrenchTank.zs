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

function coerceNullByte(data as IData) as byte {
    return isNull(data) ? 0 as byte : data as byte;
}

function coerceNullInt(data as IData) as int {
    return isNull(data) ? 0 as int : data as int;
}

function getTankItemTag(data as IData) as IData {
    // BlockTank#getItemStackTag
    // https://github.com/CoFH/ThermalExpansion/blob/1.12/src/main/java/cofh/thermalexpansion/block/storage/BlockTank.java#L193

    // BlockCoreTile#getItemStackTag
    // https://github.com/CoFH/CoFHCore/blob/3119c11b853a04a5ff8fa76b97199291f6a40699/src/main/java/cofh/core/block/BlockCoreTile.java#L233

    // naming skipped

    var tag = {
        Creative: coerceNullByte(data.Creative),
        Level: coerceNullByte(data.Level)
    } as IData;

    // security skipped
    // not augmentable

    tag += {
        RSControl: 0 as byte
    } as IData;

    // not reconfigurable
    // not energy handler

    // return
    // BlockTank#getItemStackTag

    // holding enchantment skipped

    val fluidStackFluidName = data.FluidName;
    if (isNull(fluidStackFluidName))
        return tag; // no fluid stored, don't write fluid or lock

    // FluidStack#writeToNBT
    // https://github.com/MinecraftForge/MinecraftForge/blob/87a63bc5e08f7f1e7085fc62c7800a4071c94291/src/main/java/net/minecraftforge/fluids/FluidStack.java#L105

    var fluidTag = {
        FluidName: fluidStackFluidName,
        Amount: coerceNullInt(data.Amount),
    } as IData;

    val fluidStackTag = data.Tag;
    if (!isNull(fluidStackTag)) {
        fluidTag += {
            Tag: fluidStackTag
        } as IData;
    }

    // return
    // BlockTank#getItemStackTag

    tag += {
        Fluid: fluidTag,
        Lock: coerceNullByte(tag.Lock)
    };

    return tag;
}

events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerIsNotWrenchingACreativeTank(evt))
		return;

	evt.player.give(<thermalexpansion:tank>.withTag(getTankItemTag(getEventBlock(evt).data)));
	evt.world.setBlockState(<metastate:minecraft:air:0>, evt.position);
	evt.cancellationResult = "SUCCESS";
	evt.cancel();
});
