// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipepage_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipePageEvent {
  BuildContext get context => throw _privateConstructorUsedError;
  Map<String, dynamic> get configuration => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, Map<String, dynamic> configuration)
        fetchRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Map<String, dynamic> configuration)?
        fetchRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Map<String, dynamic> configuration)?
        fetchRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipeEvent value) fetchRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipeEvent value)? fetchRecipe,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipeEvent value)? fetchRecipe,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipePageEventCopyWith<RecipePageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipePageEventCopyWith<$Res> {
  factory $RecipePageEventCopyWith(
          RecipePageEvent value, $Res Function(RecipePageEvent) then) =
      _$RecipePageEventCopyWithImpl<$Res, RecipePageEvent>;
  @useResult
  $Res call({BuildContext context, Map<String, dynamic> configuration});
}

/// @nodoc
class _$RecipePageEventCopyWithImpl<$Res, $Val extends RecipePageEvent>
    implements $RecipePageEventCopyWith<$Res> {
  _$RecipePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? configuration = null,
  }) {
    return _then(_value.copyWith(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      configuration: null == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchRecipeEventImplCopyWith<$Res>
    implements $RecipePageEventCopyWith<$Res> {
  factory _$$FetchRecipeEventImplCopyWith(_$FetchRecipeEventImpl value,
          $Res Function(_$FetchRecipeEventImpl) then) =
      __$$FetchRecipeEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BuildContext context, Map<String, dynamic> configuration});
}

/// @nodoc
class __$$FetchRecipeEventImplCopyWithImpl<$Res>
    extends _$RecipePageEventCopyWithImpl<$Res, _$FetchRecipeEventImpl>
    implements _$$FetchRecipeEventImplCopyWith<$Res> {
  __$$FetchRecipeEventImplCopyWithImpl(_$FetchRecipeEventImpl _value,
      $Res Function(_$FetchRecipeEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? context = null,
    Object? configuration = null,
  }) {
    return _then(_$FetchRecipeEventImpl(
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      configuration: null == configuration
          ? _value._configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc

class _$FetchRecipeEventImpl implements _FetchRecipeEvent {
  const _$FetchRecipeEventImpl(
      {required this.context,
      required final Map<String, dynamic> configuration})
      : _configuration = configuration;

  @override
  final BuildContext context;
  final Map<String, dynamic> _configuration;
  @override
  Map<String, dynamic> get configuration {
    if (_configuration is EqualUnmodifiableMapView) return _configuration;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_configuration);
  }

  @override
  String toString() {
    return 'RecipePageEvent.fetchRecipe(context: $context, configuration: $configuration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchRecipeEventImpl &&
            (identical(other.context, context) || other.context == context) &&
            const DeepCollectionEquality()
                .equals(other._configuration, _configuration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, context,
      const DeepCollectionEquality().hash(_configuration));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchRecipeEventImplCopyWith<_$FetchRecipeEventImpl> get copyWith =>
      __$$FetchRecipeEventImplCopyWithImpl<_$FetchRecipeEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            BuildContext context, Map<String, dynamic> configuration)
        fetchRecipe,
  }) {
    return fetchRecipe(context, configuration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(BuildContext context, Map<String, dynamic> configuration)?
        fetchRecipe,
  }) {
    return fetchRecipe?.call(context, configuration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, Map<String, dynamic> configuration)?
        fetchRecipe,
    required TResult orElse(),
  }) {
    if (fetchRecipe != null) {
      return fetchRecipe(context, configuration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchRecipeEvent value) fetchRecipe,
  }) {
    return fetchRecipe(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchRecipeEvent value)? fetchRecipe,
  }) {
    return fetchRecipe?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchRecipeEvent value)? fetchRecipe,
    required TResult orElse(),
  }) {
    if (fetchRecipe != null) {
      return fetchRecipe(this);
    }
    return orElse();
  }
}

abstract class _FetchRecipeEvent implements RecipePageEvent {
  const factory _FetchRecipeEvent(
          {required final BuildContext context,
          required final Map<String, dynamic> configuration}) =
      _$FetchRecipeEventImpl;

  @override
  BuildContext get context;
  @override
  Map<String, dynamic> get configuration;
  @override
  @JsonKey(ignore: true)
  _$$FetchRecipeEventImplCopyWith<_$FetchRecipeEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
