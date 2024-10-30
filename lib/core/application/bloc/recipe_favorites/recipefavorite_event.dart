import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:chef_gpt/core/infrastructure/repositories/favorite_repository_impl.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipefavorite_event.freezed.dart';

@freezed
class RecipeFavoriteEvent with _$RecipeFavoriteEvent {
  const factory RecipeFavoriteEvent.add(Recipe recipe) = _AddFavoriteRecipe;
  const factory RecipeFavoriteEvent.remove(Recipe recipe) =
      _RemoveFavoriteRecipe;
}
