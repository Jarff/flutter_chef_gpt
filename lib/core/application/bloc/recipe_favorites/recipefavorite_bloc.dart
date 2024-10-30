import 'dart:convert';

import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_event.dart';
import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:chef_gpt/core/infrastructure/repositories/favorite_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class RecipeFavoriteBloc
    extends Bloc<RecipeFavoriteEvent, RecipeFavoriteState> {
  final favoriteRepository = FavoriteRepositoryImpl();

  // Default constructor
  RecipeFavoriteBloc() : super(RecipeFavoriteState.initial()) {
    _initializeEventHandlers();
  }

  // Named constructor for custom initial state
  RecipeFavoriteBloc.withCustomInitialState(RecipeFavoriteState initialState)
      : super(initialState) {
    _initializeEventHandlers();
  }

  void _initializeEventHandlers() {
    on<RecipeFavoriteEvent>((event, emit) async {
      await event.when(
        add: (Recipe recipe) async {
          recipe.isFavorite = true;
          favoriteRepository.addRecipe(recipe);
          emit(state.copyWith(isFavorite: recipe.isFavorite));
        },
        remove: (Recipe recipe) async {
          recipe.isFavorite = false;
          favoriteRepository.removeRecipe(recipe);
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
