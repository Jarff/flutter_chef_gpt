import 'dart:convert';

import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_event.dart';
import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class RecipeFavoriteBloc
    extends Bloc<RecipeFavoriteEvent, RecipeFavoriteState> {
  RecipeFavoriteBloc() : super(RecipeFavoriteState.initial()) {
    on<RecipeFavoriteEvent>((event, emit) async {
      await event.when(
        add: (Recipe recipe) async {
          Uuid uuid = const Uuid();
          String curId = uuid.v1();

          // Obtain shared preferences
          final SharedPreferences prefs = await SharedPreferences.getInstance();

          List<String>? favorites = prefs.getStringList('favorites');
          recipe.id = curId;
          recipe.isFavorite = true;
          if (favorites != null) {
            favorites.add(jsonEncode(RecipeModel.fromEntity(recipe).toJson()));
          } else {
            favorites = [jsonEncode(RecipeModel.fromEntity(recipe).toJson())];
          }
          // Set the list to favorites
          await prefs.setStringList('favorites', favorites);
          emit(state.copyWith(isFavorite: recipe.isFavorite));
        },
        remove: (Recipe recipe) async {
          // Obtain shared preferences
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          recipe.isFavorite = false;
          List<String>? favorites = prefs.getStringList('favorites');
          // favorites = [];
          // Loop through the favorites find the one with the ID
          // And removes it...
          if (favorites != null) {
            favorites.removeWhere((element) =>
                (RecipeModel.fromJson(jsonDecode(element))).id == recipe.id);
            await prefs.setStringList('favorites', favorites);
          }
          emit(state.copyWith(isFavorite: recipe.isFavorite));
        },
      );
    });
  }

  addFavorite(Recipe recipe) {
    add(RecipeFavoriteEvent.add(recipe));
  }

  removeFavorite(Recipe recipe) {
    add(RecipeFavoriteEvent.remove(recipe));
  }
}
