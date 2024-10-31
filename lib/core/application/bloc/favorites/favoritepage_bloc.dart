import 'package:chef_gpt/core/application/bloc/favorites/favoritepage_event.dart';
import 'package:chef_gpt/core/application/bloc/favorites/favoritepage_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/domain/repositories/favorite_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoriteRecipePageBloc
    extends Bloc<FavoritepageEvent, FavoritepageState> {
  final FavoriteRepository favoriteRepository;
  FavoriteRecipePageBloc({required this.favoriteRepository})
      : super(const FavoritepageState.initial()) {
    on<FavoritepageEvent>((event, emit) async {
      await event.when(fetch: () async {
        emit(const FavoritepageState.loading());

        // Call the repositoty to get the recipes
        try {
          List<Recipe> favorites = await favoriteRepository.fetchRecipes();
          emit(FavoritepageState.loaded(favorites: favorites));
        } catch (e) {
          print("Something went wrong when fetching favorite recipes");
          emit(const FavoritepageState.error());
        }
      }, refresh: () async {
        try {
          List<Recipe> favorites = await favoriteRepository.fetchRecipes();
          emit(FavoritepageState.loaded(favorites: favorites));
        } catch (e) {
          print("Something went wrong when fetching favorite recipes");
          emit(const FavoritepageState.error());
        }
      });
    });
  }

  fetchFavorites() {
    add(const FavoritepageEvent.fetch());
  }

  refreshFavorites() {
    add(const FavoritepageEvent.refresh());
  }
}
