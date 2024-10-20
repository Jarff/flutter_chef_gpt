// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'homepage_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating) selectTime,
    required TResult Function(int persons) selectPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating)? selectTime,
    TResult? Function(int persons)? selectPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating)? selectTime,
    TResult Function(int persons)? selectPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomePageEventCopyWith<$Res> {
  factory $HomePageEventCopyWith(
          HomePageEvent value, $Res Function(HomePageEvent) then) =
      _$HomePageEventCopyWithImpl<$Res, HomePageEvent>;
}

/// @nodoc
class _$HomePageEventCopyWithImpl<$Res, $Val extends HomePageEvent>
    implements $HomePageEventCopyWith<$Res> {
  _$HomePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SelectTimeImplCopyWith<$Res> {
  factory _$$SelectTimeImplCopyWith(
          _$SelectTimeImpl value, $Res Function(_$SelectTimeImpl) then) =
      __$$SelectTimeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double rating});
}

/// @nodoc
class __$$SelectTimeImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectTimeImpl>
    implements _$$SelectTimeImplCopyWith<$Res> {
  __$$SelectTimeImplCopyWithImpl(
      _$SelectTimeImpl _value, $Res Function(_$SelectTimeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = null,
  }) {
    return _then(_$SelectTimeImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SelectTimeImpl implements _SelectTime {
  const _$SelectTimeImpl(this.rating);

  @override
  final double rating;

  @override
  String toString() {
    return 'HomePageEvent.selectTime(rating: $rating)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTimeImpl &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeImplCopyWith<_$SelectTimeImpl> get copyWith =>
      __$$SelectTimeImplCopyWithImpl<_$SelectTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating) selectTime,
    required TResult Function(int persons) selectPerson,
  }) {
    return selectTime(rating);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating)? selectTime,
    TResult? Function(int persons)? selectPerson,
  }) {
    return selectTime?.call(rating);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating)? selectTime,
    TResult Function(int persons)? selectPerson,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(rating);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
  }) {
    return selectTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
  }) {
    return selectTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(this);
    }
    return orElse();
  }
}

abstract class _SelectTime implements HomePageEvent {
  const factory _SelectTime(final double rating) = _$SelectTimeImpl;

  double get rating;
  @JsonKey(ignore: true)
  _$$SelectTimeImplCopyWith<_$SelectTimeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPersonImplCopyWith<$Res> {
  factory _$$SelectPersonImplCopyWith(
          _$SelectPersonImpl value, $Res Function(_$SelectPersonImpl) then) =
      __$$SelectPersonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int persons});
}

/// @nodoc
class __$$SelectPersonImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectPersonImpl>
    implements _$$SelectPersonImplCopyWith<$Res> {
  __$$SelectPersonImplCopyWithImpl(
      _$SelectPersonImpl _value, $Res Function(_$SelectPersonImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? persons = null,
  }) {
    return _then(_$SelectPersonImpl(
      null == persons
          ? _value.persons
          : persons // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectPersonImpl implements _SelectPerson {
  const _$SelectPersonImpl(this.persons);

  @override
  final int persons;

  @override
  String toString() {
    return 'HomePageEvent.selectPerson(persons: $persons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPersonImpl &&
            (identical(other.persons, persons) || other.persons == persons));
  }

  @override
  int get hashCode => Object.hash(runtimeType, persons);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPersonImplCopyWith<_$SelectPersonImpl> get copyWith =>
      __$$SelectPersonImplCopyWithImpl<_$SelectPersonImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating) selectTime,
    required TResult Function(int persons) selectPerson,
  }) {
    return selectPerson(persons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating)? selectTime,
    TResult? Function(int persons)? selectPerson,
  }) {
    return selectPerson?.call(persons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating)? selectTime,
    TResult Function(int persons)? selectPerson,
    required TResult orElse(),
  }) {
    if (selectPerson != null) {
      return selectPerson(persons);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
  }) {
    return selectPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
  }) {
    return selectPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    required TResult orElse(),
  }) {
    if (selectPerson != null) {
      return selectPerson(this);
    }
    return orElse();
  }
}

abstract class _SelectPerson implements HomePageEvent {
  const factory _SelectPerson(final int persons) = _$SelectPersonImpl;

  int get persons;
  @JsonKey(ignore: true)
  _$$SelectPersonImplCopyWith<_$SelectPersonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
