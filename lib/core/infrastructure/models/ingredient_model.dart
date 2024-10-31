import 'package:chef_gpt/core/domain/entities/ingredient.dart';

class IngredientModel implements Ingredient {
  @override
  final String name;
  @override
  final String amount;

  IngredientModel({required this.name, required this.amount});

  IngredientModel copyWith({
    String? name,
    String? amount,
  }) {
    return IngredientModel(
      name: name ?? this.name,
      amount: amount ?? this.amount,
    );
  }

  factory IngredientModel.fromJson(Map<String, dynamic> json) {
    return IngredientModel(
      name: json['name'] as String,
      amount: json['amount'] as String,
    );
  }

  // Convert the instance back to JSON
  Map<String, dynamic> toJson() {
    return {'name': name, 'amount': amount};
  }
}
