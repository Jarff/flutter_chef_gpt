import 'package:chef_gpt/models/Ingredient.dart';
import 'package:chef_gpt/models/Instruction.dart';

class Recipe {
  String? id;
  final String title;
  final String description;
  final int people;
  final String difficulty;
  final int cookingTime;
  final String lowCalorie;
  final String vegan;
  final String paleo;
  final int calories;
  final Map<String, dynamic> macros;
  final List<Ingredient> ingredients;
  final List<Instruction> instructions;
  bool isFavorite = false;

  Recipe({
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
  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
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
          .map((element) => Ingredient.fromJson(element))
          .toList(),
      instructions: (json['instructions'] as List<dynamic>)
          .map((element) => Instruction.fromJson(element))
          .toList(),
      isFavorite: json['isFavorite'] ?? false,
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
      'ingredients': ingredients.map((element) => element.toJson()).toList(),
      'instructions': instructions.map((element) => element.toJson()).toList(),
      'isFavorite': isFavorite,
    };
  }
}
