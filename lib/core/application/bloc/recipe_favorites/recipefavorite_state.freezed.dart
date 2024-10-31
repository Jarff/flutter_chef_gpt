// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipefavorite_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecipeFavoriteState {
  bool get isFavorite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RecipeFavoriteStateCopyWith<RecipeFavoriteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeFavoriteStateCopyWith<$Res> {
  factory $RecipeFavoriteStateCopyWith(
          RecipeFavoriteState value, $Res Function(RecipeFavoriteState) then) =
      _$RecipeFavoriteStateCopyWithImpl<$Res, RecipeFavoriteState>;
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class _$RecipeFavoriteStateCopyWithImpl<$Res, $Val extends RecipeFavoriteState>
    implements $RecipeFavoriteStateCopyWith<$Res> {
  _$RecipeFavoriteStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_value.copyWith(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecipeFavoriteStateImplCopyWith<$Res>
    implements $RecipeFavoriteStateCopyWith<$Res> {
  factory _$$RecipeFavoriteStateImplCopyWith(_$RecipeFavoriteStateImpl value,
          $Res Function(_$RecipeFavoriteStateImpl) then) =
      __$$RecipeFavoriteStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFavorite});
}

/// @nodoc
class __$$RecipeFavoriteStateImplCopyWithImpl<$Res>
    extends _$RecipeFavoriteStateCopyWithImpl<$Res, _$RecipeFavoriteStateImpl>
    implements _$$RecipeFavoriteStateImplCopyWith<$Res> {
  __$$RecipeFavoriteStateImplCopyWithImpl(_$RecipeFavoriteStateImpl _value,
      $Res Function(_$RecipeFavoriteStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
  }) {
    return _then(_$RecipeFavoriteStateImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RecipeFavoriteStateImpl implements _RecipeFavoriteState {
  _$RecipeFavoriteStateImpl({required this.isFavorite});

  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'RecipeFavoriteState(isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecipeFavoriteStateImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecipeFavoriteStateImplCopyWith<_$RecipeFavoriteStateImpl> get copyWith =>
      __$$RecipeFavoriteStateImplCopyWithImpl<_$RecipeFavoriteStateImpl>(
          this, _$identity);
}

abstract class _RecipeFavoriteState implements RecipeFavoriteState {
  factory _RecipeFavoriteState({required final bool isFavorite}) =
      _$RecipeFavoriteStateImpl;

  @override
  bool get isFavorite;
  @override
  @JsonKey(ignore: true)
  _$$RecipeFavoriteStateImplCopyWith<_$RecipeFavoriteStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
