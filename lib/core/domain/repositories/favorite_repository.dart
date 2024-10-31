import 'package:chef_gpt/core/domain/entities/recipe.dart';

abstract class FavoriteRepository {
  Future<void> addRecipe(Recipe recipe);
  Future<void> removeRecipe(Recipe recipe);
  Future<List<Recipe>> fetchRecipes();
}
