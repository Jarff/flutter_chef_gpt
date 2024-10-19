import 'dart:convert';

import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:chef_gpt/core/presentation/widgets/lists/ingredient_list.dart';
import 'package:chef_gpt/core/presentation/widgets/lists/instruction_list.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class RecipeContent extends StatefulWidget {
  Recipe recipe;
  RecipeContent({super.key, required this.recipe});

  @override
  State<RecipeContent> createState() => _RecipeContentState();
}

class _RecipeContentState extends State<RecipeContent> {
  Uuid? uuid;
  String? curId;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    uuid = const Uuid();
    curId = uuid?.v1();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigates back to the previous screen
          },
        ),
        actions: [
          IconButton(
              onPressed: () async {
                // Obtain shared preferences.
                final SharedPreferences prefs =
                    await SharedPreferences.getInstance();

                List<String>? favorites = prefs.getStringList('favorites');
                // prefs.remove('favorites');
                favorites = [];

                if (widget.recipe.isFavorite) {
                  // Loop through the favorites find the one with the ID
                  // And remove it...
                  if (favorites != null) {
                    favorites.removeWhere((element) =>
                        (RecipeModel.fromJson(jsonDecode(element))).id ==
                        curId);
                    prefs.setStringList('favorites', favorites);
                  }
                  setState(() {
                    widget.recipe.isFavorite = !widget.recipe.isFavorite;
                  });
                } else {
                  // We set a unique ID to the recipe
                  widget.recipe.id = curId;
                  setState(() {
                    widget.recipe.isFavorite = !widget.recipe.isFavorite;
                  });
                  if (favorites != null) {
                    favorites.add(jsonEncode(
                        RecipeModel.fromEntity(widget.recipe).toJson()));
                  } else {
                    favorites = [
                      jsonEncode(RecipeModel.fromEntity(widget.recipe).toJson())
                    ];
                  }
                  // Set the list to favorites
                  prefs.setStringList('favorites', favorites);
                }
              },
              icon: Icon(
                widget.recipe.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_border,
                color: Colors.white,
              ))
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
                                SizedBox(
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
                                SizedBox(
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
