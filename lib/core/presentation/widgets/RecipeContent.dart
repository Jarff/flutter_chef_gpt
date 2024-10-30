import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_bloc.dart';
import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/presentation/widgets/lists/ingredient_list.dart';
import 'package:chef_gpt/core/presentation/widgets/lists/instruction_list.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uuid/uuid.dart';

class RecipeContent extends StatefulWidget {
  final Recipe recipe;
  final Function? refreshList;
  const RecipeContent({super.key, required this.recipe, this.refreshList});

  @override
  State<RecipeContent> createState() => _RecipeContentState();
}

class _RecipeContentState extends State<RecipeContent> {
  Uuid? uuid;
  String? curId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigates back to the previous screen
          },
        ),
        actions: [
          BlocBuilder<RecipeFavoriteBloc, RecipeFavoriteState>(
              builder: (context, state) {
            return IconButton(
                onPressed: () {
                  if (state.isFavorite) {
                    context
                        .read<RecipeFavoriteBloc>()
                        .removeFavorite(widget.recipe);
                  } else {
                    context
                        .read<RecipeFavoriteBloc>()
                        .addFavorite(widget.recipe);
                  }
                  if (widget.refreshList != null) {
                    widget.refreshList!();
                  }
                },
                icon: Icon(
                  state.isFavorite ? Icons.favorite : Icons.favorite_border,
                  color: Colors.white,
                ));
          })
        ],
      ),
      body: Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: ListView(
              children: [
                Text(
                  widget.recipe.title,
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  widget.recipe.description,
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
                      const SizedBox(
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
                                    "${widget.recipe.cookingTime.toString()} ${AppLocalizations.of(context).translate('minutes')}")
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
                                    .translate(widget.recipe.difficulty))
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "${widget.recipe.people.toString()} ${AppLocalizations.of(context).translate('servings')}")
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
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                    "${widget.recipe.calories.toString()} ${AppLocalizations.of(context).translate('calories')}")
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
                IngredientList(ingredients: widget.recipe.ingredients),
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
                InstructionList(instructions: widget.recipe.instructions)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
