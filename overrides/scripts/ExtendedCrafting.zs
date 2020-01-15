import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

fluid_extractor.recipeBuilder().inputs([<ore:dustCryotheum>]).fluidOutputs([<liquid:cryotheum>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<ore:dustPyrotheum>]).fluidOutputs([<liquid:pyrotheum>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<ore:dustAerotheum>]).fluidOutputs([<liquid:aerotheum>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<ore:dustPetrotheum>]).fluidOutputs([<liquid:petrotheum>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<ore:gemEnderPearl>]).fluidOutputs([<liquid:ender>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:material:1028>]).fluidOutputs([<liquid:mana>*250]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:coin:1>]).fluidOutputs([<liquid:gold>*48]).duration(40).EUt(8).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:coin:64>]).fluidOutputs([<liquid:copper>*48]).duration(40).EUt(8).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:coin:66>]).fluidOutputs([<liquid:silver>*48]).duration(40).EUt(8).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:coin:69>]).fluidOutputs([<liquid:nickel>*48]).duration(40).EUt(8).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<thermalfoundation:coin:70>]).fluidOutputs([<liquid:platinum>*48]).duration(40).EUt(8).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<deepmoblearning:living_matter_overworldian>]).fluidOutputs([<liquid:xpjuice>*200]).duration(40).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<deepmoblearning:living_matter_hellish>]).fluidOutputs([<liquid:xpjuice>*400]).duration(80).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<deepmoblearning:living_matter_extraterrestrial>]).fluidOutputs([<liquid:xpjuice>*500]).duration(100).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_rice_seed>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_canola_seed>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_flax_seed>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_coffee_seed>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_misc:23>]).fluidOutputs([<liquid:seed_oil>*50]).duration(32).EUt(20).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<actuallyadditions:item_misc:24>]).fluidOutputs([<liquid:seed_oil>*250]).duration(32).EUt(200).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<inspirations:potato_seeds>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(20).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<inspirations:carrot_seeds>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(20).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<inspirations:sugar_cane_seeds>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<inspirations:cactus_seeds>]).fluidOutputs([<liquid:seed_oil>*10]).duration(32).EUt(2).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:thorium>]).fluidOutputs([<liquid:thorium>*144]).duration(200).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:thorium:4>]).fluidOutputs([<liquid:thorium>*144]).duration(200).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:thorium:2>]).fluidOutputs([<liquid:thorium>*16]).duration(20).EUt(32).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:thorium:6>]).fluidOutputs([<liquid:thorium>*16]).duration(20).EUt(32).buildAndRegister();

//Solidified Gasses
solidifier.recipeBuilder().fluidInputs([<liquid:argon> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedargon>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:krypton> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedkrypton>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:xenon> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedxenon>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:chlorine> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedchlorine>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:fluorine> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedfluorine>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:mercury> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedmercury>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:helium> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedhelium>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:neon> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedneon>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:radon> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedradon>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:nitrogen> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiednitrogen>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:oxygen> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedoxygen>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:hydrogen> * 1000]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:solidifiedhydrogen>).duration(500).EUt(16).buildAndRegister();
freezer.recipeBuilder().inputs([<contenttweaker:hotdraconiumingot>]).fluidInputs([<liquid:cryotheum> * 2000]).outputs(<draconicevolution:draconium_ingot>).duration(600).EUt(1200).buildAndRegister();
freezer.recipeBuilder().inputs([<minecraft:ice>]).fluidInputs([<liquid:cryotheum> * 1000]).outputs(<nuclearcraft:block_ice>).duration(600).EUt(1200).buildAndRegister();

solidifier.recipeBuilder().fluidInputs([<liquid:thorium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedthorium>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:uranium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizeduranium>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:uranium235> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizeduranium>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:uranium233> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizeduranium>).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:neptunium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedneptunium> * 2).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:plutonium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedplutonium> * 2).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:plutonium2> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedplutonium> * 2).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:americium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedamericium> * 4).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:curium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedcurium> * 4).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:berkelium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedberkelium> * 8).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:californium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedcalifornium> * 8).duration(500).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:einsteinium> * 144]).notConsumable(<gregtech:meta_item_1:32307>).outputs(<contenttweaker:stabilizedeinsteinium> * 16).duration(500).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<avaritia:resource:1>]).fluidOutputs([<liquid:moltencrystalmatrix>*144]).duration(180).EUt(16).buildAndRegister();
solidifier.recipeBuilder().fluidInputs([<liquid:moltencrystalmatrix> * 144]).notConsumable(<gregtech:meta_item_1:32306>).outputs(<avaritia:resource:1>).duration(500).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<minecraft:dye:4>]).fluidOutputs([<liquid:lapis>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:2216>]).fluidOutputs([<liquid:lapis>*144]).duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<minecraft:quartz>]).fluidOutputs([<liquid:quartz>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:2201>]).fluidOutputs([<liquid:quartz>*144]).duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<minecraft:emerald>]).fluidOutputs([<liquid:emerald>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:2201>]).fluidOutputs([<liquid:quartz>*144]).duration(180).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<minecraft:spawn_egg>.withTag({EntityTag: {id: "minecraft:cow"}})]).fluidOutputs([<liquid:milk>*32000]).duration(400).EUt(30).buildAndRegister();


fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium>]).fluidOutputs([<liquid:uranium233>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium:2>]).fluidOutputs([<liquid:uranium233>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium:4>]).fluidOutputs([<liquid:uranium235>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium:6>]).fluidOutputs([<liquid:uranium235>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium:8>]).fluidOutputs([<liquid:uranium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:uranium:10>]).fluidOutputs([<liquid:uranium>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:neptunium>]).fluidOutputs([<liquid:neptunium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:neptunium:2>]).fluidOutputs([<liquid:neptunium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:neptunium:4>]).fluidOutputs([<liquid:neptunium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:neptunium:6>]).fluidOutputs([<liquid:neptunium>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:10052>], []).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:10053>], []).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:9052>], []).remove();
fluid_extractor.findRecipe(32, [<gregtech:meta_item_1:9053>], []).remove();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:2>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:4>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:6>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:8>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:10>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:12>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:plutonium:14>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:10052>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:10053>]).fluidOutputs([<liquid:plutonium2>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:9052>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<gregtech:meta_item_1:9053>]).fluidOutputs([<liquid:plutonium2>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium>]).fluidOutputs([<liquid:curium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:2>]).fluidOutputs([<liquid:curium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:4>]).fluidOutputs([<liquid:curium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:6>]).fluidOutputs([<liquid:curium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:8>]).fluidOutputs([<liquid:curium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:10>]).fluidOutputs([<liquid:curium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:12>]).fluidOutputs([<liquid:curium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:curium:14>]).fluidOutputs([<liquid:curium>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium>]).fluidOutputs([<liquid:americium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium:2>]).fluidOutputs([<liquid:americium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium:4>]).fluidOutputs([<liquid:americium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium:6>]).fluidOutputs([<liquid:americium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium:8>]).fluidOutputs([<liquid:americium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:americium:10>]).fluidOutputs([<liquid:americium>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:berkelium>]).fluidOutputs([<liquid:berkelium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:berkelium:2>]).fluidOutputs([<liquid:berkelium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:berkelium:4>]).fluidOutputs([<liquid:berkelium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:berkelium:6>]).fluidOutputs([<liquid:berkelium>*16]).duration(20).EUt(16).buildAndRegister();

fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium>]).fluidOutputs([<liquid:californium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:2>]).fluidOutputs([<liquid:californium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:4>]).fluidOutputs([<liquid:californium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:6>]).fluidOutputs([<liquid:californium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:8>]).fluidOutputs([<liquid:californium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:10>]).fluidOutputs([<liquid:californium>*16]).duration(20).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:12>]).fluidOutputs([<liquid:californium>*144]).duration(180).EUt(16).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<nuclearcraft:californium:14>]).fluidOutputs([<liquid:californium>*16]).duration(20).EUt(16).buildAndRegister();

recipes.removeByRecipeName("gregtech:nugget_assembling_235");

//Noble Gasses
centrifuge.findRecipe(30, [], [<liquid:liquid_air> * 53000]).remove();
centrifuge.findRecipe(30, [], [<liquid:noble_gases> * 43000]).remove();

var bsingot = <gregtech:meta_item_1:10231>;
var bsplate = <gregtech:meta_item_1:12231>;
mods.jei.JEI.removeAndHide(<extendedcrafting:material>);
mods.jei.JEI.removeAndHide(bsplate);
mods.jei.JEI.removeAndHide(<extendedcrafting:storage>);
mods.jei.JEI.removeAndHide(<extendedcrafting:material:3>);
mods.jei.JEI.removeAndHide(<extendedcrafting:table_basic>);

recipes.remove(<extendedcrafting:compressor>);
recipes.addShaped(<extendedcrafting:compressor>, [
	[bsingot, <extendedcrafting:material:16>, bsingot],
	[<extendedcrafting:material:10>, <extendedcrafting:frame>, <extendedcrafting:material:10>],
	[bsingot, bsplate, bsingot]]);

recipes.remove(<extendedcrafting:guide>);
recipes.remove(<extendedcrafting:frame>);
recipes.addShaped(<extendedcrafting:frame>, [
	[bsingot, <minecraft:glass>, bsingot],
	[<minecraft:glass>, bsplate, <minecraft:glass>],
	[bsingot, <minecraft:glass>, bsingot]]);

recipes.remove(<extendedcrafting:interface>);
recipes.addShaped(<extendedcrafting:interface>, [
	[bsingot, <extendedcrafting:material:10>, bsingot],
	[<extendedcrafting:material:18>, <extendedcrafting:frame>, <extendedcrafting:material:18>],
	[bsingot, bsplate, bsingot]]);

recipes.addShaped(<extendedcrafting:pedestal>, [
	[null, bsingot, null],
	[null, bsingot, null],
	[bsplate, <gregtech:compressed_10:11>, bsplate]]);

<extendedcrafting:material:19>.displayName = "Conflux Component";
recipes.remove(<extendedcrafting:material:19>);
recipes.addShaped(<extendedcrafting:material:19>, [
	[null, <extendedcrafting:material:14>, null],
	[<extendedcrafting:material:15>, <extendedcrafting:material:18>, <extendedcrafting:material:16>],
	[null, <extendedcrafting:material:17>, null]]);
<extendedcrafting:material:13>.displayName = "Conflux Catalyst";
recipes.remove(<extendedcrafting:material:13>);
recipes.addShaped(<extendedcrafting:material:13>, [
	[null, <extendedcrafting:material:8>, null],
	[<extendedcrafting:material:9>, <extendedcrafting:material:12>, <extendedcrafting:material:10>],
	[null, <extendedcrafting:material:11>, null]]);

<extendedcrafting:material:19>.displayName = "Conflux Component";
recipes.remove(<extendedcrafting:material:19>);
recipes.addShaped(<extendedcrafting:material:19>, [
	[null, <extendedcrafting:material:14>, null],
	[<extendedcrafting:material:15>, <extendedcrafting:material:18>, <extendedcrafting:material:16>],
	[null, <extendedcrafting:material:17>, null]]);
<extendedcrafting:material:13>.displayName = "Conflux Catalyst";
recipes.remove(<extendedcrafting:material:13>);
recipes.addShaped(<extendedcrafting:material:13>, [
	[null, <extendedcrafting:material:8>, null],
	[<extendedcrafting:material:9>, <extendedcrafting:material:12>, <extendedcrafting:material:10>],
	[null, <extendedcrafting:material:11>, null]]);

recipes.removeByRecipeName("extrautils2:angel_ring_0");
recipes.removeByRecipeName("extrautils2:angel_ring_1");
recipes.removeByRecipeName("extrautils2:angel_ring_2");
recipes.removeByRecipeName("extrautils2:angel_ring_3");
recipes.removeByRecipeName("extrautils2:angel_ring_4");
recipes.removeByRecipeName("extrautils2:angel_ring_5");

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:angelring>,[
	[null,<ore:ingotRoseGold>,<ore:ingotRoseGold>,<ore:ingotRoseGold>,null],
	[<ore:ingotRoseGold>,null,<simplyjetpacks:itemjetpack:12>,null,<ore:ingotRoseGold>],
	[<ore:ingotRoseGold>,<simplyjetpacks:itemjetpack:4>,null,<simplyjetpacks:itemjetpack:4>,<ore:ingotRoseGold>],
	[<ore:ingotRoseGold>,null,<simplyjetpacks:itemjetpack:12>,null,<ore:ingotRoseGold>],
	[null,<ore:ingotRoseGold>,<ore:ingotRoseGold>,<ore:ingotRoseGold>,null]]);

///////////////////////// ZPM  ///////////////////////////////

mods.extendedcrafting.TableCrafting.addShaped(<gregtech:meta_item_1:32599>, [
[null,	null,	<nuclearcraft:part:3>,	<nuclearcraft:part:3>,					<nuclearcraft:part:3>,						<nuclearcraft:part:3>,						<nuclearcraft:part:3>,		null,	null],
[null,	null,	<nuclearcraft:part:3>,	<contenttweaker:stabilizedberkelium>,	<contenttweaker:stabilizedcalifornium>,		<contenttweaker:stabilizedberkelium>,		<nuclearcraft:part:3>,		null,	null],
[null,	null,	<nuclearcraft:part:3>,	<contenttweaker:stabilizedcalifornium>,	<contenttweaker:stabilizedberkelium>,		<contenttweaker:stabilizedcalifornium>,		<nuclearcraft:part:3>,		null,	null],
[null,	null,	<nuclearcraft:part:3>,	<contenttweaker:stabilizedberkelium>,	<contenttweaker:stabilizedcalifornium>,		<contenttweaker:stabilizedberkelium>,		<nuclearcraft:part:3>,		null,	null],
[null,	null,	null,					<ore:circuitUltimate>,					<ore:circuitUltimate>,						<ore:circuitUltimate>,						null,						null,	null],
[null,	null,	null,					<ore:circuitUltimate>,					<gregtech:meta_item_1:32676>,				<ore:circuitUltimate>,						null,						null,	null],
[null,	null,	null,					<ore:circuitUltimate>,					<gregtech:meta_item_1:32676>,				<ore:circuitUltimate>,						null, 						null,	null],
[null,	null,	null,					<ore:circuitUltimate>,					<ore:circuitUltimate>,						<ore:circuitUltimate>,						null, 						null,	null],
[null,	null,	null,					<nuclearcraft:part:3>,					<nuclearcraft:part:3>,						<nuclearcraft:part:3>,						null,						null,	null]]);





//Luminescence
recipes.remove(<extendedcrafting:material:7>);
reactor.recipeBuilder().inputs([<nuclearcraft:compound:2>]).inputs([<gregtech:meta_item_1:2001>]).fluidInputs([<liquid:phosphoric_acid> * 2000]).outputs(<extendedcrafting:material:7> * 4).EUt(30).duration(20).buildAndRegister();

// Extended Crafting Components
recipes.remove(<extendedcrafting:material:14>);
recipes.remove(<extendedcrafting:material:15>);
recipes.remove(<extendedcrafting:material:16>);
recipes.remove(<extendedcrafting:material:17>);
recipes.remove(<extendedcrafting:material:18>);
recipes.addShaped(<extendedcrafting:material:18>, [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],[<gregtech:meta_item_1:12207>, <extendedcrafting:material:24>]]);
recipes.addShaped(<extendedcrafting:material:17>, [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],[<gregtech:meta_item_1:12076>, <gregtech:meta_item_1:12113>]]);
recipes.addShaped(<extendedcrafting:material:16>, [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],[<gregtech:meta_item_1:12001>, <gregtech:meta_item_1:12218>]]);
recipes.addShaped(<extendedcrafting:material:15>, [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],[<gregtech:meta_item_1:12112>, <gregtech:meta_item_1:12330>]]);
recipes.addShaped(<extendedcrafting:material:14>, [[<gregtech:meta_item_1:12231>, <extendedcrafting:material:7>],[<gregtech:meta_item_1:12201>, <gregtech:meta_item_1:12033>]]);

// Extended Crafting Catalysts
recipes.remove(<extendedcrafting:material:8>);
recipes.remove(<extendedcrafting:material:9>);
recipes.remove(<extendedcrafting:material:10>);
recipes.remove(<extendedcrafting:material:11>);
recipes.remove(<extendedcrafting:material:12>);
recipes.addShaped(<extendedcrafting:material:12>, [[null, <extendedcrafting:material:18>, null],[<extendedcrafting:material:18>, <gregtech:meta_item_1:12231>, <extendedcrafting:material:18>], [null, <extendedcrafting:material:18>, null]]);
recipes.addShaped(<extendedcrafting:material:11>, [[null, <extendedcrafting:material:17>, null],[<extendedcrafting:material:17>, <gregtech:meta_item_1:12231>, <extendedcrafting:material:17>], [null, <extendedcrafting:material:17>, null]]);
recipes.addShaped(<extendedcrafting:material:10>, [[null, <extendedcrafting:material:16>, null],[<extendedcrafting:material:16>, <gregtech:meta_item_1:12231>, <extendedcrafting:material:16>], [null, <extendedcrafting:material:16>, null]]);
recipes.addShaped(<extendedcrafting:material:9>, [[null, <extendedcrafting:material:15>, null],[<extendedcrafting:material:15>, <gregtech:meta_item_1:12231>, <extendedcrafting:material:15>], [null, <extendedcrafting:material:15>, null]]);
recipes.addShaped(<extendedcrafting:material:8>, [[null, <extendedcrafting:material:14>, null],[<extendedcrafting:material:14>, <gregtech:meta_item_1:12231>, <extendedcrafting:material:14>], [null, <extendedcrafting:material:14>, null]]);

//Advanced Extended Crafting Table
recipes.remove(<extendedcrafting:table_advanced>);
recipes.addShapeless(<extendedcrafting:table_advanced> * 2,[<extendedcrafting:table_advanced>]);
recipes.addShaped(<extendedcrafting:table_advanced>, [
	[<extendedcrafting:material:15>, <extendedcrafting:material:8>, <extendedcrafting:material:15>],
	[<avaritia:compressed_crafting_table>, <extendedcrafting:material:9>, <avaritia:compressed_crafting_table>],
	[<extendedcrafting:material:15>, <extendedcrafting:material:8>, <extendedcrafting:material:15>]]);
<extendedcrafting:table_advanced>.displayName = "Extended Crafting Table";

//Elite Extended Crafting Table
recipes.remove(<extendedcrafting:table_elite>);
recipes.addShapeless(<extendedcrafting:table_elite> * 2,[<extendedcrafting:table_elite>]);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:table_elite>,[
	[<gregtech:compressed_0>,bsplate,<extendedcrafting:material:10>,bsplate,<gregtech:compressed_0>],
	[bsplate,<extendedcrafting:material:16>, <extendedcrafting:material:16>, <extendedcrafting:material:16>,bsplate],
	[<extendedcrafting:material:10>, <extendedcrafting:material:16>, <extendedcrafting:table_advanced>, <extendedcrafting:material:16>,<extendedcrafting:material:10>],
	[bsplate, <extendedcrafting:material:16>, <extendedcrafting:material:16>, <extendedcrafting:material:16>,bsplate],
	[<gregtech:compressed_0>,bsplate,<extendedcrafting:material:10>,bsplate,<gregtech:compressed_0>]]);
<extendedcrafting:table_elite>.displayName = "Elite Extended Crafting Table";

//Ultimate Extended Crafting Table
recipes.remove(<extendedcrafting:table_ultimate>);
recipes.addShapeless(<extendedcrafting:table_ultimate> * 2,[<extendedcrafting:table_ultimate>]);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:table_ultimate>,[
	[<minecraft:emerald_block>,bsplate,bsplate,<extendedcrafting:material:13>,bsplate,bsplate,<minecraft:emerald_block>],
	[bsplate,<extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>,<extendedcrafting:material:17>,<extendedcrafting:material:17>,bsplate],
	[bsplate,<extendedcrafting:material:17>, bsplate, <extendedcrafting:material:18>, bsplate,<extendedcrafting:material:17>,bsplate],
	[<extendedcrafting:material:13>, <extendedcrafting:material:17>, <extendedcrafting:material:18>, <extendedcrafting:table_elite>, <extendedcrafting:material:18>, <extendedcrafting:material:17>,<extendedcrafting:material:13>],
	[bsplate, <extendedcrafting:material:17>, bsplate, <extendedcrafting:material:18>, bsplate, <extendedcrafting:material:17>,bsplate],
	[bsplate, <extendedcrafting:material:17>, <extendedcrafting:material:17>, <extendedcrafting:material:17>,<extendedcrafting:material:17>,<extendedcrafting:material:17>,bsplate],
	[<minecraft:emerald_block>,bsplate,bsplate,<extendedcrafting:material:13>,bsplate,bsplate,<minecraft:emerald_block>]]);
<extendedcrafting:table_ultimate>.displayName = "Ultimate Extended Crafting Table";

<extendedcrafting:singularity_ultimate>.displayName = "Mote of Omnium";
// FIXME: [ERROR] Input cannot contain null or empty ItemStacks. Inputs: [0xtile.air@32629] //
implosion.recipeBuilder().inputs([<extendedcrafting:singularity_ultimate>]).outputs(<extendedcrafting:material:33>).EUt(30).duration(20).buildAndRegister();
<extendedcrafting:material:33>.displayName = "Omnium Nugget";
<extendedcrafting:material:32>.displayName = "Omnium Ingot";
<extendedcrafting:storage:4>.displayName = "Block of Omnium";



recipes.remove(<minecraft:end_crystal>);
recipes.addShaped(<minecraft:end_crystal>, [
	[<minecraft:glass_pane>,<minecraft:glass_pane>,<minecraft:glass_pane>],
	[<minecraft:glass_pane>,<gregtech:meta_item_1:32725>,<minecraft:glass_pane>],
	[<minecraft:glass_pane>,<minecraft:glass_pane>,<minecraft:glass_pane>]]);



///////////////////////// Nether Star  ///////////////////////////////
recipes.remove(<minecraft:nether_star>);
recipes.addShaped(<minecraft:nether_star>, [
	[null, <cns:star_fragment>, null],
	[<contenttweaker:netherstarwest>, <cns:star_core>, <contenttweaker:netherstareast>],
	[null, <contenttweaker:netherstarsouth>, null]]);

<cns:star_fragment>.displayName = "Nether Star Tip North";
recipes.remove(<cns:star_fragment>);
recipes.addShaped(<cns:star_fragment>, [
	[null, <minecraft:quartz>, null],
	[<minecraft:quartz>, <thermalfoundation:material:1026>, <minecraft:quartz>],
	[<minecraft:quartz>, <thermalfoundation:material:1026>, <minecraft:quartz>]]);

recipes.addShaped(<contenttweaker:netherstarsouth>, [
	[<minecraft:quartz>, <thermalfoundation:material:1027>, <minecraft:quartz>],
	[<minecraft:quartz>, <thermalfoundation:material:1027>, <minecraft:quartz>],
	[null, <minecraft:quartz>, null]]);

recipes.addShaped(<contenttweaker:netherstareast>, [
	[<minecraft:quartz>, <minecraft:quartz>, null],
	[<thermalfoundation:material:1024>, <thermalfoundation:material:1024>, <minecraft:quartz>],
	[<minecraft:quartz>, <minecraft:quartz>, null]]);

recipes.addShaped(<contenttweaker:netherstarwest>, [
	[null, <minecraft:quartz>, <minecraft:quartz>],
	[<minecraft:quartz>, <thermalfoundation:material:1025>, <thermalfoundation:material:1025>],
	[null, <minecraft:quartz>, <minecraft:quartz>]]);

recipes.remove(<cns:star_core>);
recipes.addShaped(<cns:star_core> * 4, [
	[<minecraft:quartz>, <thermalfoundation:material:2050>, <minecraft:quartz>],
	[<thermalfoundation:material:2048>, <extendedcrafting:storage:1>, <minecraft:blaze_rod>],
	[<minecraft:quartz>, <thermalfoundation:material:2052>, <minecraft:quartz>]]);

// Basalz Powder
reactor.recipeBuilder().inputs([<gregtech:meta_item_1:2101>]).fluidInputs([<liquid:elementalreduction> * 100]).outputs(<thermalfoundation:material:2053>).EUt(90).duration(160).buildAndRegister();
reactor.recipeBuilder().inputs([<gregtech:meta_item_1:2106>]).fluidInputs([<liquid:elementalreduction> * 100]).outputs(<thermalfoundation:material:2053>).EUt(90).duration(160).buildAndRegister();

//Blitz Powder
reactor.recipeBuilder().inputs(<contenttweaker:endstonedust>).fluidInputs([<liquid:elementalreduction> * 100]).outputs(<thermalfoundation:material:2051>).EUt(90).duration(160).buildAndRegister();

//Blizz Powder
reactor.recipeBuilder().inputs(<minecraft:snow>).fluidInputs([<liquid:elementalreduction> * 100]).outputs(<thermalfoundation:material:2049>).EUt(90).duration(160).buildAndRegister();

//Blaze Powder
reactor.recipeBuilder().inputs(<gregtech:meta_item_1:2333>).fluidInputs([<liquid:elementalreduction> * 100]).outputs(<minecraft:blaze_powder>).EUt(90).duration(160).buildAndRegister();

//Elemental Reduction
reactor.recipeBuilder().inputs(<forestry:crafting_material>).fluidInputs([<liquid:hydrofluoric_acid> * 1000]).fluidOutputs(<liquid:elementalreduction> * 1000).EUt(90).duration(80).buildAndRegister();

//Knightslime
reactor.recipeBuilder().inputs(<minecraft:slime>).fluidInputs([<liquid:titanium> * 144]).outputs(<contenttweaker:knightslimeingot>).EUt(400).duration(320).buildAndRegister();

<extendedcrafting:storage:6>.displayName = "Block of Endest Stars";
<extendedcrafting:material:40>.displayName = "Endest Star";
<extendedcrafting:material:41>.displayName = "Endest Star Nugget";

macerator.findRecipe(8, [<minecraft:end_stone>], [null]).remove();

///////////////////////// Omnium  ///////////////////////////////

mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:singularity_ultimate>);
mods.extendedcrafting.TableCrafting.addShaped(<extendedcrafting:singularity_ultimate>, [
[null, 								null, 									<extendedcrafting:material:140>, 		<contenttweaker:solidifiedhydrogen>, 		<contenttweaker:solidifiedhelium>, 		<gregtech:meta_item_1:10036>, 				<extendedcrafting:material:140>, 			null, 									null],
[null, 								<extendedcrafting:material:140>, 		<gregtech:meta_item_1:10007>, 			<gregtech:meta_item_1:2009>, 				<gregtech:meta_item_1:10012>, 			<contenttweaker:solidifiednitrogen>, 		<contenttweaker:solidifiedoxygen>, 			<extendedcrafting:material:140>, 		null],
[<extendedcrafting:material:140>, 	<contenttweaker:solidifiedfluorine>,	<contenttweaker:solidifiedneon>, 		<gregtech:meta_item_1:10063>, 				<gregtech:meta_item_1:10038>, 			<gregtech:meta_item_1:10001>, 				<gregtech:meta_item_1:10061>,				<gregtech:meta_item_1:2050>, 			<extendedcrafting:material:140>],
[<gregtech:meta_item_1:2065>, 		<contenttweaker:solidifiedchlorine>, 	<contenttweaker:solidifiedargon>, 		<gregtech:meta_item_1:10054>, 				<gregtech:meta_item_1:10011>, 			<gregtech:meta_item_1:10072>,				<gregtech:meta_item_1:10077>, 				<gregtech:meta_item_1:10016>, 			<gregtech:meta_item_1:10039>],
[<minecraft:iron_ingot>, 			<gregtech:meta_item_1:10017>, 			<gregtech:meta_item_1:10044>, 			<gregtech:meta_item_1:10018>, 				<contenttweaker:exoticmaterialscatalyst>,<gregtech:meta_item_1:10079>, 				<gregtech:meta_item_1:10025>, 				<gregtech:meta_item_1:2005>,			<contenttweaker:solidifiedkrypton>],
[<gregtech:meta_item_1:10078>,		<gregtech:meta_item_1:10049>,			<gregtech:meta_item_1:10062>, 			<gregtech:meta_item_1:10031>, 				<gregtech:meta_item_1:10071>, 			<gregtech:meta_item_1:10003>, 				<contenttweaker:solidifiedxenon>,			<gregtech:meta_item_1:10034>,			<gregtech:meta_item_1:10074>],
[<extendedcrafting:material:140>, 	<gregtech:meta_item_1:10047>, 			<gregtech:meta_item_1:10032>, 			<gregtech:meta_item_1:10051>, 				<minecraft:gold_ingot>,					<contenttweaker:solidifiedmercury>, 		<contenttweaker:solidifiedradon>, 			<contenttweaker:stabilizedthorium>, 	<extendedcrafting:material:140>],
[null, 								<extendedcrafting:material:140>, 		<contenttweaker:stabilizeduranium>, 	<contenttweaker:stabilizedneptunium>, 		<contenttweaker:stabilizedplutonium>, 	<contenttweaker:stabilizedamericium>, 		<contenttweaker:stabilizedcurium>, 			<extendedcrafting:material:140>, 		null],
[null, 								null, 									<extendedcrafting:material:140>, 		<contenttweaker:stabilizedberkelium>, 		<contenttweaker:stabilizedcalifornium>, <contenttweaker:stabilizedeinsteinium>, 	<extendedcrafting:material:140>, 			null, 									null]]);




//////////////////// Exotic Materials Catalyst ////////////////////////
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:exoticmaterialscatalyst>, [
[<gregtech:meta_item_1:10133>,null,null,<gregtech:meta_item_1:10232>,null,null,<gregtech:meta_item_1:10127>],
[null,<gregtech:meta_item_1:10129>,null,<thermalfoundation:material:136>,null,<gregtech:meta_item_1:10714>,null],
[null,null,<thermalfoundation:material:167>,<gregtech:meta_item_1:10233>,<modularmachinery:itemmodularium>,null,null],
[<gregtech:meta_item_1:10301>,<enderio:item_alloy_ingot:5>,<redstonearsenal:material:32>,<simplyjetpacks:metaitemmods:3>,<avaritia:resource:1>,<enderio:item_alloy_ingot:8>,<enderio:item_alloy_ingot>],
[null,null,<thermalfoundation:material:165>,<enderio:item_alloy_ingot:2>,<enderio:item_alloy_ingot:7>,null,null],
[null,<gregtech:meta_item_1:10303>,null,<enderio:item_alloy_ingot:6>,null,<gregtech:meta_item_1:10302>,null],
[<contenttweaker:knightslimeingot>,null,null,<gregtech:meta_item_1:10304>,null,null,<enderio:item_alloy_ingot:1>]]);



////////////////////////// Crystal Matrix Ingot ///////////////////////
recipes.remove(<avaritia:resource:1>);
mods.extendedcrafting.TableCrafting.addShaped(<avaritia:resource:1>, [
[null,					null,							null,							null,							null,							null,							null,							null,							null],
[null,					null,							null,							null,							null,							<thermalfoundation:material:16>,<minecraft:diamond>,			<minecraft:diamond>,			<minecraft:diamond>],
[null,					null,							<thermalfoundation:material:16>,<minecraft:diamond>,			<minecraft:diamond>,			<minecraft:diamond>,			<minecraft:nether_star>,		<avaritia:resource>,	<minecraft:diamond>],
[<minecraft:diamond>,	<minecraft:diamond>,			<minecraft:diamond>,			<avaritia:resource>,			<minecraft:nether_star>,		<avaritia:resource>,			<avaritia:resource>,			<minecraft:nether_star>,		<minecraft:diamond>],
[<minecraft:diamond>,	<avaritia:resource>,			<minecraft:nether_star>,		<minecraft:nether_star>,		<avaritia:resource>,			<minecraft:nether_star>,		<minecraft:nether_star>,		<avaritia:resource>,			<minecraft:diamond>],
[<minecraft:diamond>,	<minecraft:nether_star>,		<avaritia:resource>,			<avaritia:resource>,			<minecraft:nether_star>,		<avaritia:resource>,			<minecraft:diamond>,			<minecraft:diamond>,			<minecraft:diamond>],
[<minecraft:diamond>,	<avaritia:resource>,			<minecraft:nether_star>,		<minecraft:diamond>,			<minecraft:diamond>,			<minecraft:diamond>,			<thermalfoundation:material:16>,null,							null],
[<minecraft:diamond>,	<minecraft:diamond>,			<minecraft:diamond>,			<thermalfoundation:material:16>,null,							null,							null,							null,							null],
[null,					null,							null,							null,							null,							null,							null,							null,							null]]);


recipes.remove(<avaritia:resource>);
recipes.addShaped(<avaritia:resource>, [
	[<gregtech:meta_item_1:12111>, <minecraft:diamond_block>, <gregtech:meta_item_1:12111>],
	[<minecraft:diamond_block>, <gregtech:meta_item_2:25111>, <minecraft:diamond_block>],
	[<gregtech:meta_item_1:12111>, <minecraft:diamond_block>, <gregtech:meta_item_1:12111>]]);



////////////////////////// Ultimate Material ///////////////////////

mods.extendedcrafting.TableCrafting.addShaped(<armorplus:material:4>, [
[<armorplus:material:2>,<armorplus:material:3>,<armorplus:material:3>,<armorplus:material:3>,<armorplus:material:2>],
[<armorplus:material:3>,<armorplus:material:2>,<armorplus:material:1>,<armorplus:material:2>,<armorplus:material:3>],
[<armorplus:material:3>,<armorplus:material:1>,<draconicevolution:dragon_heart>,<armorplus:material:1>,<armorplus:material:3>],
[<armorplus:material:3>,<armorplus:material:2>,<armorplus:material:1>,<armorplus:material:2>,<armorplus:material:3>],
[<armorplus:material:2>,<armorplus:material:3>,<armorplus:material:3>,<armorplus:material:3>,<armorplus:material:2>]]);

////////////////////////// Eternal Catalyst ///////////////////////

mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:eternalcatalyst>, [
[null, null, null, null, <extendedcrafting:singularity_ultimate>, null, null, null, null],
[null, <extendedcrafting:singularity_ultimate>, null, null, <extendedcrafting:singularity_ultimate>, null, null, <extendedcrafting:singularity_ultimate>, null],
[null, null, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>, <moreplates:empowered_palis_gear>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>, null, null],
[null, null, <extendedcrafting:singularity_ultimate>, <moreplates:empowered_restonia_gear>, <actuallyadditions:item_misc:19>, <moreplates:empowered_emeradic_gear>, <extendedcrafting:singularity_ultimate>, null, null],
[<extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>, <moreplates:empowered_void_gear>, <gregtech:meta_item_1:32726>, <armorplus:material:4>, <extendedcrafting:material:40>, <moreplates:empowered_diamatine_gear>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>],
[null, null, <extendedcrafting:singularity_ultimate>, <moreplates:empowered_emeradic_gear>, <gregtech:meta_item_1:32725>, <moreplates:empowered_restonia_gear>, <extendedcrafting:singularity_ultimate>, null, null],
[null, null, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>, <moreplates:empowered_enori_gear>, <extendedcrafting:singularity_ultimate>, <extendedcrafting:singularity_ultimate>, null, null],
[null, <extendedcrafting:singularity_ultimate>, null, null, <extendedcrafting:singularity_ultimate>, null, null, <extendedcrafting:singularity_ultimate>, null],
[null, null, null, null, <extendedcrafting:singularity_ultimate>, null, null, null, null]]);
<contenttweaker:eternalcatalyst>.addTooltip(format.darkGray(format.italic("Gaze into the Abyss...")));
<gregtech:meta_item_1:32725>.clearTooltip();
<gregtech:meta_item_1:32725>.addTooltip(format.darkPurple("Quantum Star"));
<gregtech:meta_item_1:32725>.displayName = "Quantum Star";





////////////////////////// Infinity Ingot ///////////////////////
mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:6>);
mods.extendedcrafting.TableCrafting.addShaped(<avaritia:resource:6>, [
[null,					null,							null,							null,							null,							null,							null,							null,							null],
[null,					null,							null,							null,							null,							<avaritia:resource:3>,			<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:4>],
[null,					null,							<avaritia:resource:3>,			<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:4>,			<contenttweaker:eternalcatalyst>,<extendedcrafting:material:32>,<avaritia:resource:4>],
[<avaritia:resource:4>,	<avaritia:resource:4>,			<avaritia:resource:4>,			<extendedcrafting:material:32>,	<contenttweaker:eternalcatalyst>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,	<contenttweaker:eternalcatalyst>,<avaritia:resource:4>],
[<avaritia:resource:4>,	<extendedcrafting:material:32>,	<contenttweaker:eternalcatalyst>,<contenttweaker:eternalcatalyst>,<avaritia:resource:5>,<contenttweaker:eternalcatalyst>,<contenttweaker:eternalcatalyst>,<extendedcrafting:material:32>,<avaritia:resource:4>],
[<avaritia:resource:4>,	<contenttweaker:eternalcatalyst>,<extendedcrafting:material:32>,<extendedcrafting:material:32>,	<contenttweaker:eternalcatalyst>,<extendedcrafting:material:32>,<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:4>],
[<avaritia:resource:4>,	<extendedcrafting:material:32>,	<contenttweaker:eternalcatalyst>,<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:3>,			null,							null],
[<avaritia:resource:4>,	<avaritia:resource:4>,			<avaritia:resource:4>,			<avaritia:resource:3>,			null,							null,							null,							null,							null],
[null,					null,							null,							null,							null,							null,							null,							null,							null]]);




////////////////////////// Infinity Catalyst ///////////////////////

mods.avaritia.ExtremeCrafting.remove(<avaritia:resource:5>);
mods.extendedcrafting.TableCrafting.addShaped(<avaritia:resource:5>, [
[<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>],
[<avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>],
[<avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>],
[<avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <draconicevolution:chaotic_core>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>],
[<contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <draconicevolution:chaotic_core>, <contenttweaker:heartofauniverse>, <draconicevolution:chaotic_core>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>],
[<avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <draconicevolution:chaotic_core>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>],
[<avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>],
[<avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>],
[<avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <contenttweaker:eternalcatalyst>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>, <avaritia:resource:2>]]);




/////////// Ultimate Gem ////////////

mods.extendedcrafting.TableCrafting.addShapeless(<contenttweaker:ultimate_gem>, [
<thermalfoundation:material:893>,<actuallyadditions:item_crystal_empowered:5>,<enderio:item_material:16>,<enderio:item_material:15>,<libvulpes:productcrystal>,
<enderio:item_material:17>,<enderio:item_material:18>,<enderio:item_material:19>,<enderio:item_material:14>,<minecraft:prismarine_shard>,
<gregtech:meta_item_1:8103>,<thermalfoundation:material:894>,<appliedenergistics2:material:11>,<appliedenergistics2:material:10>,<appliedenergistics2:material:12>,
<actuallyadditions:item_crystal_empowered>,<actuallyadditions:item_crystal_empowered:1>,<actuallyadditions:item_crystal_empowered:2>,<actuallyadditions:item_crystal_empowered:3>,
<actuallyadditions:item_crystal_empowered:4>,<armorplus:lava_crystal:1>,<minecraft:emerald>,<redstonearsenal:material:160>,<minecraft:diamond>,<thermalfoundation:material:895>]);
<contenttweaker:ultimate_gem>.addTooltip(format.yellow("Recipe is shapeless."));





////////////////////////// Creative Vending Upgrade ///////////////////////
var creativecell = <thermalexpansion:cell>.withTag({Recv: 250000, RSControl: 0 as byte, Facing: 3 as byte, Energy: 500000000, Creative: 1 as byte, SideCache: [2, 2, 2, 2, 2, 2] as byte[] as byte[], Level: 4 as byte, Send: 250000});
var creativetank = <thermalexpansion:tank>.withTag({RSControl: 0 as byte, Creative: 1 as byte, Level: 4 as byte});
var creativebuffer = <appliedenergistics2:creative_energy_cell>;

mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative:1> * 2, [
[<storagedrawers:upgrade_creative>, 	<avaritia:resource:6>, 				<avaritia:resource:6>, 				<avaritia:resource:6>, 						<avaritia:resource:6>, 						<avaritia:resource:6>, 						<avaritia:resource:6>, 					<avaritia:resource:6>, 							<storagedrawers:upgrade_creative>],
[<avaritia:resource:6>, 				<draconicevolution:creative_rf_source>,creativetank, 					<extrautils2:passivegenerator:6>, 			creativecell, 								<extrautils2:creativeenergy>, 				<extrautils2:drum:4>, 					<draconicevolution:creative_rf_source>, 		<avaritia:resource:6>],
[<avaritia:resource:6>, 				<extrautils2:drum:4>,				<solarflux:solar_panel_infinity>,	<extrautils2:creativeenergy>,				<avaritia:infinity_helmet>, 				<extrautils2:passivegenerator:6>, 			<solarflux:solar_panel_infinity>,		creativetank, 									<avaritia:resource:6>],
[<avaritia:resource:6>, 				creativebuffer, 					<simplyjetpacks:itemjetpack>,		<thermalexpansion:capacitor:32000>, 		 <avaritia:infinity_chestplate>, 			<thermalexpansion:capacitor:32000>, 		 		<simplyjetpacks:itemjetpack>, 			creativebuffer, 								<avaritia:resource:6>],
[<avaritia:resource:6>, 				<draconicevolution:creative_rf_source>,<solarflux:solar_panel_infinity>,<thermalcultivation:watering_can:32000>,	<avaritia:infinity_sword>, 					<thermalcultivation:watering_can:32000>, 	<solarflux:solar_panel_infinity>,		<draconicevolution:creative_rf_source>, 		<avaritia:resource:6>],
[<avaritia:resource:6>, 				creativebuffer, 					<simplyjetpacks:itemjetpack>, 		<thermalexpansion:capacitor:32000>,				<avaritia:infinity_pants>, 					<thermalexpansion:capacitor:32000>,				<simplyjetpacks:itemjetpack>, 			creativebuffer, 								<avaritia:resource:6>],
[<avaritia:resource:6>, 				creativetank, 						<solarflux:solar_panel_infinity>, 	<extrautils2:creativeenergy>, 				<avaritia:infinity_boots>, 					<extrautils2:passivegenerator:6>, 			<solarflux:solar_panel_infinity>, 		<extrautils2:drum:4>,		 					<avaritia:resource:6>],
[<avaritia:resource:6>, 				<draconicevolution:creative_rf_source>,<extrautils2:drum:4>, 			<extrautils2:passivegenerator:6>, 			creativecell, 								<extrautils2:creativeenergy>, 				creativetank, 							<draconicevolution:creative_rf_source>, 		<avaritia:resource:6>],
[<storagedrawers:upgrade_creative>, 	<avaritia:resource:6>, 				<avaritia:resource:6>, 				<avaritia:resource:6>, 						<avaritia:resource:6>, 						<avaritia:resource:6>, 						<avaritia:resource:6>, 					<avaritia:resource:6>, 							<storagedrawers:upgrade_creative>]]);

solidifier.recipeBuilder().fluidInputs([<liquid:moltencreativeportabletank> * 144]).notConsumable(<contenttweaker:creativeportabletankmold>).outputs(creativetank).duration(500).EUt(100000).buildAndRegister();
fluid_extractor.recipeBuilder().inputs([<contenttweaker:heartofauniverse>]).fluidOutputs([<liquid:moltencreativeportabletank>*288]).duration(500).EUt(100000).buildAndRegister();


////////////////////////// Creative Items ///////////////////////

//Skullfire Sword
mods.extendedcrafting.TableCrafting.addShaped(<avaritia:skullfire_sword>, [
[null,null,null,null,null,null,null,<avaritia:resource:1>,<gregtech:meta_item_2:32577>],
[null,null,null,null,null,null,<avaritia:resource:1>,<armorplus:infused_lava_sword>,<avaritia:resource:1>],
[null,null,null,null,null,<avaritia:resource:1>,<armorplus:guardian_sword>,<avaritia:resource:1>,null],
[null,null,null,null,<avaritia:resource:1>,<armorplus:emerald_sword>,<avaritia:resource:1>,null,null],
[null,<armorplus:material:2>,null,<avaritia:resource:1>,<armorplus:lapis_sword>,<avaritia:resource:1>,null,null,null],
[null,null,<armorplus:material:2>,<armorplus:redstone_sword>,<avaritia:resource:1>,null,null,null,null],
[null,null,<minecraft:log>,<armorplus:material:2>,null,null,null,null,null],
[null,<minecraft:log>,null,null,<armorplus:material:2>,null,null,null,null],
[<minecraft:nether_star>,null,null,null,null,null,null,null,null]]);

//Blade Of The Cosmos
mods.extendedcrafting.TableCrafting.addShaped(<avaritia:infinity_sword>, [
[null,null,null,null,null,null,null,<avaritia:resource:6>,<avaritia:resource:6>],
[null,null,null,null,null,null,<avaritia:resource:6>,<avaritia:skullfire_sword>,<avaritia:resource:6>],
[null,null,null,null,null,<avaritia:resource:6>,<draconicevolution:draconic_sword>,<avaritia:resource:6>,null],
[null,null,null,null,<avaritia:resource:6>,<draconicevolution:wyvern_sword>,<avaritia:resource:6>,null,null],
[null,<avaritia:resource:1>,null,<avaritia:resource:6>,<armorplus:ender_dragon_sword>,<avaritia:resource:6>,null,null,null],
[null,null,<avaritia:resource:1>,<armorplus:super_star_sword>,<avaritia:resource:6>,null,null,null,null],
[null,null,<avaritia:resource:4>,<avaritia:resource:1>,null,null,null,null,null],
[null,<avaritia:resource:4>,null,null,<avaritia:resource:1>,null,null,null,null],
[<avaritia:resource:5>,null,null,null,null,null,null,null,null]]);

mods.extendedcrafting.TableCrafting.addShaped(<draconicevolution:creative_rf_source>, [
[<contenttweaker:ultimate_generator>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<contenttweaker:ultimate_generator>],
[<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>],
[<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:reactor_component>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>],
[<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:reactor_component>,<draconicevolution:reactor_core>,<draconicevolution:reactor_component>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>],
[<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:reactor_component>,<draconicevolution:reactor_core>,<avaritia:resource:5>,<draconicevolution:reactor_core>,<draconicevolution:reactor_component>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>],
[<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:reactor_component>,<draconicevolution:reactor_core>,<draconicevolution:reactor_component>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>],
[<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:reactor_component>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>],
[<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:particle_generator:2>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>],
[<contenttweaker:ultimate_generator>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<draconicevolution:energy_storage_core>,<draconicevolution:particle_generator>,<draconicevolution:energy_storage_core>,<draconicevolution:energy_pylon>,<draconicevolution:energy_pylon>,<contenttweaker:ultimate_generator>]]);

// Exa: snip

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:passivegenerator:6>, [
[<extrautils2:ingredients:16>,<extrautils2:ingredients:16>,<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>,<extrautils2:ingredients:16>,<extrautils2:ingredients:16>],
[<extrautils2:ingredients:16>,<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>,<extrautils2:ingredients:16>],
[<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:8>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>],
[<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:8>,<contenttweaker:ultimate_generator>,<extrautils2:passivegenerator:8>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>],
[<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:8>,<contenttweaker:ultimate_generator>,<avaritia:resource:5>,<contenttweaker:ultimate_generator>,<extrautils2:passivegenerator:8>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>],
[<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:8>,<contenttweaker:ultimate_generator>,<extrautils2:passivegenerator:8>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>],
[<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:8>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>],
[<extrautils2:ingredients:16>,<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:2>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>,<extrautils2:ingredients:16>],
[<extrautils2:ingredients:16>,<extrautils2:ingredients:16>,<extrautils2:passivegenerator:4>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:3>,<extrautils2:passivegenerator:5>,<extrautils2:passivegenerator:4>,<extrautils2:ingredients:16>,<extrautils2:ingredients:16>]]);

//Exa: snip

var ups = <contenttweaker:ultimate_power_storage>;
var infcata = <avaritia:resource:5>;

mods.extendedcrafting.TableCrafting.addShaped(creativecell, [
[basiccell,     basiccell,      basiccell,      hardenedcell,   reinforcedcell, hardenedcell,   basiccell,      basiccell,      basiccell],
[basiccell,     basiccell,      hardenedcell,   reinforcedcell, signalumcell,   reinforcedcell, hardenedcell,   basiccell,      basiccell],
[basiccell,     hardenedcell,   reinforcedcell, signalumcell,   resonantcell,   signalumcell,   reinforcedcell, hardenedcell,   basiccell],
[hardenedcell,  reinforcedcell, signalumcell,   resonantcell,   ups,            resonantcell,   signalumcell,   reinforcedcell, hardenedcell],
[reinforcedcell,signalumcell,   resonantcell,   ups,            infcata,        ups,            resonantcell,   signalumcell,   reinforcedcell],
[hardenedcell,  reinforcedcell, signalumcell,   resonantcell,   ups,            resonantcell,   signalumcell,   reinforcedcell, hardenedcell],
[basiccell,     hardenedcell,   reinforcedcell, signalumcell,   resonantcell,   signalumcell,   reinforcedcell, hardenedcell,   basiccell],
[basiccell,     basiccell,      hardenedcell,   reinforcedcell, signalumcell,   reinforcedcell, hardenedcell,   basiccell,      basiccell],
[basiccell,     basiccell,      basiccell,      hardenedcell,   reinforcedcell, hardenedcell,   basiccell,      basiccell,      basiccell]]);

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:creativeenergy>, [
[<extrautils2:opinium:3>,<extrautils2:opinium:4>,<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>,<extrautils2:opinium:4>,<extrautils2:opinium:3>],
[<extrautils2:opinium:4>,<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>,<extrautils2:opinium:4>],
[<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:rainbowgenerator>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>],
[<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:rainbowgenerator>,<contenttweaker:ultimate_generator>,<extrautils2:rainbowgenerator>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>],
[<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:rainbowgenerator>,<contenttweaker:ultimate_generator>,<avaritia:resource:5>,<contenttweaker:ultimate_generator>,<extrautils2:rainbowgenerator>,<extrautils2:opinium:8>,<extrautils2:opinium:7>],
[<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:rainbowgenerator>,<contenttweaker:ultimate_generator>,<extrautils2:rainbowgenerator>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>],
[<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:rainbowgenerator>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>],
[<extrautils2:opinium:4>,<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:8>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>,<extrautils2:opinium:4>],
[<extrautils2:opinium:3>,<extrautils2:opinium:4>,<extrautils2:opinium:5>,<extrautils2:opinium:6>,<extrautils2:opinium:7>,<extrautils2:opinium:6>,<extrautils2:opinium:5>,<extrautils2:opinium:4>,<extrautils2:opinium:3>]]);

mods.extendedcrafting.TableCrafting.addShaped(<extrautils2:drum:4>, [
[<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2196>],
[<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>,<gregtech:machine:2196>],
[<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2200>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>],
[<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2200>,<gregtech:machine:2200>,<gregtech:machine:2200>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>],
[<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2200>,<gregtech:machine:2200>,<avaritia:resource:5>,<gregtech:machine:2200>,<gregtech:machine:2200>,<gregtech:machine:2199>,<gregtech:machine:2198>],
[<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2200>,<gregtech:machine:2200>,<gregtech:machine:2200>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>],
[<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2200>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>],
[<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2199>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>,<gregtech:machine:2196>],
[<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2197>,<gregtech:machine:2198>,<gregtech:machine:2197>,<gregtech:machine:2196>,<gregtech:machine:2196>,<gregtech:machine:2196>]]);


mods.extendedcrafting.TableCrafting.addShaped(creativebuffer, [
[ups,<gregtech:machine:625>,<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>,<gregtech:machine:625>,ups],
[<gregtech:machine:625>,<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>,<gregtech:machine:625>],
[<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:645>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>],
[<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:645>,<gregtech:machine:649>,<gregtech:machine:645>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>],
[<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:645>,<gregtech:machine:649>,<avaritia:resource:5>,<gregtech:machine:649>,<gregtech:machine:645>,<gregtech:machine:641>,<gregtech:machine:637>],
[<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:645>,<gregtech:machine:649>,<gregtech:machine:645>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>],
[<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:645>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>],
[<gregtech:machine:625>,<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:641>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>,<gregtech:machine:625>],
[ups,<gregtech:machine:625>,<gregtech:machine:629>,<gregtech:machine:633>,<gregtech:machine:637>,<gregtech:machine:633>,<gregtech:machine:629>,<gregtech:machine:625>,ups]]);


mods.extendedcrafting.TableCrafting.addShaped(<thermalcultivation:watering_can:32000>, [
[null,null,null,null,null,null,null,null,null],
[<thermalcultivation:watering_can:4>,null,null,null,<thermalcultivation:watering_can:2>,<thermalcultivation:watering_can:2>,<thermalcultivation:watering_can:2>,null,null],
[<avaritia:resource:5>,<thermalcultivation:watering_can:4>,null,<thermalcultivation:watering_can:4>,null,null,<thermalcultivation:watering_can>,<thermalcultivation:watering_can>,<thermalcultivation:watering_can>],
[<thermalcultivation:watering_can:4>,<thermalcultivation:watering_can:4>,<thermalcultivation:watering_can:4>,<thermalcultivation:watering_can:3>,null,null,<thermalcultivation:watering_can>,null,<thermalcultivation:watering_can>],
[<thermalcultivation:watering_can:4>,null,<thermalcultivation:watering_can:4>,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:1>,<thermalcultivation:watering_can>,null,<thermalcultivation:watering_can>],
[null,null,null,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:1>,<thermalcultivation:watering_can>,<thermalcultivation:watering_can>,<thermalcultivation:watering_can>],
[null,null,null,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:3>,<thermalcultivation:watering_can:1>,<thermalcultivation:watering_can:1>,<thermalcultivation:watering_can:1>,null],
[null,null,null,null,<thermalcultivation:watering_can:2>,<thermalcultivation:watering_can:2>,<thermalcultivation:watering_can:2>,null,null],
[null,null,null,null,null,null,null,null,null]]);


mods.extendedcrafting.TableCrafting.addShaped(<solarflux:solar_panel_infinity>, [
[<solarflux:solar_panel_neutronium>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<solarflux:solar_panel_neutronium>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<avaritia:resource:5>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:infinity_plate>,<moreplates:neutronium_plate>],
[<solarflux:solar_panel_neutronium>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<moreplates:neutronium_plate>,<solarflux:solar_panel_neutronium>]]);



//Jetpack
recipes.remove(<simplyjetpacks:metaitemmods:12>);
recipes.addShaped(<simplyjetpacks:metaitemmods:12>, [
	[null, <ore:plateWroughtIron>, null],
	[<ore:plateWroughtIron>,<ore:plateWroughtIron>,<ore:plateWroughtIron>],
	[null, <ore:plateWroughtIron>, null]]);
<simplyjetpacks:metaitemmods:12>.displayName = "Wrought Iron Armor Plating";
recipes.remove(<simplyjetpacks:metaitemmods:13>);
recipes.addShaped(<simplyjetpacks:metaitemmods:13>, [
	[null, <ore:plateConductiveIron>, null],
	[<ore:plateConductiveIron>,<ore:plateConductiveIron>,<ore:plateConductiveIron>],
	[null, <ore:plateConductiveIron>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:14>);
recipes.addShaped(<simplyjetpacks:metaitemmods:14>, [
	[null, <ore:plateElectricalSteel>, null],
	[<ore:plateElectricalSteel>,<ore:plateElectricalSteel>,<ore:plateElectricalSteel>],
	[null, <ore:plateElectricalSteel>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:15>);
recipes.addShaped(<simplyjetpacks:metaitemmods:15>, [
	[null, <ore:plateDarkSteel>, null],
	[<ore:plateDarkSteel>,<ore:plateDarkSteel>,<ore:plateDarkSteel>],
	[null, <ore:plateDarkSteel>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:22>);
recipes.addShaped(<simplyjetpacks:metaitemmods:22>, [
	[null, <ore:plateIron>, null],
	[<ore:plateIron>,<ore:plateIron>,<ore:plateIron>],
	[null, <ore:plateIron>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:23>);
recipes.addShaped(<simplyjetpacks:metaitemmods:23>, [
	[null, <ore:plateBronze>, null],
	[<ore:plateBronze>,<ore:plateBronze>,<ore:plateBronze>],
	[null, <ore:plateBronze>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:24>);
recipes.addShaped(<simplyjetpacks:metaitemmods:24>, [
	[null, <ore:plateInvar>, null],
	[<ore:plateInvar>,<ore:plateInvar>,<ore:plateInvar>],
	[null, <ore:plateInvar>, null]]);
recipes.remove(<simplyjetpacks:metaitemmods:25>);
recipes.addShaped(<simplyjetpacks:metaitemmods:25>, [
	[null, <ore:plateEnderium>, null],
	[<ore:plateEnderium>,<ore:plateEnderium>,<ore:plateEnderium>],
	[null, <ore:plateEnderium>, null]]);

mods.extendedcrafting.TableCrafting.addShaped(<simplyjetpacks:itemjetpack>, [
[null,null,<simplyjetpacks:itemjetpack:5>,null,null,null,<simplyjetpacks:itemjetpack:14>,null,null],
[null,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:5>,null,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:14>,null],
[null,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:8>,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:18>,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:17>,<simplyjetpacks:itemjetpack:14>,null],
[null,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:8>,<simplyjetpacks:itemjetpack:5>,<avaritia:resource:5>,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:17>,<simplyjetpacks:itemjetpack:14>,null],
[null,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:8>,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:9>,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:17>,<simplyjetpacks:itemjetpack:14>,null],
[null,<simplyjetpacks:itemjetpack:5>,<simplyjetpacks:itemjetpack:8>,<simplyjetpacks:itemjetpack:5>,null,<simplyjetpacks:itemjetpack:14>,<simplyjetpacks:itemjetpack:17>,<simplyjetpacks:itemjetpack:14>,null],
[null,<simplyjetpacks:itemjetpack:6>,<simplyjetpacks:itemjetpack:6>,<simplyjetpacks:itemjetpack:6>,null,<simplyjetpacks:itemjetpack:15>,<simplyjetpacks:itemjetpack:15>,<simplyjetpacks:itemjetpack:15>,null],
[null,null,<simplyjetpacks:itemjetpack:7>,null,null,null,<simplyjetpacks:itemjetpack:16>,null,null],
[null,<simplyjetpacks:itemjetpack:7>,<simplyjetpacks:itemjetpack:7>,<simplyjetpacks:itemjetpack:7>,null,<simplyjetpacks:itemjetpack:16>,<simplyjetpacks:itemjetpack:16>,<simplyjetpacks:itemjetpack:16>,null]]);



mods.extendedcrafting.TableCrafting.addShaped(<thermalexpansion:capacitor:32000>, [
[<thermalexpansion:capacitor>,<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor>],
[<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:1>],
[<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<draconicevolution:draconium_capacitor:1>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>],
[<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<draconicevolution:draconium_capacitor:1>,<contenttweaker:ultimate_power_storage>,<draconicevolution:draconium_capacitor:1>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>],
[<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<draconicevolution:draconium_capacitor:1>,<contenttweaker:ultimate_power_storage>,<avaritia:resource:5>,<contenttweaker:ultimate_power_storage>,<draconicevolution:draconium_capacitor:1>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>],
[<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<draconicevolution:draconium_capacitor:1>,<contenttweaker:ultimate_power_storage>,<draconicevolution:draconium_capacitor:1>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>],
[<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<draconicevolution:draconium_capacitor:1>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>],
[<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<draconicevolution:draconium_capacitor>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:1>],
[<thermalexpansion:capacitor>,<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:4>,<thermalexpansion:capacitor:3>,<thermalexpansion:capacitor:2>,<thermalexpansion:capacitor:1>,<thermalexpansion:capacitor>]]);

mods.extendedcrafting.TableCrafting.addShaped(<storagedrawers:upgrade_creative>, [
[<storagedrawers:upgrade_storage:4>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>,<actuallyadditions:block_giant_chest_medium>,<storagedrawers:upgrade_storage:4>],
[<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>,<actuallyadditions:block_giant_chest_medium>],
[<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1012>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>],
[<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1012>,<gregtech:machine:1013>,<gregtech:machine:1012>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>],
[<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1012>,<gregtech:machine:1013>,<avaritia:resource:5>,<gregtech:machine:1013>,<gregtech:machine:1012>,<gregtech:machine:1011>,<gregtech:machine:1010>],
[<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1012>,<gregtech:machine:1013>,<gregtech:machine:1012>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>],
[<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1012>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>],
[<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:1011>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>,<actuallyadditions:block_giant_chest_medium>],
[<storagedrawers:upgrade_storage:4>,<actuallyadditions:block_giant_chest_medium>,<actuallyadditions:block_giant_chest_large>,<gregtech:machine:806>,<gregtech:machine:1010>,<gregtech:machine:806>,<actuallyadditions:block_giant_chest_large>,<actuallyadditions:block_giant_chest_medium>,<storagedrawers:upgrade_storage:4>]]);






var xu01 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var xu02 = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});
var xu03 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"});
var xu04 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"});
var xu05 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"});
var xu06 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"});
var xu07 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"});
var xu08 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"});
var xu09 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"});
var xu10 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"});
var xu11 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});
var xu12 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"});
var xu13 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"});
var xu14 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"});
var xu15 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
var xu16 = <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"});
var dynamo0 = <thermalexpansion:dynamo>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []});
var dynamo1 = <thermalexpansion:dynamo:1>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []});
var dynamo3 = <thermalexpansion:dynamo:3>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []});
var dynamo5 = <thermalexpansion:dynamo:5>.withTag({RSControl: 0 as byte, Creative: 0 as byte, Energy: 0, Level: 4 as byte, Augments: []});

recipes.addShapeless(dynamo0, [<thermalexpansion:dynamo>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo1, [<thermalexpansion:dynamo:1>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo3, [<thermalexpansion:dynamo:3>,<thermalfoundation:upgrade:35>]);
recipes.addShapeless(dynamo5, [<thermalexpansion:dynamo:5>,<thermalfoundation:upgrade:35>]);

//Ultimate Collections

//Ultimate Generator
mods.extendedcrafting.TableCrafting.addShapeless(<contenttweaker:ultimate_generator>, [
<gregtech:machine:521>,<gregtech:machine:522>,<gregtech:machine:480>,<gregtech:machine:481>,<nuclearcraft:fission_controller_new_fixed>,<nuclearcraft:salt_fission_controller>,<gregtech:machine:482>,<gregtech:machine:523>,<gregtech:machine:524>,
<solarflux:solar_panel_1>,<solarflux:solar_panel_4>,<solarflux:solar_panel_5>,<solarflux:solar_panel_6>,<draconicevolution:generator>,<solarflux:solar_panel_7>,<solarflux:solar_panel_8>,<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_neutronium>,
<solarflux:solar_panel_2>,<solarflux:solar_panel_3>,xu01,xu02,xu03,xu04,xu05,<solarflux:solar_panel_chaotic>,<solarflux:solar_panel_draconic>,
<enderio:block_zombie_generator>,<gregtech:machine:2504>,xu16,dynamo0,<extrautils2:rainbowgenerator:2>,dynamo0,xu06,<gregtech:machine:2506>,<enderio:block_zombie_generator>,
<enderio:block_franken_zombie_generator>,dynamo5,xu15,dynamo1,<draconicevolution:reactor_core>,dynamo1,xu07,dynamo5,<enderio:block_franken_zombie_generator>,
<enderio:block_ender_generator>,<gregtech:machine:2505>,xu14,dynamo3,<extrautils2:rainbowgenerator:1>,dynamo3,xu08,<draconicevolution:reactor_component>,<enderio:block_ender_generator>,
<gregtech:machine:518>,<gregtech:machine:485>,xu13,xu12,xu11,xu10,xu09,<gregtech:machine:492>,<gregtech:machine:520>,
<solarflux:solar_panel_1>,<solarflux:solar_panel_4>,<gregtech:machine:486>,<gregtech:machine:487>,<gregtech:machine:519>,<gregtech:machine:490>,<gregtech:machine:491>,<solarflux:solar_panel_chaotic>,<solarflux:solar_panel_draconic>,
<solarflux:solar_panel_2>,<solarflux:solar_panel_3>,<solarflux:solar_panel_5>,<solarflux:solar_panel_6>,<extrautils2:passivegenerator>,<solarflux:solar_panel_7>,<solarflux:solar_panel_8>,<solarflux:solar_panel_wyvern>,<solarflux:solar_panel_neutronium>]);
<contenttweaker:ultimate_generator>.addTooltip(format.yellow("Recipe is shapeless."));


//Ultimate Power Storage
mods.extendedcrafting.TableCrafting.addShaped(<contenttweaker:ultimate_power_storage>, [
[<contenttweaker:doublecompressedoctadiccapacitor>,<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32518>,<contenttweaker:doublecompressedoctadiccapacitor>],
[<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32518>],
[<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>],
[<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32599>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>],
[<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32599>,<gtadditions:ga_meta_item:32124>,<gregtech:meta_item_1:32599>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>],
[<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32599>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>],
[<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>, <gregtech:meta_item_1:32598>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>],
[<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32597>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32518>],
[<contenttweaker:doublecompressedoctadiccapacitor>,<gregtech:meta_item_1:32518>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32538>,<metaitem:lapotron_crystal>,<gregtech:meta_item_1:32538>,<gregtech:meta_item_1:32528>,<gregtech:meta_item_1:32518>,<contenttweaker:doublecompressedoctadiccapacitor>]]);

<gregtech:turbine_casing:3>.displayName = "Magnalium Turbine Casing";

