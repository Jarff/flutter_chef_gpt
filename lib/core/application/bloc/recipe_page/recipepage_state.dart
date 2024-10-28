import 'package:chef_gpt/core/domain/entities/recipe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipepage_state.freezed.dart';

@freezed
class RecipepageState with _$RecipepageState {
  const factory RecipepageState.initial() = _RecipepageInitial;
  const factory RecipepageState.loading() = _RecipepageLoading;
  const factory RecipepageState.loaded({required Recipe recipe}) =
      _RecipepageLoaded;
  const factory RecipepageState.error({required String message}) =
      _RecipepageError;
}
