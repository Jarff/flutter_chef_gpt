import 'dart:convert';

import 'package:chef_gpt/core/application/bloc/favorites/favoritepage_bloc.dart';
import 'package:chef_gpt/core/application/bloc/favorites/favoritepage_state.dart';
import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_bloc.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:chef_gpt/core/infrastructure/repositories/favorite_repository_impl.dart';
import 'package:chef_gpt/core/presentation/widgets/RecipeContent.dart';
import 'package:chef_gpt/core/presentation/widgets/lists/favorites/favorites_list.dart';
import 'package:chef_gpt/utils/AppLocalizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({super.key});

  @override
  State<FavoritesPage> createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  void initState() {
    super.initState();
    // Dispatch fetchFavorites event when the page is initialized...
    context.read<FavoriteRecipePageBloc>().fetchFavorites();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context)
                .pop(); // Navigates back to the previous screen
          },
        ),
        title: Text(
          AppLocalizations.of(context).translate("Favorites"),
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: BlocBuilder<FavoriteRecipePageBloc, FavoritepageState>(
        builder: (context, state) {
          return state.when(
            initial: () => const Center(child: CircularProgressIndicator()),
            loading: () => const Center(child: CircularProgressIndicator()),
            loaded: (List<Recipe> favorites) => FavoriteList(
              favorites: favorites,
              refreshList: () =>
                  context.read<FavoriteRecipePageBloc>().refreshFavorites(),
            ),
            error: () => const Text("Something went wrong"),
          );
        },
      ),
    );
  }
}
