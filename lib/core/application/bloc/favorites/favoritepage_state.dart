import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favoritepage_state.freezed.dart';

@freezed
class FavoritepageState with _$FavoritepageState {
  const factory FavoritepageState.initial() = _FavoritepageStateInitial;
  const factory FavoritepageState.loading() = _FavoritepageStateLoading;
  const factory FavoritepageState.loaded({required List<Recipe> favorites}) =
      _FavoritepageStateLoaded;
  const factory FavoritepageState.error() = _FavoritepageStateError;
}
