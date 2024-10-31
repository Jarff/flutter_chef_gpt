// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipepage_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipepageState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Recipe recipe) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Recipe recipe)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Recipe recipe)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipepageInitial value) initial,
    required TResult Function(_RecipepageLoading value) loading,
    required TResult Function(_RecipepageLoaded value) loaded,
    required TResult Function(_RecipepageError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipepageInitial value)? initial,
    TResult? Function(_RecipepageLoading value)? loading,
    TResult? Function(_RecipepageLoaded value)? loaded,
    TResult? Function(_RecipepageError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipepageInitial value)? initial,
    TResult Function(_RecipepageLoading value)? loading,
    TResult Function(_RecipepageLoaded value)? loaded,
    TResult Function(_RecipepageError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipepageStateCopyWith<$Res> {
  factory $RecipepageStateCopyWith(
          RecipepageState value, $Res Function(RecipepageState) then) =
      _$RecipepageStateCopyWithImpl<$Res, RecipepageState>;
}

/// @nodoc
class _$RecipepageStateCopyWithImpl<$Res, $Val extends RecipepageState>
    implements $RecipepageStateCopyWith<$Res> {
  _$RecipepageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RecipepageInitialImplCopyWith<$Res> {
  factory _$$RecipepageInitialImplCopyWith(_$RecipepageInitialImpl value,
          $Res Function(_$RecipepageInitialImpl) then) =
      __$$RecipepageInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipepageInitialImplCopyWithImpl<$Res>
    extends _$RecipepageStateCopyWithImpl<$Res, _$RecipepageInitialImpl>
    implements _$$RecipepageInitialImplCopyWith<$Res> {
  __$$RecipepageInitialImplCopyWithImpl(_$RecipepageInitialImpl _value,
      $Res Function(_$RecipepageInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipepageInitialImpl implements _RecipepageInitial {
  const _$RecipepageInitialImpl();

  @override
  String toString() {
    return 'RecipepageState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipepageInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Recipe recipe) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Recipe recipe)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Recipe recipe)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipepageInitial value) initial,
    required TResult Function(_RecipepageLoading value) loading,
    required TResult Function(_RecipepageLoaded value) loaded,
    required TResult Function(_RecipepageError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipepageInitial value)? initial,
    TResult? Function(_RecipepageLoading value)? loading,
    TResult? Function(_RecipepageLoaded value)? loaded,
    TResult? Function(_RecipepageError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipepageInitial value)? initial,
    TResult Function(_RecipepageLoading value)? loading,
    TResult Function(_RecipepageLoaded value)? loaded,
    TResult Function(_RecipepageError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _RecipepageInitial implements RecipepageState {
  const factory _RecipepageInitial() = _$RecipepageInitialImpl;
}

/// @nodoc
abstract class _$$RecipepageLoadingImplCopyWith<$Res> {
  factory _$$RecipepageLoadingImplCopyWith(_$RecipepageLoadingImpl value,
          $Res Function(_$RecipepageLoadingImpl) then) =
      __$$RecipepageLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RecipepageLoadingImplCopyWithImpl<$Res>
    extends _$RecipepageStateCopyWithImpl<$Res, _$RecipepageLoadingImpl>
    implements _$$RecipepageLoadingImplCopyWith<$Res> {
  __$$RecipepageLoadingImplCopyWithImpl(_$RecipepageLoadingImpl _value,
      $Res Function(_$RecipepageLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$RecipepageLoadingImpl implements _RecipepageLoading {
  const _$RecipepageLoadingImpl();

  @override
  String toString() {
    return 'RecipepageState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RecipepageLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Recipe recipe) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Recipe recipe)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Recipe recipe)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipepageInitial value) initial,
    required TResult Function(_RecipepageLoading value) loading,
    required TResult Function(_RecipepageLoaded value) loaded,
    required TResult Function(_RecipepageError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipepageInitial value)? initial,
    TResult? Function(_RecipepageLoading value)? loading,
    TResult? Function(_RecipepageLoaded value)? loaded,
    TResult? Function(_RecipepageError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipepageInitial value)? initial,
    TResult Function(_RecipepageLoading value)? loading,
    TResult Function(_RecipepageLoaded value)? loaded,
    TResult Function(_RecipepageError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _RecipepageLoading implements RecipepageState {
  const factory _RecipepageLoading() = _$RecipepageLoadingImpl;
}

/// @nodoc
abstract class _$$RecipepageLoadedImplCopyWith<$Res> {
  factory _$$RecipepageLoadedImplCopyWith(_$RecipepageLoadedImpl value,
          $Res Function(_$RecipepageLoadedImpl) then) =
      __$$RecipepageLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipe});
}

/// @nodoc
class __$$RecipepageLoadedImplCopyWithImpl<$Res>
    extends _$RecipepageStateCopyWithImpl<$Res, _$RecipepageLoadedImpl>
    implements _$$RecipepageLoadedImplCopyWith<$Res> {
  __$$RecipepageLoadedImplCopyWithImpl(_$RecipepageLoadedImpl _value,
      $Res Function(_$RecipepageLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipe = null,
  }) {
    return _then(_$RecipepageLoadedImpl(
      recipe: null == recipe
          ? _value.recipe
          : recipe // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }
}

/// @nodoc

class _$RecipepageLoadedImpl implements _RecipepageLoaded {
  const _$RecipepageLoadedImpl({required this.recipe});

  @override
  final Recipe recipe;

  @override
  String toString() {
    return 'RecipepageState.loaded(recipe: $recipe)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipepageLoadedImpl &&
            (identical(other.recipe, recipe) || other.recipe == recipe));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipe);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipepageLoadedImplCopyWith<_$RecipepageLoadedImpl> get copyWith =>
      __$$RecipepageLoadedImplCopyWithImpl<_$RecipepageLoadedImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Recipe recipe) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(recipe);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Recipe recipe)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(recipe);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Recipe recipe)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(recipe);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipepageInitial value) initial,
    required TResult Function(_RecipepageLoading value) loading,
    required TResult Function(_RecipepageLoaded value) loaded,
    required TResult Function(_RecipepageError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipepageInitial value)? initial,
    TResult? Function(_RecipepageLoading value)? loading,
    TResult? Function(_RecipepageLoaded value)? loaded,
    TResult? Function(_RecipepageError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipepageInitial value)? initial,
    TResult Function(_RecipepageLoading value)? loading,
    TResult Function(_RecipepageLoaded value)? loaded,
    TResult Function(_RecipepageError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _RecipepageLoaded implements RecipepageState {
  const factory _RecipepageLoaded({required final Recipe recipe}) =
      _$RecipepageLoadedImpl;

  Recipe get recipe;
  @JsonKey(ignore: true)
  _$$RecipepageLoadedImplCopyWith<_$RecipepageLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RecipepageErrorImplCopyWith<$Res> {
  factory _$$RecipepageErrorImplCopyWith(_$RecipepageErrorImpl value,
          $Res Function(_$RecipepageErrorImpl) then) =
      __$$RecipepageErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RecipepageErrorImplCopyWithImpl<$Res>
    extends _$RecipepageStateCopyWithImpl<$Res, _$RecipepageErrorImpl>
    implements _$$RecipepageErrorImplCopyWith<$Res> {
  __$$RecipepageErrorImplCopyWithImpl(
      _$RecipepageErrorImpl _value, $Res Function(_$RecipepageErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RecipepageErrorImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RecipepageErrorImpl implements _RecipepageError {
  const _$RecipepageErrorImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'RecipepageState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipepageErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipepageErrorImplCopyWith<_$RecipepageErrorImpl> get copyWith =>
      __$$RecipepageErrorImplCopyWithImpl<_$RecipepageErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Recipe recipe) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Recipe recipe)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Recipe recipe)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RecipepageInitial value) initial,
    required TResult Function(_RecipepageLoading value) loading,
    required TResult Function(_RecipepageLoaded value) loaded,
    required TResult Function(_RecipepageError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RecipepageInitial value)? initial,
    TResult? Function(_RecipepageLoading value)? loading,
    TResult? Function(_RecipepageLoaded value)? loaded,
    TResult? Function(_RecipepageError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RecipepageInitial value)? initial,
    TResult Function(_RecipepageLoading value)? loading,
    TResult Function(_RecipepageLoaded value)? loaded,
    TResult Function(_RecipepageError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _RecipepageError implements RecipepageState {
  const factory _RecipepageError({required final String message}) =
      _$RecipepageErrorImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$RecipepageErrorImplCopyWith<_$RecipepageErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
