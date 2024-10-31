import 'dart:convert';

import 'package:chef_gpt/core/domain/domain.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:chef_gpt/generate_prompt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  @override
  Future<Recipe?> getRecipe(
      BuildContext context, Map<String, dynamic> values) async {
    String apiKey = dotenv.env['GEMINI_API_KEY'] ?? "";
    final GenerativeModel model = GenerativeModel(
      model: dotenv.env['GEMINI_MODEL'] ?? "gemini-1.5-flash",
      apiKey: apiKey,
    );

    final String prompt = generatePrompt(context, values);
    final List<Content> content = [Content.text(prompt)];
    final GenerateContentResponse response =
        await model.generateContent(content);

    if (response.text == null) {
      return null;
    } else {
      String cleanedText =
          response.text!.replaceAll('```json', '').replaceAll('```', '').trim();
      try {
        return RecipeModel.fromJson(jsonDecode(cleanedText));
      } catch (e) {
        print("Error decoding JSON in RecipePage: Something went wrong: $e");
        return null;
      }
    }
  }
}
