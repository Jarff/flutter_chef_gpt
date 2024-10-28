// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipefavorite_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeFavoriteEvent {
  Recipe get recipe => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) add,
    required TResult Function(Recipe recipe) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? add,
    TResult? Function(Recipe recipe)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? add,
    TResult Function(Recipe recipe)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteRecipe value) add,
    required TResult Function(_RemoveFavoriteRecipe value) remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteRecipe value)? add,
    TResult? Function(_RemoveFavoriteRecipe value)? remove,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteRecipe value)? add,
    TResult Function(_RemoveFavoriteRecipe value)? remove,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeFavoriteEventCopyWith<RecipeFavoriteEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFavoriteEventCopyWith<$Res> {
  factory $RecipeFavoriteEventCopyWith(
          RecipeFavoriteEvent value, $Res Function(RecipeFavoriteEvent) then) =
      _$RecipeFavoriteEventCopyWithImpl<$Res, RecipeFavoriteEvent>;
  @useResult
  $Res call({Recipe recipe});
}

/// @nodoc
class _$RecipeFavoriteEventCopyWithImpl<$Res, $Val extends RecipeFavoriteEvent>
    implements $RecipeFavoriteEventCopyWith<$Res> {
  _$RecipeFavoriteEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_value.copyWith(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddFavoriteRecipeImplCopyWith<$Res>
    implements $RecipeFavoriteEventCopyWith<$Res> {
  factory _$$AddFavoriteRecipeImplCopyWith(_$AddFavoriteRecipeImpl value,
          $Res Function(_$AddFavoriteRecipeImpl) then) =
      __$$AddFavoriteRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});
}

/// @nodoc
class __$$AddFavoriteRecipeImplCopyWithImpl<$Res>
    extends _$RecipeFavoriteEventCopyWithImpl<$Res, _$AddFavoriteRecipeImpl>
    implements _$$AddFavoriteRecipeImplCopyWith<$Res> {
  __$$AddFavoriteRecipeImplCopyWithImpl(_$AddFavoriteRecipeImpl _value,
      $Res Function(_$AddFavoriteRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$AddFavoriteRecipeImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$AddFavoriteRecipeImpl implements _AddFavoriteRecipe {
  const _$AddFavoriteRecipeImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'RecipeFavoriteEvent.add(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddFavoriteRecipeImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddFavoriteRecipeImplCopyWith<_$AddFavoriteRecipeImpl> get copyWith =>
      __$$AddFavoriteRecipeImplCopyWithImpl<_$AddFavoriteRecipeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) add,
    required TResult Function(Recipe recipe) remove,
  }) {
    return add(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? add,
    TResult? Function(Recipe recipe)? remove,
  }) {
    return add?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? add,
    TResult Function(Recipe recipe)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteRecipe value) add,
    required TResult Function(_RemoveFavoriteRecipe value) remove,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteRecipe value)? add,
    TResult? Function(_RemoveFavoriteRecipe value)? remove,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteRecipe value)? add,
    TResult Function(_RemoveFavoriteRecipe value)? remove,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _AddFavoriteRecipe implements RecipeFavoriteEvent {
  const factory _AddFavoriteRecipe(final Recipe recipe) =
      _$AddFavoriteRecipeImpl;

  @override
  Recipe get recipe;
  @override
  @JsonKey(ignore: true)
  _$$AddFavoriteRecipeImplCopyWith<_$AddFavoriteRecipeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveFavoriteRecipeImplCopyWith<$Res>
    implements $RecipeFavoriteEventCopyWith<$Res> {
  factory _$$RemoveFavoriteRecipeImplCopyWith(_$RemoveFavoriteRecipeImpl value,
          $Res Function(_$RemoveFavoriteRecipeImpl) then) =
      __$$RemoveFavoriteRecipeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Recipe recipe});
}

/// @nodoc
class __$$RemoveFavoriteRecipeImplCopyWithImpl<$Res>
    extends _$RecipeFavoriteEventCopyWithImpl<$Res, _$RemoveFavoriteRecipeImpl>
    implements _$$RemoveFavoriteRecipeImplCopyWith<$Res> {
  __$$RemoveFavoriteRecipeImplCopyWithImpl(_$RemoveFavoriteRecipeImpl _value,
      $Res Function(_$RemoveFavoriteRecipeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$RemoveFavoriteRecipeImpl(
      null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$RemoveFavoriteRecipeImpl implements _RemoveFavoriteRecipe {
  const _$RemoveFavoriteRecipeImpl(this.recipe);

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'RecipeFavoriteEvent.remove(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveFavoriteRecipeImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveFavoriteRecipeImplCopyWith<_$RemoveFavoriteRecipeImpl>
      get copyWith =>
          __$$RemoveFavoriteRecipeImplCopyWithImpl<_$RemoveFavoriteRecipeImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Recipe recipe) add,
    required TResult Function(Recipe recipe) remove,
  }) {
    return remove(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Recipe recipe)? add,
    TResult? Function(Recipe recipe)? remove,
  }) {
    return remove?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Recipe recipe)? add,
    TResult Function(Recipe recipe)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddFavoriteRecipe value) add,
    required TResult Function(_RemoveFavoriteRecipe value) remove,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddFavoriteRecipe value)? add,
    TResult? Function(_RemoveFavoriteRecipe value)? remove,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddFavoriteRecipe value)? add,
    TResult Function(_RemoveFavoriteRecipe value)? remove,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }
}

abstract class _RemoveFavoriteRecipe implements RecipeFavoriteEvent {
  const factory _RemoveFavoriteRecipe(final Recipe recipe) =
      _$RemoveFavoriteRecipeImpl;

  @override
  Recipe get recipe;
  @override
  @JsonKey(ignore: true)
  _$$RemoveFavoriteRecipeImplCopyWith<_$RemoveFavoriteRecipeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
