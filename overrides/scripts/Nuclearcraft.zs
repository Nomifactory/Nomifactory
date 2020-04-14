import crafttweaker.game.IGame;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;
import mods.gregtech.recipe.RecipeMap;

import scripts.CommonVars.makeShaped as makeShaped;

//////////////////////////////////////////////////////////////
/////////////////       Nuclearcraft       ///////////////////
//////////////////////////////////////////////////////////////

// Remove all recipes from unused NC machine categories
mods.nuclearcraft.manufactory.removeAllRecipes();
mods.nuclearcraft.isotope_separator.removeAllRecipes();
mods.nuclearcraft.decay_hastener.removeAllRecipes();
mods.nuclearcraft.fuel_reprocessor.removeAllRecipes();
mods.nuclearcraft.alloy_furnace.removeAllRecipes();
mods.nuclearcraft.infuser.removeAllRecipes();
mods.nuclearcraft.melter.removeAllRecipes();
mods.nuclearcraft.supercooler.removeAllRecipes();
mods.nuclearcraft.electrolyser.removeAllRecipes();
mods.nuclearcraft.irradiator.removeAllRecipes();
mods.nuclearcraft.ingot_former.removeAllRecipes();
mods.nuclearcraft.pressurizer.removeAllRecipes();
mods.nuclearcraft.chemical_reactor.removeAllRecipes();
mods.nuclearcraft.salt_mixer.removeAllRecipes();
mods.nuclearcraft.crystallizer.removeAllRecipes();
mods.nuclearcraft.dissolver.removeAllRecipes();
mods.nuclearcraft.extractor.removeAllRecipes();
mods.nuclearcraft.centrifuge.removeAllRecipes();
mods.nuclearcraft.rock_crusher.removeAllRecipes();
mods.nuclearcraft.decay_generator.removeAllRecipes();
mods.nuclearcraft.fusion.removeAllRecipes();
mods.nuclearcraft.salt_fission.removeAllRecipes();
mods.nuclearcraft.heat_exchanger.removeAllRecipes();
//mods.nuclearcraft.steam_turbine.removeAllRecipes(); FIXME: probably in a newer version?
mods.nuclearcraft.condenser.removeAllRecipes();

// Hide NC categories related to MSR and Turbines
val jeiCategories as string[] = [
    "nuclearcraft_collector",
    "nuclearcraft_heat_exchanger",
    "nuclearcraft_high_turbine",
    "nuclearcraft_condenser",
] as string[];

for jeiCategory in jeiCategories {
    mods.jei.JEI.hideCategory(jeiCategory);
}

function purgeFluidFromJEI(fluid as string) {
    // gtce various metal cells
    val containers = [<gregtech:meta_item_1:32405>,
                      <gregtech:meta_item_1:32762>,
                      <gregtech:meta_item_1:32406>] as IItemStack[];

    // remove from various GT containers
    for container in containers {
        mods.jei.JEI.removeAndHide(container.withTag({Fluid: {FluidName: fluid, Amount: 1000}}));
    }

    // Different tag schemas...
    mods.jei.JEI.removeAndHide(<ceramics:clay_bucket>.withTag({fluids: {FluidName: fluid, Amount: 1000}}));
    mods.jei.JEI.removeAndHide(<forge:bucketfilled>.withTag({FluidName: fluid, Amount: 1000}));
}

// Nuclearcraft Item Removals
val ncItems as IItemStack[] = [
    <nuclearcraft:accelerator_electromagnet_idle>,
    <nuclearcraft:alloy:3>, // Magnesium Diboride
    <nuclearcraft:alloy:4>, // Lithium Manganese Dioxide
    <nuclearcraft:alloy:7>, // Shibuichi Alloy
    <nuclearcraft:alloy:8>, // Tin Silver Alloy
    <nuclearcraft:alloy:9>, // Lead Platinum Alloy
    <nuclearcraft:alloy:10>, // Extreme Alloy
    <nuclearcraft:alloy:11>, // Thermoconducting Alloy
    <nuclearcraft:alloy:12>, // Zircaloy
    <nuclearcraft:alloy:13>, // Silicon Carbide
    <nuclearcraft:alloy:14>, // SiC SiC Ceramic Matrix Composite
    <nuclearcraft:alloy:15>, // HSLA Steel
    <nuclearcraft:bin>,
    <nuclearcraft:block_depleted_thorium>,
    <nuclearcraft:block_depleted_uranium>,
    <nuclearcraft:boots_hazmat>,
    <nuclearcraft:boron:0>, // all boron isotopes
    <nuclearcraft:boron:1>,
    <nuclearcraft:boron:2>,
    <nuclearcraft:boron:3>,
    <nuclearcraft:chest_hazmat>,
    <nuclearcraft:cocoa_butter>,
    <nuclearcraft:cocoa_solids>,
    <nuclearcraft:compound:0>, // Calcium Sulfate
    <nuclearcraft:compound:1>, // Crystal Binder
    <nuclearcraft:compound:3>, // Sodium Fluoride
    <nuclearcraft:compound:4>, // Potassium Fluoride
    <nuclearcraft:compound:5>, // Sodium Hydroxide
    <nuclearcraft:compound:6>, // Potassium Hydroxide
    <nuclearcraft:compound:7>, // Borax
    <nuclearcraft:compound:8>, // Dimensional Blend
    <nuclearcraft:compound:9>, // Carbon-Manganese Blend
    <nuclearcraft:compound:10>, // Alugentum Dust
    <nuclearcraft:dark_chocolate>,
    <nuclearcraft:decay_generator>,
    <nuclearcraft:depleted_fuel_ic2>,   // Depleted Uranium Nuclear Fuel
    <nuclearcraft:depleted_fuel_ic2:1>, // Depleted MOX Nuclear Fuel
    <nuclearcraft:dry_earth>,
    <nuclearcraft:dust:10>, // Zirconium Dust
    <nuclearcraft:dust_oxide>,   // Thorium Oxide Dust
    <nuclearcraft:dust_oxide:1>, // Uranium Oxide Dust
    <nuclearcraft:dust_oxide:2>, // Manganese Oxide Dust
    <nuclearcraft:dust_oxide:3>, // Manganese Dioxide Dust
    <nuclearcraft:electromagnet_supercooler_idle>,
    <nuclearcraft:fission_controller_idle>,
    <nuclearcraft:flour>,
    <nuclearcraft:fusion_connector>,
    <nuclearcraft:fusion_core>,
    <nuclearcraft:fusion_electromagnet_idle>,
    <nuclearcraft:fusion_electromagnet_transparent_idle>,
    <nuclearcraft:geiger_counter>,
    <nuclearcraft:gelatin>,
    <nuclearcraft:gem:0>, // all NC gems
    <nuclearcraft:gem:1>,
    <nuclearcraft:gem:2>,
    <nuclearcraft:gem:3>,
    <nuclearcraft:gem:4>,
    <nuclearcraft:gem:5>,
    <nuclearcraft:gem:6>,
    <nuclearcraft:gem_dust:4>, // Hexagonal Boron Nitride
    <nuclearcraft:gem_dust:5>, // Crushed Fluorite
    <nuclearcraft:gem_dust:6>, // Sulfur
    <nuclearcraft:gem_dust:8>, // Crushed Villiaumite
    <nuclearcraft:gem_dust:9>, // Crushed Carobbiite
    <nuclearcraft:gem_dust:10>,// Crushed Arsenic
    <nuclearcraft:gem_dust:11>,// Crushed End Stone
    <nuclearcraft:graham_cracker>,
    <nuclearcraft:ground_cocoa_nibs>,
    <nuclearcraft:heat_exchanger_condenser_tube_copper>,
    <nuclearcraft:heat_exchanger_condenser_tube_hard_carbon>,
    <nuclearcraft:heat_exchanger_condenser_tube_thermoconducting>,
    <nuclearcraft:heat_exchanger_controller>,
    <nuclearcraft:heat_exchanger_frame>,
    <nuclearcraft:heat_exchanger_glass>,
    <nuclearcraft:heat_exchanger_tube_copper>,
    <nuclearcraft:heat_exchanger_tube_hard_carbon>,
    <nuclearcraft:heat_exchanger_tube_thermoconducting>,
    <nuclearcraft:heat_exchanger_vent>,
    <nuclearcraft:heat_exchanger_wall>,
    <nuclearcraft:helm_hazmat>,
    <nuclearcraft:ingot:10>,       // Zirconium Ingot
    <nuclearcraft:ingot_block:10>, // Zirconium Block
    <nuclearcraft:ingot_oxide>,    // Thorium Oxide Ingot
    <nuclearcraft:ingot_oxide:1>,  // Uranium Oxide Ingot
    <nuclearcraft:ingot_oxide:2>,  // Manganese Oxide Ingot
    <nuclearcraft:ingot_oxide:3>,  // Manganese Dioxide Ingot
    <nuclearcraft:legs_hazmat>,
    <nuclearcraft:lithium:0>, // all lithium isotopes
    <nuclearcraft:lithium:1>,
    <nuclearcraft:lithium:2>,
    <nuclearcraft:lithium:3>,
    <nuclearcraft:lithium_ion_battery_advanced>,
    <nuclearcraft:lithium_ion_battery_basic>,
    <nuclearcraft:lithium_ion_battery_du>,
    <nuclearcraft:lithium_ion_battery_elite>,
    <nuclearcraft:lithium_ion_cell>,
    <nuclearcraft:marshmallow>,
    <nuclearcraft:milk_chocolate>,
    <nuclearcraft:moresmore>,
    <nuclearcraft:part:5>,  // Magnesium Diboride Solenoid
    <nuclearcraft:part:6>,  // Bioplastic
    <nuclearcraft:part:11>, // Empty Frame
    <nuclearcraft:part:12>, // Steel Frame
    <nuclearcraft:part:13>, // Silicon Carbide Fiber
    <nuclearcraft:portable_ender_chest>,
    <nuclearcraft:radiation_scrubber>,
    <nuclearcraft:radaway_slow>,
    <nuclearcraft:rad_shielding:0>, // Light Rad Shielding
    <nuclearcraft:rad_shielding:1>, // Medium Rad Shielding
    <nuclearcraft:rad_shielding:2>, // Heavy Rad Shielding
    <nuclearcraft:rad_x>,
    <nuclearcraft:roasted_cocoa_beans>,
    <nuclearcraft:salt_fission_beam>,
    <nuclearcraft:salt_fission_computer_port>,
    <nuclearcraft:salt_fission_controller>,
    <nuclearcraft:salt_fission_distributor>,
    <nuclearcraft:salt_fission_frame>,
    <nuclearcraft:salt_fission_glass>,
    <nuclearcraft:salt_fission_heater>,
    <nuclearcraft:salt_fission_moderator>,
    <nuclearcraft:salt_fission_redstone_port>,
    <nuclearcraft:salt_fission_retriever>,
    <nuclearcraft:salt_fission_vent>,
    <nuclearcraft:salt_fission_vessel>,
    <nuclearcraft:salt_fission_wall>,
    <nuclearcraft:smore>,
    <nuclearcraft:solar_panel_advanced>,
    <nuclearcraft:solar_panel_basic>,
    <nuclearcraft:solar_panel_du>,
    <nuclearcraft:solar_panel_elite>,
    <nuclearcraft:tiny_dust_lead>,
    <nuclearcraft:turbine_controller>,
    <nuclearcraft:turbine_dynamo_coil:0>,
    <nuclearcraft:turbine_dynamo_coil:1>,
    <nuclearcraft:turbine_dynamo_coil:2>,
    <nuclearcraft:turbine_dynamo_coil:3>,
    <nuclearcraft:turbine_dynamo_coil:4>,
    <nuclearcraft:turbine_dynamo_coil:5>,
    <nuclearcraft:turbine_frame>,
    <nuclearcraft:turbine_glass>,
    <nuclearcraft:turbine_inlet>,
    <nuclearcraft:turbine_outlet>,
    <nuclearcraft:turbine_rotor_bearing>,
    <nuclearcraft:turbine_rotor_blade_extreme>,
    <nuclearcraft:turbine_rotor_blade_sic_sic_cmc>,
    <nuclearcraft:turbine_rotor_blade_steel>,
    <nuclearcraft:turbine_rotor_shaft>,
    <nuclearcraft:turbine_rotor_stator>,
    <nuclearcraft:turbine_wall>,
    <nuclearcraft:unsweetened_chocolate>,
    <nuclearcraft:upgrade:0>, // Speed Upgrade (NC Machines)
    <nuclearcraft:upgrade:1>, // Energy Upgrade (NC Machines)
    <nuclearcraft:voltaic_pile_advanced>,
    <nuclearcraft:voltaic_pile_basic>,
    <nuclearcraft:voltaic_pile_du>,
    <nuclearcraft:voltaic_pile_elite>,
] as IItemStack[];

for ncItem in ncItems {
    furnace.remove(ncItem);
    mods.jei.JEI.removeAndHide(ncItem);
}

// purge oxides
val fissiles as int[][string] = {
    "americium" :   [1,3,5,7,9,11],
    "berkelium" :   [1,3,5,7],
    "californium" : [1,3,5,7,9,11,13,15],
    "curium" :      [1,3,5,7,9,11,13,15],
    "neptunium" :   [1,3,5,7],
    "plutonium" :   [1,3,5,7,9,11,13,15],
    "thorium" :     [1,3,5,7],
    "uranium" :     [1,3,5,7,9,11],
} as int[][string];

// oxides are odd-valued metadata values beginning with 1.
//val metas as int[] = [1,3,5,7,9,11,13,15,17,19,21] as int[]; 
for fissile,metas in fissiles {
    for meta in metas {
        val variants as string[] = [
            "nuclearcraft:" + fissile,
            "nuclearcraft:fuel_" + fissile,
            "nuclearcraft:depleted_fuel_" + fissile,
        ] as string[];

        for variant in variants {
            var oxide   = itemUtils.getItem(variant, meta);
            var regular = itemUtils.getItem(variant, meta - 1);
            if(!isNull(oxide)) {
                furnace.remove(regular, oxide); // remove de-oxidation smelting
                mods.jei.JEI.removeAndHide(oxide);
            }
        }
    }
}

// Remove the fission recipes resulting in depleted oxide fuels
val depletedFuels as int[][string] = {
    "americium"   : [1,3],
    "berkelium"   : [1,3],
    "californium" : [1,3,5,7],
    "curium"      : [1,3,5,7,9,11],
    "neptunium"   : [1,3],
    "plutonium"   : [1,3,5,7],
    "thorium"     : [1,],
    "uranium"     : [1,3,5,7],
    "ic2"         : [0,1],
    "mixed_oxide" : [0,1],
} as int[][string];

for depletedFuel,metas in depletedFuels {
    for meta in metas {
        var item = itemUtils.getItem("nuclearcraft:depleted_fuel_" + depletedFuel, meta);
        if(!isNull(item)) {
            mods.nuclearcraft.fission.removeRecipeWithOutput([item]);
        }
    }
}

// Get rid of unused NC fluids related to the MSR
// unfortunately liquids aren't registered with their parent mod so this is ugly
for liquid in game.liquids {
    if(liquid.displayName has "Eutectic" |
       liquid.displayName has "Molten Depleted" |
       liquid.displayName has "Molten LE" |
       liquid.displayName has "Molten HE" |
       liquid.displayName has "Molten TB" |
       liquid.displayName has "Fluoride" |
       liquid.displayName has "FLiBe" |
       liquid.name has "_23" | 
       liquid.name has "_24" | 
       liquid.name has "_25" ) {

        purgeFluidFromJEI(liquid.name);

        // Hide the fluid too
        mods.jei.JEI.hide(liquid*1000);
    }
}

// Unused NC fluid tile things to purge from JEI
val ncFluids as string[] = [
    "alugentum",
    "alumina",
    "aluminum",
    "ammonia",
    "arsenic",
    "bas",
    "bef2",
    "beryllium",
    "borax_solution",
    "boric_acid",
    "boron",
    "boron10",
    "boron11",
    "boron_nitride_solution",
    "calcium_sulfate_solution",
    "carbon_dioxide",
    "carbon_monoxide",
    "chocolate_liquor",
    "cocoa_butter",
    "condensate_water",
    "corium",
    "dark_chocolate",
    "deuterium",
    "diborane",
    "ethanol",
    "ethene",
    "exhaust_steam",
    "ferroboron",
    "flibe",
    "fluorine",
    "fluorite_water",
    "fluoromethane",
    "gelatin",
    "hard_carbon",
    "helium",
    "helium3",
    "high_pressure_steam",
    "hydrated_gelatin",
    "hydrofluoric_acid",
    "hydrogen",
    "koh",
    "lif",
    "liquidhelium",
    "lithium",
    "lithium6",
    "lithium7",
    "low_pressure_steam",
    "low_quality_steam",
    "manganese",
    "manganese_dioxide",
    "marshmallow",
    "methanol",
    "milk",
    "milk_chocolate",
    "nak",
    "nak_hot",
    "naoh",
    "neutron",
    "nitrogen",
    "oxygen",
    "oxygen_difluoride",
    "plasma",
    "potassium",
    "potassium_fluoride_solution",
    "potassium_hydroxide_solution",
    "preheated_water",
    "radaway",
    "radaway_slow",
    "sic_vapor",
    "silver",
    "sodium",
    "sodium_fluoride_solution",
    "sodium_hydroxide_solution",
    "sugar",
    "sulfur",
    "sulfur_dioxide",
    "sulfur_trioxide",
    "sulfuric_acid",
    "tough",
    "tritium",
    "unsweetened_chocolate"
] as string[];

for fluid in ncFluids {

    // get rid of NC's weird fluid tile things
    var item = itemUtils.getItem("nuclearcraft:fluid_" + fluid);
    if(!isNull(item)) {
        mods.jei.JEI.hide(item);
    }

    purgeFluidFromJEI(fluid);
}

// End of mass removals, now for replacements:

recipes.remove(<nuclearcraft:compound:2>);
mixer.recipeBuilder()
    .outputs(<nuclearcraft:compound:2> * 2)
    .inputs([<minecraft:redstone>, <minecraft:glowstone_dust>])
    .duration(40).EUt(22).buildAndRegister();

recipes.remove(<nuclearcraft:reactor_casing_transparent>);
alloy.recipeBuilder()
    .outputs([<nuclearcraft:reactor_casing_transparent>])
    .inputs([<nuclearcraft:fission_block>, <minecraft:glass>])
    .duration(50).EUt(16).buildAndRegister();

// permutations of ferroboron and lithium ingots/dusts
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:1> * 2])
    .inputs([<ore:ingotFerroboron>, <ore:ingotLithium>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:1> * 2])
    .inputs([<ore:dustFerroboron>, <ore:ingotLithium>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:1> * 2])
    .inputs([<ore:ingotFerroboron>, <ore:dustLithium>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:1> * 2])
    .inputs([<ore:dustFerroboron>, <ore:dustLithium>])
    .duration(300).EUt(16).buildAndRegister();

// permutations of steel and boron ingots/dusts
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:6> * 2])
    .inputs([<ore:ingotSteel>, <ore:ingotBoron>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:6> * 2])
    .inputs([<ore:dustSteel>, <ore:ingotBoron>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:6> * 2])
    .inputs([<ore:ingotSteel>, <ore:dustBoron>])
    .duration(300).EUt(16).buildAndRegister();

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:6> * 2])
    .inputs([<ore:dustSteel>, <ore:dustBoron>])
    .duration(300).EUt(16).buildAndRegister();

// FIXME: this stuff isn't really related to NC at all
//Manyullyn
mixer.recipeBuilder()
    .outputs(<gregtech:meta_item_1:2714> * 4)
    .inputs([<gregtech:meta_item_1:2713> * 4, <gregtech:meta_item_1:2017> * 4, <thermalfoundation:material:1028>])
    .duration(400).EUt(30).buildAndRegister();

//Ardite
mixer.recipeBuilder()
    .outputs(<gregtech:meta_item_1:2713> * 4)
    .inputs([<gregtech:meta_item_1:2232> * 3, <minecraft:blaze_powder>])
    .duration(200).EUt(30).buildAndRegister();

// Remove recipes for items with a specific range of metadata values
function delRange(name as string, start as int, stop as int) {
    for i in start to stop+1 { // endval is exclusive
        var item = itemUtils.getItem(name);
        if(!isNull(item)) {
            recipes.remove(item);
        }
    }
}

// remove table recipes for coolers and replace with canning machine recipes
delRange("nuclearcraft:cooler",1,15);

recipes.remove(<nuclearcraft:cooler:1>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:1>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:water> * 1000])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:2>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:2>])
    .inputs([<nuclearcraft:cooler>, <ore:dustRedstone> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:3>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:3>])
    .inputs([<nuclearcraft:cooler>, <ore:dustNetherQuartz> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:4>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:4>])
    .inputs([<nuclearcraft:cooler>, <ore:dustGold> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:5>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:5>])
    .inputs([<nuclearcraft:cooler>, <ore:dustGlowstone> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:6>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:6>])
    .inputs([<nuclearcraft:cooler>, <ore:dustLapis> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:7>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:7>])
    .inputs([<nuclearcraft:cooler>, <ore:dustDiamond> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:8>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:8>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:helium> * 1000])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:9>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:9>])
    .inputs([<nuclearcraft:cooler>, <ore:dustEnderium> * 16])
    .duration(400).EUt(9).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:10>);
fluid_canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:10>])
    .inputs([<nuclearcraft:cooler>])
    .fluidInputs([<liquid:cryotheum> * 1000])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:11>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:11>])
    .inputs([<nuclearcraft:cooler>, <ore:dustIron> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:12>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:12>])
    .inputs([<nuclearcraft:cooler>, <ore:dustEmerald> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:13>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:13>])
    .inputs([<nuclearcraft:cooler>, <ore:dustCopper> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:14>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:14>])
    .inputs([<nuclearcraft:cooler>, <ore:dustTin> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cooler:15>);
canner.recipeBuilder()
    .outputs([<nuclearcraft:cooler:15>])
    .inputs([<nuclearcraft:cooler>, <ore:dustMagnesium> * 16])
    .duration(400).EUt(2).buildAndRegister();

recipes.remove(<nuclearcraft:cobblestone_generator>);
makeShaped("of_nc_cobblestone_generator",
    <nuclearcraft:cobblestone_generator>,
    ["AAA",
     "B C",
     "AAA"],
    { A : <ore:plateSteel>,
      B : <minecraft:water_bucket:*>,
      C : <minecraft:lava_bucket:*> });

makeShaped("of_nc_cobblestone_generator_mirrored",
    <nuclearcraft:cobblestone_generator>,
    ["AAA",
     "C B",
     "AAA"],
    { A : <ore:plateSteel>,
      B : <minecraft:water_bucket:*>,
      C : <minecraft:lava_bucket:*> });

recipes.remove(<nuclearcraft:water_source>);
makeShaped("of_nc_water_source", <nuclearcraft:water_source>,
    ["AAA",
     "B B",
     "AAA"],
    { A : <ore:plateWroughtIron>,
      B : <minecraft:water_bucket:*> });

//Uranium RTG
recipes.remove(<nuclearcraft:rtg_uranium>);
makeShaped("of_nc_rtg_uranium", <nuclearcraft:rtg_uranium>,
    ["ABA",
     "BCB",
     "ABA"],
    { A : <ore:plateBasic>,
      B : <ore:ingotGraphite>,
      C : <gregtech:compressed_3:12> });

// Basic Plating
recipes.remove(<nuclearcraft:part>);
makeShaped("of_nc_basic_plating", <nuclearcraft:part> * 2,
    ["ABA",
     "BCB",
     "ABA"],
    { A : <ore:ingotTough>,
      B : <ore:plateTungsten>,
      C : <contenttweaker:steelplating> });

// Advanced Plating
recipes.remove(<nuclearcraft:part:1>);
makeShaped("of_nc_advanced_plating", <nuclearcraft:part:1> * 2,
    ["ABA",
     "BCB",
     "ABA"],
    { A : <ore:ingotHardCarbon>,
      B : <ore:plateYttriumBariumCuprate>,
      C : <nuclearcraft:part> });

// DU Plating
recipes.remove(<nuclearcraft:part:2>);
alloy.recipeBuilder()
    .outputs([<nuclearcraft:part:2> * 2])
    .inputs([<nuclearcraft:part:1>, <contenttweaker:stabilizeduranium>])
    .duration(400).EUt(2000).buildAndRegister();

// Elite Plating
recipes.remove(<nuclearcraft:part:3>);
makeShaped("of_nc_elite_plating", <nuclearcraft:part:3>,
    ["ABA",
     "BCB",
     "ABA"],
    { A : <nuclearcraft:gem_dust:1>,
      B : <ore:plateEnderium>,
      C : <nuclearcraft:part:2> });

// unused items
recipes.remove(<nuclearcraft:fission_block:1>);
recipes.remove(<nuclearcraft:cell_block>);

recipes.remove(<nuclearcraft:fission_block>);
makeShaped("of_nc_fission_block", <nuclearcraft:fission_block> * 8,
    ["AAA",
     "ABA",
     "AAA"],
    { A : <nuclearcraft:part>,
      B : <gregtech:metal_casing:7> });

recipes.remove(<nuclearcraft:fission_controller_new_fixed>);
makeShaped("of_nc_fission_controller", <nuclearcraft:fission_controller_new_fixed>,
    ["ABA",
     "BCB",
     "ABA"],
    { A : <nuclearcraft:part:1>,
      B : <ore:circuitExtreme>,
      C : <gregtech:metal_casing:7> });

alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:2> * 2])
    .inputs([<ore:gemDiamond>, <ore:ingotGraphite> * 2])
    .duration(300).EUt(500).buildAndRegister();

// Extreme Alloy - unused
/*
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:10>])
    .inputs([<nuclearcraft:alloy:2>, <ore:ingotTough>])
    .duration(200).EUt(1000).buildAndRegister();
*/

// magnesium diboride - unused
/*
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:3> * 3])
    .inputs([<gregtech:meta_item_1:10038>, <gregtech:meta_item_1:2009> * 2])
    .duration(100).EUt(200).buildAndRegister();
*/

// Thermoconducting Alloy - Unused
/*
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:11> * 2])
    .inputs([<gregtech:meta_item_1:10207>, <thermalfoundation:material:167>])
    .duration(100).EUt(200).buildAndRegister();
*/

// zircaloy - unused
/*
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:12> * 2])
    .inputs([<thermalfoundation:material:166>, <nuclearcraft:ingot:10>])
    .duration(100).EUt(200).buildAndRegister();
*/

reactor.recipeBuilder()
    .outputs(<nuclearcraft:gem_dust:1>)
    .inputs([<ore:orePyrolusite> * 6])
    .fluidInputs([<liquid:sulfuric_acid> * 3000])
    .fluidOutputs([<liquid:manganese> * 4320])
    .duration(200).EUt(2000).buildAndRegister();

reactor.recipeBuilder()
    .outputs(<nuclearcraft:gem_dust:1>)
    .inputs([<ore:oreRedstone> * 12])
    .fluidInputs([<liquid:sulfuric_acid> * 6000])
    .fluidOutputs([<liquid:redstone> * 19008])
    .duration(200).EUt(2000).buildAndRegister();

reactor.recipeBuilder().inputs([<contenttweaker:t2laser>])
    .outputs(<contenttweaker:t3laser>)
    .fluidInputs([<liquid:radon> * 1000])
    .duration(200).EUt(2000).buildAndRegister();

recipes.remove(<nuclearcraft:fission_port>);
recipes.addShapeless("of_nc_fission_port", <nuclearcraft:fission_port>,
    [<nuclearcraft:fission_block>, <minecraft:hopper>]);

recipes.remove(<nuclearcraft:part:4>);
makeShaped("of_nc_coppersolenoid", <nuclearcraft:part:4>,
    ["AAA",
     "ABA",
     "AAA"],
    { A : <ore:wireFineCopper>,
      B : <ore:stickStainlessSteel> });


// unused part
recipes.remove(<nuclearcraft:part:5>);
/*
makeShaped("of_nc_magnesium_diboride_solenoid", <nuclearcraft:part:5>,
    ["AAA",
     "ABA",
     "AAA"],
    { A : <ore:wireFineTungsten>,
      B : <ore:ingotMagnesiumDiboride> });
*/

// Uranium 235 - from dust
thermal_sep.recipeBuilder()
    .outputs(<nuclearcraft:uranium:4>)
    .inputs([<gregtech:meta_item_1:2076>])
    .duration(3200).EUt(48).buildAndRegister();

// Uranium 235 - from ingot
thermal_sep.recipeBuilder()
    .outputs(<nuclearcraft:uranium:4>)
    .inputs([<gregtech:meta_item_1:10076>])
    .duration(3200).EUt(48).buildAndRegister();

