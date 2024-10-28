import 'package:chef_gpt/core/application/bloc/recipe_page/recipepage_event.dart';
import 'package:chef_gpt/core/application/bloc/recipe_page/recipepage_state.dart';
import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/domain/repositories/repositories.dart';
import 'package:chef_gpt/core/infrastructure/repositories/recipe_repository_impl.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecipePageBloc extends Bloc<RecipePageEvent, RecipepageState> {
  final RecipeRepository recipeRepository;

  RecipePageBloc(this.recipeRepository)
      : super(const RecipepageState.initial()) {
    on<RecipePageEvent>((event, emit) async {
      await event.when(
        fetchRecipe: (context, configuration) async {
          emit(const RecipepageState.loading());

          // Call the repository to get the recipe
          final Recipe? recipe = await recipeRepository.getRecipe(
            context,
            configuration,
          );

          // Handle the result from the repository
          if (recipe == null) {
            emit(
              const RecipepageState.error(
                message: "Couldn't generate a recipe",
              ),
            );
          } else {
            emit(RecipepageState.loaded(recipe: recipe));
          }
        },
      );
    });
  }
}
