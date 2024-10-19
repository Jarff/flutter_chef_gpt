import 'package:chef_gpt/core/domain/entities/ingredient.dart';
import 'package:flutter/material.dart';

class IngredientList extends StatelessWidget {
  final List<Ingredient> ingredients;
  const IngredientList({super.key, required this.ingredients});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: ingredients.map((ingredient) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("• ", style: TextStyle(fontSize: 16)), // Bullet point
            Expanded(
                child: Text(
              "${ingredient.name} - ${ingredient.amount}",
              style: const TextStyle(fontSize: 16),
            )), // List item text
          ],
        );
      }).toList(),
    );
  }
}
