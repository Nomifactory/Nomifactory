import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingInfo;
import crafttweaker.data.IData;

val framingMaterial as IIngredient = <*>.only(function(stack as IItemStack) as bool {
    if(!stack.isItemBlock) {
        return false;
    }
    return stack.asBlock().definition.getStateFromMeta(stack.metadata).opaqueCube;
});

val sideIngredient = (<xtones:zane> | framingMaterial).marked("MatS");
val trimIngredient = (<extendedcrafting:storage:4> | framingMaterial).marked("MatT");
val frontIngredient = (<xtones:zane:15> | framingMaterial).marked("MatF");

function addInfo(stack as IItemStack) as IItemStack {
    return stack.withDisplayName("Frame your drawers by hand!")
                .withLore([
                    "Top left: sides",
                    "Top right: trim",
                    "Middle left: front"
                ]);
}

function asData(stack as IItemStack) as IData {
    return {
        id: stack.definition.id,
        Count: 1 as byte,
        Damage: stack.metadata
    } as IData;
}

<ore:handFramedThree>.add(<storagedrawers:customdrawers:*>,
                          <framedcompactdrawers:framed_drawer_controller>,
                          <framedcompactdrawers:framed_compact_drawer>,
                          <framedcompactdrawers:framed_slave>);

<ore:handFramed>.addAll(<ore:handFramedThree>);
<ore:handFramed>.add(<storagedrawers:customtrim>);

function getRecipeOutput(out as IItemStack,
                         ins as IItemStack[string],
                         cInfo as ICraftingInfo) as IItemStack {
    var tag = {} as IData[string];
    for key, stack in ins {
        if(key != "drawer") {
            tag[key] = asData(stack);
        }
    }
    val ret as any[any] = tag;
    return ins.drawer.withTag(ret as IData) * 1;
}

val recipeFunction = function(out, ins, cinfo) { return getRecipeOutput(out, ins, cinfo); } as IRecipeFunction;

for front in [true, false] as bool[] {
    for trim in [true, false] as bool[] {
        val ingredients as IIngredient[][] = [
            [
                sideIngredient,
                trim ? trimIngredient : null
            ],
            [
                front ? frontIngredient : null,
                (front ? <ore:handFramedThree> : <ore:handFramed>).marked("drawer")
            ]
        ];

        val ins as IItemStack[string] = {
            MatS: sideIngredient.items[0],
            drawer: <framedcompactdrawers:framed_compact_drawer>
        };

        if (front) {
            ins["MatF"] = frontIngredient.items[0];
        }

        if (trim) {
            ins["MatT"] = trimIngredient.items[0];
        }

        recipes.addShaped(
            "hand_framing_" + (trim ? "trim_" : "") + (front ? "front_" : "") + "side",
            addInfo(getRecipeOutput(null, ins, null)),
            ingredients,
            recipeFunction
        );
    }
}
