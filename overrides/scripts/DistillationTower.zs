import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;
import crafttweaker.item.IItemStack;
import crafttweaker.liquid.ILiquidStack;

var DT = RecipeMap.getByName("distillation_tower");

function increaseBatchSize(recipe as Recipe, reqDuration as int, rmap as RecipeMap){
	/*multiply the inputs, outputs and duration of a recipe from the RecipeMap rmap by the same integer such that the duration reaches at least reqDuration ticks.
	Does nothing if the current duration is higher or equal.*/
	var curDur  = recipe.duration as int;
	var EUt = recipe.EUt as int;
	var inputs = recipe.inputs as IItemStack[]; //Actually InputIngredient[]
	var fluidInputs = recipe.fluidInputs as ILiquidStack[];
	var outputs = recipe.outputs as IItemStack[];
	var fluidOutputs = recipe.fluidOutputs as ILiquidStack[];
	if(curDur < reqDuration){
		//remove existing recipe
		recipe.remove();
		//remove possible extra recipe
		var extraRecipe = rmap.findRecipe(EUt,inputs,fluidInputs) as Recipe;
		if(!isNull(extraRecipe)){
			extraRecipe.remove();
		}
		var coeff = ((reqDuration + curDur - 1)/curDur) as int; //rounding up
		for i, item in inputs{
			inputs[i] = item.withAmount(item.amount * coeff);
		}
		for i, item in outputs{
			outputs[i] = item.withAmount(item.amount * coeff);
		}
		for i, item in fluidInputs{
			fluidInputs[i] = item.withAmount(item.amount * coeff);
		}
		for i, item in fluidOutputs{
			fluidOutputs[i] = item.withAmount(item.amount * coeff);
		}
		rmap.recipeBuilder()
		.inputs(inputs)
		.fluidInputs(fluidInputs)
		.outputs(outputs)
		.fluidOutputs(fluidOutputs)
		.duration(curDur * coeff)
		.EUt(EUt)
		.buildAndRegister();
		}
}
//durations chosen to be close to 1m,
//but low enough for all inputs/outputs to fit into 8bucket ULV hatches
increaseBatchSize(DT.findRecipe(96, null, [<liquid:oil> * 50]),1200,DT);
increaseBatchSize(DT.findRecipe(96, null, [<liquid:oil_light> * 150]),600,DT);
increaseBatchSize(DT.findRecipe(96, null, [<liquid:oil_medium> * 100]),1200,DT);//Raw Oil
increaseBatchSize(DT.findRecipe(288, null, [<liquid:oil_heavy> * 150]),240,DT);

increaseBatchSize(DT.findRecipe(96, null, [<liquid:creosote> * 24]),1200,DT);
increaseBatchSize(DT.findRecipe(96, null, [<liquid:seed_oil> * 24]),1200,DT);
increaseBatchSize(DT.findRecipe(96, null, [<liquid:fish_oil> * 24]),1200,DT);

increaseBatchSize(DT.findRecipe(256, null, [<liquid:charcoal_byproducts> * 1000]),320,DT);
increaseBatchSize(DT.findRecipe(256, null, [<liquid:wood_tar> * 1000]),320,DT);
increaseBatchSize(DT.findRecipe(256, null, [<liquid:wood_gas> * 1000]),320,DT);
increaseBatchSize(DT.findRecipe(256, null, [<liquid:wood_vinegar> * 1000]),320,DT);

increaseBatchSize(DT.findRecipe(180, null, [<liquid:fermented_biomass> * 1000]),600,DT);
