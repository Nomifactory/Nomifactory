#priority -9998

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemDefinition;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidDefinition;
import crafttweaker.liquid.ILiquidStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;


/*
    MetaIDs of SoG's curved plates and double-ingots that aren't gone from JEI
    even with the config options set to not use them...
*/
val curvedPlatesDoubleIngots as int[] = [1, 2, 3, 7, 16, 17, 18, 21, 22, 25, 26,
 32, 33, 35, 36, 39, 42, 43, 44, 45, 47, 49, 51, 52, 53, 54, 55, 56, 58, 59, 60,
 61, 62, 63, 64, 66, 67, 68, 69, 70, 71, 72, 74, 75, 76, 77, 78, 79, 87, 91, 94,
 95, 109, 112, 126, 127, 129, 133, 134, 135, 140, 141, 142, 144, 145, 152, 180,
 183, 184, 189, 192, 195, 197, 200, 204, 205, 207, 227, 228, 229, 230, 231, 232,
 233, 234, 235, 237, 238, 297, 298, 299, 300, 301, 302, 303, 304, 307, 308, 309,
 310, 311, 312, 353, 391, 395, 398, 410, 411, 421, 424, 470, 700, 701, 702, 703,
 704, 705, 712, 713, 714, 965, 972, 1001, 1002, 1003, 1007, 1016, 1017, 1018,
 1021, 1022, 1025, 1026, 1032, 1033, 1035, 1036, 1039, 1042, 1043, 1044, 1045,
 1047, 1049, 1051, 1052, 1053, 1054, 1055, 1056, 1058, 1059, 1060, 1061, 1062,
 1063, 1064, 1066, 1067, 1068, 1069, 1070, 1071, 1072, 1074, 1075, 1076, 1077,
 1078, 1079, 1087, 1091, 1094, 1095, 1109, 1112, 1126, 1127, 1129, 1133, 1134,
 1135, 1140, 1141, 1142, 1144, 1145, 1152, 1180, 1183, 1184, 1189, 1192, 1195,
 1197, 1200, 1204, 1205, 1207, 1227, 1228, 1229, 1230, 1231, 1232, 1233, 1234,
 1235, 1237, 1238, 1297, 1298, 1299, 1300, 1301, 1302, 1303, 1304, 1307, 1308,
 1309, 1310, 1311, 1312, 1353, 1391, 1395, 1398, 1410, 1411, 1421, 1424, 1470,
 1700, 1701, 1702, 1703, 1704, 1705, 1712, 1713, 1714, 1965, 1972];

for meta in curvedPlatesDoubleIngots {
    var item = itemUtils.getItem("gtadditions:ga_meta_item", meta) as IItemStack;
    if(!isNull(item)) {
        mods.jei.JEI.hide(item);
    }
}


/* Hide all of AE2's facades (can still be crafted, just hiding from JEI) */
val ae2 as IMod = loadedMods["appliedenergistics2"];
if(!isNull(ae2)) {
    val ae2Items as IItemStack[] = ae2.items;

    for item in ae2Items {
        if(item.displayName has "Cable Facade") {
            mods.jei.JEI.hide(item);
        }
    }
}
