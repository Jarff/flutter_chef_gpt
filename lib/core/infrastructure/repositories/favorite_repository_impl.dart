import 'dart:convert';

import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/domain/repositories/favorite_repository.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class FavoriteRepositoryImpl implements FavoriteRepository {
  @override
  Future<List<Recipe>> fetchRecipes() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? stored = prefs.getStringList('favorites');
    List<Recipe> result = [];

    if (stored != null) {
      for (var element in stored) {
        result.add(RecipeModel.fromJson(jsonDecode(element)));
      }
    }
    return result;
  }

  @override
  Future<void> addRecipe(Recipe recipe) async {
    Uuid uuid = const Uuid();
    String curId = uuid.v1();

    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favorites = prefs.getStringList('favorites');
    recipe.id = curId;
    if (favorites != null) {
      favorites.add(jsonEncode(RecipeModel.fromEntity(recipe).toJson()));
    } else {
      favorites = [jsonEncode(RecipeModel.fromEntity(recipe).toJson())];
    }
    // Set the list to favorites
    await prefs.setStringList('favorites', favorites);
  }

  @override
  Future<void> removeRecipe(Recipe recipe) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? favorites = prefs.getStringList('favorites');
    if (favorites != null) {
      favorites.removeWhere((element) =>
          (RecipeModel.fromJson(jsonDecode(element))).id == recipe.id);
      await prefs.setStringList('favorites', favorites);
    }
  }
}
