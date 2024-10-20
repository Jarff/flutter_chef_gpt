import 'package:chef_gpt/core/domain/entities/ingredient.dart';
import 'package:chef_gpt/core/domain/entities/instruction.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/models/ingredient_model.dart';
import 'package:chef_gpt/core/infrastructure/models/instruction_model.dart';

class RecipeModel implements Recipe {
  @override
  String? id;
  @override
  final String title;
  @override
  final String description;
  @override
  final int people;
  @override
  final String difficulty;
  @override
  final int cookingTime;
  @override
  final String lowCalorie;
  @override
  final String vegan;
  @override
  final String paleo;
  @override
  final int calories;
  @override
  final Map<String, dynamic> macros;
  @override
  final List<Ingredient> ingredients;
  @override
  final List<Instruction> instructions;
  // @override
  bool isFavorite = false;

  RecipeModel({
    this.id,
    required this.title,
    required this.description,
    required this.people,
    required this.difficulty,
    required this.cookingTime,
    required this.lowCalorie,
    required this.vegan,
    required this.paleo,
    required this.calories,
    required this.macros,
    required this.ingredients,
    required this.instructions,
    this.isFavorite = false,
  });

  // Factory constructor to create an instance from a JSON map
  factory RecipeModel.fromJson(Map<String, dynamic> json) {
    return RecipeModel(
      title: json['title'] as String,
      description: json['description'] as String,
      people: json['people'] as int,
      difficulty: json['difficulty'] as String,
      cookingTime: json['cooking_time'] as int,
      lowCalorie: json['low_calorie'] as String,
      vegan: json['vegan'] as String,
      paleo: json['paleo'] as String,
      calories: json['calories'] as int,
      macros: json['macros'] as Map<String, dynamic>,
      ingredients: (json['ingredients'] as List<dynamic>)
          .map((element) => IngredientModel.fromJson(element))
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((element) => InstructionModel.fromJson(element))
          .toList(),
      isFavorite: json['isFavorite'] ?? false,
    );
  }

  // Add a new factory constructor
  factory RecipeModel.fromEntity(Recipe recipe) {
    return RecipeModel(
      id: recipe.id,
      title: recipe.title,
      description: recipe.description,
      people: recipe.people,
      difficulty: recipe.difficulty,
      cookingTime: recipe.cookingTime,
      lowCalorie: recipe.lowCalorie,
      vegan: recipe.vegan,
      paleo: recipe.paleo,
      calories: recipe.calories,
      macros: recipe.macros,
      ingredients: recipe.ingredients.map((ingredient) {
        return IngredientModel(
          name: ingredient.name,
          amount: ingredient.amount,
        );
      }).toList(),
      instructions: recipe.instructions.map((instruction) {
        return InstructionModel(
          step: instruction.step,
          description: instruction.description,
        );
      }).toList(),
      isFavorite: recipe.isFavorite,
    );
  }

  // Convert the instance back to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'people': people,
      'difficulty': difficulty,
      'cooking_time': cookingTime,
      'low_calorie': lowCalorie,
      'vegan': vegan,
      'paleo': paleo,
      'calories': calories,
      'macros': macros,
      'ingredients': ingredients
          .map((element) => element is IngredientModel
              ? element.toJson()
              : throw Exception('Ingredient is not of type IngredientModel'))
          .toList(),
      'instructions': instructions
          .map((element) => element is InstructionModel
              ? element.toJson()
              : throw Exception('Instruction is not of type InstructionModel'))
          .toList(),
      'isFavorite': isFavorite,
    };
  }
}
