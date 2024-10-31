import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipepage_event.freezed.dart';

@freezed
class RecipePageEvent with _$RecipePageEvent {
  const factory RecipePageEvent.fetchRecipe({
    required BuildContext context,
    required Map<String, dynamic> configuration,
  }) = _FetchRecipeEvent;
}
