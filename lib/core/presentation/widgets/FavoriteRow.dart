import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_bloc.dart';
import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/presentation/widgets/RecipeContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteRow extends StatelessWidget {
  final Recipe recipe;
  final Function? refreshList;
  const FavoriteRow({super.key, required this.recipe, this.refreshList});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Material(
        color: Colors.transparent, // Ensures no background override
        child: InkWell(
          onTap: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BlocProvider<RecipeFavoriteBloc>(
                  create: (context) =>
                      RecipeFavoriteBloc.withCustomInitialState(
                          RecipeFavoriteState.isFavorite(
                              value: recipe.isFavorite)),
                  child: RecipeContent(
                    recipe: recipe,
                    refreshList: refreshList,
                  ),
                ),
              ),
            );
          },
          borderRadius: BorderRadius.circular(10),
          splashColor: Colors.white.withOpacity(0.2), // Customize ripple color
          child: Ink(
            padding: const EdgeInsets.only(top: 5, bottom: 5, right: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 32, 35),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Flexible(
                  child: ListTile(
                    title: Text(
                      recipe.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
