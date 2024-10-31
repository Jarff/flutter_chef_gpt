import 'package:flutter/material.dart';

import '../domain.dart';

abstract class RecipeRepository {
  Future<Recipe?> getRecipe(BuildContext context, Map<String, dynamic> values);
}
