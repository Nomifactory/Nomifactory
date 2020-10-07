#ignoreBracketErrors

import scripts.CommonVars.makeShaped as makeShaped;

/*
  Channel-specific adjustments.
 */
if (<appliedenergistics2:controller> as bool) {
	// ME Controller
	recipes.removeByRecipeName("appliedenergistics2:network/blocks/controller");
	makeShaped("me_controller", <appliedenergistics2:controller>,
		["PFP",
		"FAF",
		"PFP"],
		{ F : <ore:crystalPureFluix>,
		P : <ore:plateDarkSteel>,
		A : <appliedenergistics2:energy_acceptor>});

	// Dense Conduit
	assembler.recipeBuilder()
		.inputs([<enderio:item_me_conduit> * 4, <ore:itemConduitBinder> * 5])
		.outputs([<enderio:item_me_conduit:1> * 2])
		.duration(80)
		.EUt(16)
		.buildAndRegister();
/*
  Remove channel-specific items otherwise.
 */
} else {
	mods.jei.JEI.removeAndHide(<enderio:item_me_conduit:1>);
	recipes.removeByRecipeName("appliedenergistics2:network/cables/smart_fluix");
	recipes.removeByRecipeName("appliedenergistics2:network/cables/dense_covered_fluix");
}
