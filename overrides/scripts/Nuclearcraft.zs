import crafttweaker.game.IGame;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.mods.IMod;
import crafttweaker.oredict.IOreDictEntry;
import mods.contenttweaker.Fluid;
import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;

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
//FIXME: NC lists this next one in its docs but CT doesn't like it. Disabling for now.
//mods.nuclearcraft.steam_turbine.removeAllRecipes();
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

zenClass Removal {

    var item as IItemStack;
    var hasFurnace as bool = false;

    zenConstructor(item as IItemStack) {
        this.item = item;
    }

    zenConstructor(item as IItemStack, hasFurnace as bool) {
        this.item = item;
        this.hasFurnace = hasFurnace;
    }

}


// Nuclearcraft Item Removals
val removals as Removal[] = [
    Removal(<nuclearcraft:accelerator_electromagnet_idle>),
    Removal(<nuclearcraft:alloy:3>), // Magnesium Diboride
    Removal(<nuclearcraft:alloy:4>), // Lithium Manganese Dioxide
    Removal(<nuclearcraft:alloy:7>), // Shibuichi Alloy
    Removal(<nuclearcraft:alloy:8>), // Tin Silver Alloy
    Removal(<nuclearcraft:alloy:9>), // Lead Platinum Alloy
    Removal(<nuclearcraft:alloy:11>), // Thermoconducting Alloy
    Removal(<nuclearcraft:alloy:12>), // Zircaloy
    Removal(<nuclearcraft:alloy:13>), // Silicon Carbide
    Removal(<nuclearcraft:alloy:14>), // SiC SiC Ceramic Matrix Composite
    Removal(<nuclearcraft:alloy:15>), // HSLA Steel
    Removal(<nuclearcraft:bin>),
    Removal(<nuclearcraft:boots_hazmat>),
    Removal(<nuclearcraft:boron:0>), // all boron isotopes
    Removal(<nuclearcraft:boron:1>),
    Removal(<nuclearcraft:boron:2>),
    Removal(<nuclearcraft:boron:3>),
    Removal(<nuclearcraft:chest_hazmat>),
    Removal(<nuclearcraft:cocoa_butter>),
    Removal(<nuclearcraft:cocoa_solids>),
    Removal(<nuclearcraft:compound:0>), // Calcium Sulfate
    Removal(<nuclearcraft:compound:1>), // Crystal Binder
    Removal(<nuclearcraft:compound:3>), // Sodium Fluoride
    Removal(<nuclearcraft:compound:4>), // Potassium Fluoride
    Removal(<nuclearcraft:compound:5>), // Sodium Hydroxide
    Removal(<nuclearcraft:compound:6>), // Potassium Hydroxide
    Removal(<nuclearcraft:compound:7>), // Borax
    Removal(<nuclearcraft:compound:8>), // Dimensional Blend
    Removal(<nuclearcraft:compound:9>), // Carbon-Manganese Blend
    Removal(<nuclearcraft:compound:10>), // Alugentum Dust
    Removal(<nuclearcraft:dark_chocolate>),
    Removal(<nuclearcraft:decay_generator>),
    Removal(<nuclearcraft:dry_earth>),
    Removal(<nuclearcraft:dust:10>), // Zirconium Dust
    Removal(<nuclearcraft:dust_oxide>),   // Thorium Oxide Dust
    Removal(<nuclearcraft:dust_oxide:1>), // Uranium Oxide Dust
    Removal(<nuclearcraft:dust_oxide:2>, true), // Manganese Oxide Dust
    Removal(<nuclearcraft:dust_oxide:3>), // Manganese Dioxide Dust
    Removal(<nuclearcraft:electromagnet_supercooler_idle>),
    Removal(<nuclearcraft:fission_controller_idle>),
    Removal(<nuclearcraft:flour>),
    Removal(<nuclearcraft:fusion_connector>),
    Removal(<nuclearcraft:fusion_core>),
    Removal(<nuclearcraft:fusion_electromagnet_idle>),
    Removal(<nuclearcraft:fusion_electromagnet_transparent_idle>),
    Removal(<nuclearcraft:geiger_counter>),
    Removal(<nuclearcraft:gelatin>),
    Removal(<nuclearcraft:gem:0>), // all NC gems
    Removal(<nuclearcraft:gem:1>),
    Removal(<nuclearcraft:gem:2>),
    Removal(<nuclearcraft:gem:3>),
    Removal(<nuclearcraft:gem:4>),
    Removal(<nuclearcraft:gem:5>),
    Removal(<nuclearcraft:gem:6>),
    Removal(<nuclearcraft:gem_dust:4>), // Hexagonal Boron Nitride
    Removal(<nuclearcraft:gem_dust:5>), // Crushed Fluorite
    Removal(<nuclearcraft:gem_dust:6>), // Sulfur
    Removal(<nuclearcraft:gem_dust:8>), // Crushed Villiaumite
    Removal(<nuclearcraft:gem_dust:9>), // Crushed Carobbiite
    Removal(<nuclearcraft:gem_dust:10>),// Crushed Arsenic
    Removal(<nuclearcraft:gem_dust:11>),// Crushed End Stone
    Removal(<nuclearcraft:graham_cracker>),
    Removal(<nuclearcraft:ground_cocoa_nibs>),
    Removal(<nuclearcraft:heat_exchanger_condenser_tube_copper>),
    Removal(<nuclearcraft:heat_exchanger_condenser_tube_hard_carbon>),
    Removal(<nuclearcraft:heat_exchanger_condenser_tube_thermoconducting>),
    Removal(<nuclearcraft:heat_exchanger_controller>),
    Removal(<nuclearcraft:heat_exchanger_frame>),
    Removal(<nuclearcraft:heat_exchanger_glass>),
    Removal(<nuclearcraft:heat_exchanger_tube_copper>),
    Removal(<nuclearcraft:heat_exchanger_tube_hard_carbon>),
    Removal(<nuclearcraft:heat_exchanger_tube_thermoconducting>),
    Removal(<nuclearcraft:heat_exchanger_vent>),
    Removal(<nuclearcraft:heat_exchanger_wall>),
    Removal(<nuclearcraft:helm_hazmat>),
    Removal(<nuclearcraft:ingot:10>, true), // Zirconium Ingot
    Removal(<nuclearcraft:ingot_block:10>), // Zirconium Block
    Removal(<nuclearcraft:ingot_oxide>, true),    // Thorium Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:1>, true),  // Uranium Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:2>, true),  // Manganese Oxide Ingot
    Removal(<nuclearcraft:ingot_oxide:3>, true),  // Manganese Dioxide Ingot
    Removal(<nuclearcraft:legs_hazmat>),
    Removal(<nuclearcraft:lithium:0>), // all lithium isotopes
    Removal(<nuclearcraft:lithium:1>),
    Removal(<nuclearcraft:lithium:2>),
    Removal(<nuclearcraft:lithium:3>),
    Removal(<nuclearcraft:lithium_ion_battery_advanced>),
    Removal(<nuclearcraft:lithium_ion_battery_basic>),
    Removal(<nuclearcraft:lithium_ion_battery_du>),
    Removal(<nuclearcraft:lithium_ion_battery_elite>),
    Removal(<nuclearcraft:lithium_ion_cell>),
    Removal(<nuclearcraft:marshmallow>),
    Removal(<nuclearcraft:milk_chocolate>),
    Removal(<nuclearcraft:moresmore>),
    Removal(<nuclearcraft:part:5>),  // Magnesium Diboride Solenoid
    Removal(<nuclearcraft:part:6>),  // Bioplastic
    Removal(<nuclearcraft:part:11>), // Empty Frame
    Removal(<nuclearcraft:part:13>), // Silicon Carbide Fiber
    Removal(<nuclearcraft:portable_ender_chest>),
    Removal(<nuclearcraft:radiation_scrubber>),
    Removal(<nuclearcraft:radaway_slow>),
    Removal(<nuclearcraft:rad_shielding:0>), // Light Rad Shielding
    Removal(<nuclearcraft:rad_shielding:1>), // Medium Rad Shielding
    Removal(<nuclearcraft:rad_shielding:2>), // Heavy Rad Shielding
    Removal(<nuclearcraft:rad_x>),
    Removal(<nuclearcraft:roasted_cocoa_beans>, true),
    Removal(<nuclearcraft:salt_fission_beam>),
    Removal(<nuclearcraft:salt_fission_computer_port>),
    Removal(<nuclearcraft:salt_fission_distributor>),
    Removal(<nuclearcraft:salt_fission_frame>),
    Removal(<nuclearcraft:salt_fission_glass>),
    Removal(<nuclearcraft:salt_fission_heater>),
    Removal(<nuclearcraft:salt_fission_moderator>),
    Removal(<nuclearcraft:salt_fission_redstone_port>),
    Removal(<nuclearcraft:salt_fission_retriever>),
    Removal(<nuclearcraft:salt_fission_vent>),
    Removal(<nuclearcraft:salt_fission_vessel>),
    Removal(<nuclearcraft:salt_fission_wall>),
    Removal(<nuclearcraft:smore>),
    Removal(<nuclearcraft:solar_panel_advanced>),
    Removal(<nuclearcraft:solar_panel_basic>),
    Removal(<nuclearcraft:solar_panel_du>),
    Removal(<nuclearcraft:solar_panel_elite>),
    Removal(<nuclearcraft:tiny_dust_lead>),
    Removal(<nuclearcraft:turbine_controller>),
    Removal(<nuclearcraft:turbine_dynamo_coil:0>),
    Removal(<nuclearcraft:turbine_dynamo_coil:1>),
    Removal(<nuclearcraft:turbine_dynamo_coil:2>),
    Removal(<nuclearcraft:turbine_dynamo_coil:3>),
    Removal(<nuclearcraft:turbine_dynamo_coil:4>),
    Removal(<nuclearcraft:turbine_dynamo_coil:5>),
    Removal(<nuclearcraft:turbine_frame>),
    Removal(<nuclearcraft:turbine_glass>),
    Removal(<nuclearcraft:turbine_inlet>),
    Removal(<nuclearcraft:turbine_outlet>),
    Removal(<nuclearcraft:turbine_rotor_bearing>),
    Removal(<nuclearcraft:turbine_rotor_blade_extreme>),
    Removal(<nuclearcraft:turbine_rotor_blade_sic_sic_cmc>),
    Removal(<nuclearcraft:turbine_rotor_blade_steel>),
    Removal(<nuclearcraft:turbine_rotor_shaft>),
    Removal(<nuclearcraft:turbine_rotor_stator>),
    Removal(<nuclearcraft:turbine_wall>),
    Removal(<nuclearcraft:unsweetened_chocolate>),
    Removal(<nuclearcraft:upgrade:0>), // Speed Upgrade (NC Machines)
    Removal(<nuclearcraft:upgrade:1>), // Energy Upgrade (NC Machines)
    Removal(<nuclearcraft:voltaic_pile_advanced>),
    Removal(<nuclearcraft:voltaic_pile_basic>),
    Removal(<nuclearcraft:voltaic_pile_du>),
    Removal(<nuclearcraft:voltaic_pile_elite>),
] as Removal[];      

for removal in removals {
    if(removal.hasFurnace) {
        furnace.remove(removal.item);
    }
    mods.jei.JEI.removeAndHide(removal.item);
}

zenClass Material {
    var name as string = "";
    var fissileMetas as int[] = [];
    var fuelMetas as int[] = [];
    var depletedFuelMetas as int[] = [];

    zenConstructor(
        name as string,
        fissileMetas as int[],
        fuelMetas as int[],
        depletedFuelMetas as int[])
    {
        this.name = name;
        this.fissileMetas = fissileMetas;
        this.fuelMetas = fuelMetas;
        this.depletedFuelMetas = depletedFuelMetas;
    }

    function fissileItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:" + this.name, meta);
    }

    function fuelItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:fuel_" + this.name, meta);
    }

    function depletedFuelItem(meta as int) as IItemStack {
        return itemUtils.getItem("nuclearcraft:depleted_fuel_" + this.name, meta);
    }

}

// oxides are odd-valued metadata values beginning with 1.
var fuelObjs as Material[] = [
    Material("americium",   [1,3,5,7,9,11], [1,3], [1,3]),
    Material("berkelium",   [1,3,5,7],      [1,3], [1,3]),
    Material("californium", [1,3,5,7,9,11,13,15], [1,3,5,7], [1,3,5,7]),
    Material("curium",      [1,3,5,7,9,11,13,15], [1,3,5,7,9,11], [1,3,5,7,9,11]),
    Material("neptunium",   [1,3,5,7], [1,3], [1,3]),
    Material("plutonium",   [1,3,5,7,9,11,13,15], [1,3,5,7], [1,3,5,7]),
    Material("thorium",     [1,3,5,7], [1,], [1,]),
    Material("uranium",     [1,3,5,7,9,11], [1,3,5,7], [1,3,5,7]),
    Material("mixed_oxide", [], [0,1], [0,1]),
    Material("ic2",         [], [], [0,1]),
];

for fuelObj in fuelObjs {
    // Clean up oxide fissiles
    for meta in fuelObj.fissileMetas {
        var oxide   = fuelObj.fissileItem(meta);
        var regular = fuelObj.fissileItem(meta - 1);

        // remove de-oxidation smelting?
        furnace.remove(regular, oxide);

        // base fissiles have no crafting table recipe so just hide them
        mods.jei.JEI.hide(oxide);
    }

    // Clean up oxide fissile fuels
    for meta in fuelObj.fuelMetas {
        var oxide   = fuelObj.fuelItem(meta);
        var regular = fuelObj.fuelItem(meta - 1);

        // Remove deoxidation smelting recipes
        furnace.remove(regular, oxide);

        // remove the oxide fuel split recipe from the TC
        thermal_sep.findRecipe(48, [oxide], null).remove();

        // remove the JEI entry and crafting table recipe
        mods.jei.JEI.removeAndHide(oxide);
    }

    // Clean up oxide depleted fuels
    for meta in fuelObj.depletedFuelMetas {
        var oxide   = fuelObj.depletedFuelItem(meta);
        var regular = fuelObj.depletedFuelItem(meta - 1);

        // Remove deoxidation smelting recipes
        furnace.remove(regular, oxide);

        // hide from JEI but there's no table recipes
        mods.jei.JEI.hide(oxide);

        // remove oxide recipes from the fission reactor recipe list
        mods.nuclearcraft.fission.removeRecipeWithOutput([oxide]);

        // Remove oxide depleted fuel recipes from the centrifuge
        // One of the ic2 ones threw a null here.
        val cr as Recipe = centrifuge.findRecipe(24, [oxide], null);
        if(!isNull(cr)) {
            cr.remove();
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
    "arsenic",
    "bas",
    "bef2",
    "borax_solution",
    "boric_acid",
    "boron",
    "boron10",
    "boron11",
    "boron_nitride_solution",
    "calcium_sulfate_solution",
    "chocolate_liquor",
    "cocoa_butter",
    "condensate_water",
    "dark_chocolate",
    "diborane",
    "ethanol",
    "ethene",
    "exhaust_steam",
    "ferroboron",
    "flibe",
    "fluorite_water",
    "fluoromethane",
    "gelatin",
    "hard_carbon",
    "helium3",
    "high_pressure_steam",
    "hydrated_gelatin",
    "hydrofluoric_acid",
    "koh",
    "lif",
    "liquidhelium",
    "liquid_nitrogen",
    "lithium",
    "lithium6",
    "lithium7",
    "low_pressure_steam",
    "low_quality_steam",
    "manganese_dioxide",
    "marshmallow",
    "milk",
    "milk_chocolate",
    "nak",
    "nak_hot",
    "naoh",
    "neutron",
    "oxygen_difluoride",
    "plasma",
    "potassium_fluoride_solution",
    "potassium_hydroxide_solution",
    "preheated_water",
    "radaway",
    "radaway_slow",
    "sic_vapor",
    "sodium_fluoride_solution",
    "sodium_hydroxide_solution",
    "sugar",
    "sulfur",
    "tough",
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

val sharedFluids as string[] = [
    "ammonia",
    "beryllium",
    "carbon_dioxide",
    "carbon_monoxide",
    "corium",
    "deuterium",
    "fluorine",
    "helium",
    "hydrogen",
    "manganese",
    "methanol",
    "nitrogen",
    "oxygen",
    "potassium",
    "silver",
    "sodium",
    "sulfur_dioxide",
    "sulfuric_acid",
    "sulfur_trioxide",
    "tritium",
] as string[];

// these ones overlap other mods's fluids. Just remove the weird tile item
for fluid in sharedFluids {
    // get rid of NC's weird fluid tile things
    var item = itemUtils.getItem("nuclearcraft:fluid_" + fluid);
    if(!isNull(item)) {
        mods.jei.JEI.hide(item);
    }
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

// remove table recipes for coolers and replace with canning machine recipes

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

// Extreme Alloy
alloy.recipeBuilder()
    .outputs([<nuclearcraft:alloy:10>])
    .inputs([<nuclearcraft:alloy:2>, <ore:ingotTough>])
    .duration(200).EUt(1000).buildAndRegister();

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

