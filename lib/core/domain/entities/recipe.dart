import 'package:chef_gpt/core/domain/entities/ingredient.dart';
import 'package:chef_gpt/core/domain/entities/instruction.dart';

abstract class Recipe {
  String? get id;
  set id(String? value);
  String get title;
  String get description;
  int get people;
  String get difficulty;
  int get cookingTime;
  String get lowCalorie;
  String get vegan;
  String get paleo;
  int get calories;
  Map<String, dynamic> get macros;
  List<Ingredient> get ingredients;
  List<Instruction> get instructions;
  bool get isFavorite;
  set isFavorite(bool value);
}
