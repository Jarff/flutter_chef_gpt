import 'package:chef_gpt/models/Recipe.dart';
import 'package:chef_gpt/presentation/widgets/lists/ingredient_list.dart';
import 'package:chef_gpt/presentation/widgets/lists/instruction_list.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';

class RecipeContent extends StatelessWidget {
  Recipe recipe;
  RecipeContent({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text(
                  recipe.title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  recipe.description,
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white.withOpacity(0.15), width: 3),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context).translate("Overview"),
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.timelapse,
                                  color: Colors.white.withOpacity(.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "${recipe.cookingTime.toString()} ${AppLocalizations.of(context).translate('minutes')}")
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.white.withOpacity(.5),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(AppLocalizations.of(context)
                                    .translate(recipe.difficulty))
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.people,
                                  color: Colors.white.withOpacity(.5),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "${recipe.people.toString()} ${AppLocalizations.of(context).translate('servings')}")
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Icon(
                                  Icons.fireplace,
                                  color: Colors.white.withOpacity(.5),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "${recipe.calories.toString()} ${AppLocalizations.of(context).translate('calories')}")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // #MARK: Ingredients
                Text(
                  AppLocalizations.of(context).translate("Ingredients"),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                IngredientList(ingredients: recipe.ingredients),
                const SizedBox(
                  height: 20,
                ),
                // #MARK: Instructions
                Text(
                  AppLocalizations.of(context).translate("Instructions"),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(
                  height: 10,
                ),
                InstructionList(instructions: recipe.instructions)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
