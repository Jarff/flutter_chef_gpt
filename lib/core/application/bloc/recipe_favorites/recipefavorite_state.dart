import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipefavorite_state.freezed.dart';

@freezed
class RecipeFavoriteState with _$RecipeFavoriteState {
  factory RecipeFavoriteState({required bool isFavorite}) =
      _RecipeFavoriteState;

  factory RecipeFavoriteState.initial() =>
      RecipeFavoriteState(isFavorite: false);

  factory RecipeFavoriteState.isFavorite({required bool value}) =>
      RecipeFavoriteState(isFavorite: value);
}
