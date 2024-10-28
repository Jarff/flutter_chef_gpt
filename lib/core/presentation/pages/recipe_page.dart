import 'package:chef_gpt/core/application/bloc/recipe_favorites/recipefavorite_bloc.dart';
import 'package:chef_gpt/core/application/bloc/recipe_page/recipepage_bloc.dart';
import 'package:chef_gpt/core/application/bloc/recipe_page/recipepage_event.dart';
import 'package:chef_gpt/core/application/bloc/recipe_page/recipepage_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/presentation/widgets/PreparingRecipe.dart';
import 'package:chef_gpt/core/presentation/widgets/RecipeContent.dart';
import 'package:chef_gpt/core/presentation/widgets/RecipeError.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipePage extends StatefulWidget {
  final Map<String, dynamic> configuration;
  const RecipePage({super.key, required this.configuration});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  String? title;

  @override
  void initState() {
    super.initState();
    // Dispatch the fetchRecipe event when the page is initialized...
    context.read<RecipePageBloc>().add(RecipePageEvent.fetchRecipe(
        context: context, configuration: widget.configuration));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<RecipePageBloc, RecipepageState>(
          builder: (context, state) {
        return state.when(
          initial: () => const PreparingRecipe(),
          loading: () => const PreparingRecipe(),
          loaded: (Recipe recipe) => BlocProvider<RecipeFavoriteBloc>(
              create: (context) => RecipeFavoriteBloc(),
              child: RecipeContent(recipe: recipe)),
          error: (String message) => const RecipeError(),
        );
      }),
    );
  }
}
