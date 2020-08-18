import crafttweaker.block.IBlock;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.block.IBlockPattern;
import crafttweaker.event.PlayerInteractBlockEvent;

<ore:wrenchCell>.add(<thermalfoundation:wrench>,
                     <enderio:item_yeta_wrench>,
                     <redstonearsenal:tool.wrench_flux>,
                     <redstonearsenal:tool.battlewrench_flux>);

<ore:wrenchCell>.addAll(<ore:craftingToolWrench>);

static cellBlock as IBlock = <thermalexpansion:cell> as IBlock;

function isNotCreativeCell(block as IBlock) as bool {
	return isNull(block) || // no block
		!(cellBlock has block) || // not a cell
		isNull(block.data) || // no tile entity
		isNull(block.data.Creative) || // no "Creative" key on the tag
		block.data.Creative as byte != 1; // not a creative cell
}

function isNotWrenching(player as IPlayer) as bool {
	return isNull(player) || // no player
		!player.isSneaking || // not sneaking
		isNull(player.currentItem) || // no item is held
		!(<ore:wrenchCell> has player.currentItem); // not a wrench
}

function getEventBlock(evt as PlayerInteractBlockEvent) as IBlock {
    // evt.block doesn't properly represent the tile entity at the position,
    // so get it directly from the world
    return isNull(evt.position) ? null : evt.world.getBlock(evt.position);
}

function playerIsNotWrenchingACreativeCell(evt as PlayerInteractBlockEvent) as bool {
	// gracefully handle unusual circumstances
	if (isNull(evt) || isNull(evt.world) || evt.canceled || evt.useItem == "DENY")
		return true;

	return isNotCreativeCell(getEventBlock(evt)) || isNotWrenching(evt.player);
}

function coerceNullByte(data as IData) as byte {
    return isNull(data) ? 0 as byte : data as byte;
}

function coerceNullInt(data as IData) as int {
    return isNull(data) ? 0 as int : data as int;
}

function getCellItemTag(data as IData) as IData {
    // BlockCell#getItemStackTag
    // https://github.com/CoFH/ThermalExpansion/blob/1.12/src/main/java/cofh/thermalexpansion/block/storage/BlockCell.java#L193

    // BlockCoreTile#getItemStackTag
    // https://github.com/CoFH/CoFHCore/blob/3119c11b853a04a5ff8fa76b97199291f6a40699/src/main/java/cofh/core/block/BlockCoreTile.java#L233

    var tag = {} as IData;

    if (!isNull(data.Name)) {
        tag += {
            display: {
                Name: data.Name
            }
        };
    }

    tag += {
        Creative: coerceNullByte(data.Creative),
        Level: coerceNullByte(data.Level)
    } as IData;


    if (!isNull(data.OwnerUUID) && // cofh.core.init.CoreProps.DEFAULT_OWNER
        data.OwnerUUID as string != "1ef1a6f0-87bc-4e78-0a0b-c6824eb787ea") {
        tag += {
            Secure: 1 as byte,
            Access: coerceNullByte(data.Access),
            OwnerUUID: data.OwnerUUID,
            Owner: isNull(data.Owner) ? "[None]" : data.Owner
        };
    }

    // not augmentable

    tag += {
        RSControl: isNull(data.RS) ? 0 as byte : coerceNullByte(data.RS.Mode)
    } as IData;

    // not reconfigurable
    // not energy handler

    // return
    // BlockCell#getItemStackTag

    if (coerceNullInt(data.EncHolding) > 0) {
        tag += (<enchantment:cofhcore:holding> * (data.EncHolding as int)).makeTag();
    }

    tag += {
        Energy: coerceNullInt(data.Energy),
        Recv: coerceNullInt(data.Recv),
        Send: coerceNullInt(data.Send),
    };

    tag += {
        Facing: coerceNullByte(data.Facing),
        SideCache: data.SideCache
    };

    // return
    // BlockCell#getItemStackTag

    tag += {
        Lock: coerceNullByte(data.Lock)
    };

    return tag;
}

function dropCell(evt as PlayerInteractBlockEvent) as bool {
    if (evt.world.remote)
        return true;

    val stack = <thermalexpansion:cell>.withTag(getCellItemTag(getEventBlock(evt).data));

    if (!evt.world.setBlockState(<blockstate:minecraft:air>, evt.position))
        return false;

    // dummy entity to drop the item with
    val dummy = <entity:minecraft:arrow>.createEntity(evt.world);
    dummy.posX = evt.x as double + 0.5;
    dummy.posY = evt.y as double + 0.5;
    dummy.posZ = evt.z as double + 0.5;

    dummy.dropItem(stack);
}

events.onPlayerInteractBlock(function(evt as PlayerInteractBlockEvent) as void {
	if (playerIsNotWrenchingACreativeCell(evt))
		return;

    if (dropCell(evt)) {
		evt.cancellationResult = "SUCCESS";
        evt.cancel();
	}
});
