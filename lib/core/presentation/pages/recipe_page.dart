import 'dart:convert';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/generate_prompt.dart';
import 'package:chef_gpt/core/infrastructure/models/recipe_model.dart';
import 'package:chef_gpt/core/presentation/widgets/PreparingRecipe.dart';
import 'package:chef_gpt/core/presentation/widgets/RecipeContent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_generative_ai/google_generative_ai.dart';

class RecipePage extends StatefulWidget {
  Map<String, dynamic> configuration;
  RecipePage({super.key, required this.configuration});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  String? title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: _getRecipe(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.data == null) {
                return Scaffold(
                  appBar: AppBar(
                    elevation: 0,
                    backgroundColor: Colors.black,
                    leading: IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.of(context)
                            .pop(); // Navigates back to the previous screen
                      },
                    ),
                  ),
                  body: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 20),
                    child: SafeArea(
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            "Sorry, we couldn't create your recipe try again.",
                            style: Theme.of(context).textTheme.displayMedium,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return RecipeContent(recipe: snapshot.data!);
              }
            } else {
              return const PreparingRecipe();
            }
          }),
    );
  }

  // THIS CODE SHOULD BE MOVED TO A REPOSITORY!!!
  // TODO:
  Future<Recipe?> _getRecipe() async {
    String apiKey = dotenv.env['GEMINI_API_KEY'] ?? "";

    final model = GenerativeModel(
      model: 'gemini-1.5-flash',
      apiKey: apiKey,
    );

    final String prompt = generatePrompt(context, widget.configuration);
    final content = [Content.text(prompt)];
    final response = await model.generateContent(content);

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
