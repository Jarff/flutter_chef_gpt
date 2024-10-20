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
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
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
  $Res call({double rating, int rate});
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
    Object? rate = null,
  }) {
    return _then(_$SelectTimeImpl(
      null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      null == rate
          ? _value.rate
          : rate // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SelectTimeImpl implements _SelectTime {
  const _$SelectTimeImpl(this.rating, this.rate);

  @override
  final double rating;
  @override
  final int rate;

  @override
  String toString() {
    return 'HomePageEvent.selectTime(rating: $rating, rate: $rate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectTimeImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.rate, rate) || other.rate == rate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, rating, rate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectTimeImplCopyWith<_$SelectTimeImpl> get copyWith =>
      __$$SelectTimeImplCopyWithImpl<_$SelectTimeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectTime(rating, rate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectTime?.call(rating, rate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(rating, rate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectTime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectTime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectTime != null) {
      return selectTime(this);
    }
    return orElse();
  }
}

abstract class _SelectTime implements HomePageEvent {
  const factory _SelectTime(final double rating, final int rate) =
      _$SelectTimeImpl;

  double get rating;
  int get rate;
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
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectPerson(persons);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectPerson?.call(persons);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
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
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectPerson(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectPerson?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
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

/// @nodoc
abstract class _$$SelectDifficultyImplCopyWith<$Res> {
  factory _$$SelectDifficultyImplCopyWith(_$SelectDifficultyImpl value,
          $Res Function(_$SelectDifficultyImpl) then) =
      __$$SelectDifficultyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String difficulty});
}

/// @nodoc
class __$$SelectDifficultyImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectDifficultyImpl>
    implements _$$SelectDifficultyImplCopyWith<$Res> {
  __$$SelectDifficultyImplCopyWithImpl(_$SelectDifficultyImpl _value,
      $Res Function(_$SelectDifficultyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? difficulty = null,
  }) {
    return _then(_$SelectDifficultyImpl(
      null == difficulty
          ? _value.difficulty
          : difficulty // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SelectDifficultyImpl implements _SelectDifficulty {
  const _$SelectDifficultyImpl(this.difficulty);

  @override
  final String difficulty;

  @override
  String toString() {
    return 'HomePageEvent.selectDifficulty(difficulty: $difficulty)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectDifficultyImpl &&
            (identical(other.difficulty, difficulty) ||
                other.difficulty == difficulty));
  }

  @override
  int get hashCode => Object.hash(runtimeType, difficulty);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectDifficultyImplCopyWith<_$SelectDifficultyImpl> get copyWith =>
      __$$SelectDifficultyImplCopyWithImpl<_$SelectDifficultyImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectDifficulty(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectDifficulty?.call(difficulty);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectDifficulty != null) {
      return selectDifficulty(difficulty);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectDifficulty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectDifficulty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectDifficulty != null) {
      return selectDifficulty(this);
    }
    return orElse();
  }
}

abstract class _SelectDifficulty implements HomePageEvent {
  const factory _SelectDifficulty(final String difficulty) =
      _$SelectDifficultyImpl;

  String get difficulty;
  @JsonKey(ignore: true)
  _$$SelectDifficultyImplCopyWith<_$SelectDifficultyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectLowCalorieImplCopyWith<$Res> {
  factory _$$SelectLowCalorieImplCopyWith(_$SelectLowCalorieImpl value,
          $Res Function(_$SelectLowCalorieImpl) then) =
      __$$SelectLowCalorieImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool selected});
}

/// @nodoc
class __$$SelectLowCalorieImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectLowCalorieImpl>
    implements _$$SelectLowCalorieImplCopyWith<$Res> {
  __$$SelectLowCalorieImplCopyWithImpl(_$SelectLowCalorieImpl _value,
      $Res Function(_$SelectLowCalorieImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectLowCalorieImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectLowCalorieImpl implements _SelectLowCalorie {
  const _$SelectLowCalorieImpl(this.selected);

  @override
  final bool selected;

  @override
  String toString() {
    return 'HomePageEvent.selectLowCalorie(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectLowCalorieImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectLowCalorieImplCopyWith<_$SelectLowCalorieImpl> get copyWith =>
      __$$SelectLowCalorieImplCopyWithImpl<_$SelectLowCalorieImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectLowCalorie(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectLowCalorie?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectLowCalorie != null) {
      return selectLowCalorie(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectLowCalorie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectLowCalorie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectLowCalorie != null) {
      return selectLowCalorie(this);
    }
    return orElse();
  }
}

abstract class _SelectLowCalorie implements HomePageEvent {
  const factory _SelectLowCalorie(final bool selected) = _$SelectLowCalorieImpl;

  bool get selected;
  @JsonKey(ignore: true)
  _$$SelectLowCalorieImplCopyWith<_$SelectLowCalorieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectVeganImplCopyWith<$Res> {
  factory _$$SelectVeganImplCopyWith(
          _$SelectVeganImpl value, $Res Function(_$SelectVeganImpl) then) =
      __$$SelectVeganImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool selected});
}

/// @nodoc
class __$$SelectVeganImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectVeganImpl>
    implements _$$SelectVeganImplCopyWith<$Res> {
  __$$SelectVeganImplCopyWithImpl(
      _$SelectVeganImpl _value, $Res Function(_$SelectVeganImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectVeganImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectVeganImpl implements _SelectVegan {
  const _$SelectVeganImpl(this.selected);

  @override
  final bool selected;

  @override
  String toString() {
    return 'HomePageEvent.selectVegan(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectVeganImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectVeganImplCopyWith<_$SelectVeganImpl> get copyWith =>
      __$$SelectVeganImplCopyWithImpl<_$SelectVeganImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectVegan(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectVegan?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectVegan != null) {
      return selectVegan(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectVegan(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectVegan?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectVegan != null) {
      return selectVegan(this);
    }
    return orElse();
  }
}

abstract class _SelectVegan implements HomePageEvent {
  const factory _SelectVegan(final bool selected) = _$SelectVeganImpl;

  bool get selected;
  @JsonKey(ignore: true)
  _$$SelectVeganImplCopyWith<_$SelectVeganImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectPaleoImplCopyWith<$Res> {
  factory _$$SelectPaleoImplCopyWith(
          _$SelectPaleoImpl value, $Res Function(_$SelectPaleoImpl) then) =
      __$$SelectPaleoImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool selected});
}

/// @nodoc
class __$$SelectPaleoImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SelectPaleoImpl>
    implements _$$SelectPaleoImplCopyWith<$Res> {
  __$$SelectPaleoImplCopyWithImpl(
      _$SelectPaleoImpl _value, $Res Function(_$SelectPaleoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selected = null,
  }) {
    return _then(_$SelectPaleoImpl(
      null == selected
          ? _value.selected
          : selected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SelectPaleoImpl implements _SelectPaleo {
  const _$SelectPaleoImpl(this.selected);

  @override
  final bool selected;

  @override
  String toString() {
    return 'HomePageEvent.selectPaleo(selected: $selected)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectPaleoImpl &&
            (identical(other.selected, selected) ||
                other.selected == selected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectPaleoImplCopyWith<_$SelectPaleoImpl> get copyWith =>
      __$$SelectPaleoImplCopyWithImpl<_$SelectPaleoImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return selectPaleo(selected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return selectPaleo?.call(selected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectPaleo != null) {
      return selectPaleo(selected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return selectPaleo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return selectPaleo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (selectPaleo != null) {
      return selectPaleo(this);
    }
    return orElse();
  }
}

abstract class _SelectPaleo implements HomePageEvent {
  const factory _SelectPaleo(final bool selected) = _$SelectPaleoImpl;

  bool get selected;
  @JsonKey(ignore: true)
  _$$SelectPaleoImplCopyWith<_$SelectPaleoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeToppingsImplCopyWith<$Res> {
  factory _$$ChangeToppingsImplCopyWith(_$ChangeToppingsImpl value,
          $Res Function(_$ChangeToppingsImpl) then) =
      __$$ChangeToppingsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<String> data});
}

/// @nodoc
class __$$ChangeToppingsImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$ChangeToppingsImpl>
    implements _$$ChangeToppingsImplCopyWith<$Res> {
  __$$ChangeToppingsImplCopyWithImpl(
      _$ChangeToppingsImpl _value, $Res Function(_$ChangeToppingsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChangeToppingsImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$ChangeToppingsImpl implements _ChangeToppings {
  const _$ChangeToppingsImpl(final List<String> data) : _data = data;

  final List<String> _data;
  @override
  List<String> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'HomePageEvent.changeToppings(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeToppingsImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeToppingsImplCopyWith<_$ChangeToppingsImpl> get copyWith =>
      __$$ChangeToppingsImplCopyWithImpl<_$ChangeToppingsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return changeToppings(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return changeToppings?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (changeToppings != null) {
      return changeToppings(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return changeToppings(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return changeToppings?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (changeToppings != null) {
      return changeToppings(this);
    }
    return orElse();
  }
}

abstract class _ChangeToppings implements HomePageEvent {
  const factory _ChangeToppings(final List<String> data) = _$ChangeToppingsImpl;

  List<String> get data;
  @JsonKey(ignore: true)
  _$$ChangeToppingsImplCopyWith<_$ChangeToppingsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchImplCopyWith<$Res> {
  factory _$$SearchImplCopyWith(
          _$SearchImpl value, $Res Function(_$SearchImpl) then) =
      __$$SearchImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String value});
}

/// @nodoc
class __$$SearchImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$SearchImpl>
    implements _$$SearchImplCopyWith<$Res> {
  __$$SearchImplCopyWithImpl(
      _$SearchImpl _value, $Res Function(_$SearchImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
  }) {
    return _then(_$SearchImpl(
      null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchImpl implements _Search {
  const _$SearchImpl(this.value);

  @override
  final String value;

  @override
  String toString() {
    return 'HomePageEvent.search(value: $value)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchImpl &&
            (identical(other.value, value) || other.value == value));
  }

  @override
  int get hashCode => Object.hash(runtimeType, value);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      __$$SearchImplCopyWithImpl<_$SearchImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return search(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return search?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements HomePageEvent {
  const factory _Search(final String value) = _$SearchImpl;

  String get value;
  @JsonKey(ignore: true)
  _$$SearchImplCopyWith<_$SearchImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveToppingImplCopyWith<$Res> {
  factory _$$RemoveToppingImplCopyWith(
          _$RemoveToppingImpl value, $Res Function(_$RemoveToppingImpl) then) =
      __$$RemoveToppingImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String topping});
}

/// @nodoc
class __$$RemoveToppingImplCopyWithImpl<$Res>
    extends _$HomePageEventCopyWithImpl<$Res, _$RemoveToppingImpl>
    implements _$$RemoveToppingImplCopyWith<$Res> {
  __$$RemoveToppingImplCopyWithImpl(
      _$RemoveToppingImpl _value, $Res Function(_$RemoveToppingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? topping = null,
  }) {
    return _then(_$RemoveToppingImpl(
      null == topping
          ? _value.topping
          : topping // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveToppingImpl implements _RemoveTopping {
  const _$RemoveToppingImpl(this.topping);

  @override
  final String topping;

  @override
  String toString() {
    return 'HomePageEvent.removeTopping(topping: $topping)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveToppingImpl &&
            (identical(other.topping, topping) || other.topping == topping));
  }

  @override
  int get hashCode => Object.hash(runtimeType, topping);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveToppingImplCopyWith<_$RemoveToppingImpl> get copyWith =>
      __$$RemoveToppingImplCopyWithImpl<_$RemoveToppingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double rating, int rate) selectTime,
    required TResult Function(int persons) selectPerson,
    required TResult Function(String difficulty) selectDifficulty,
    required TResult Function(bool selected) selectLowCalorie,
    required TResult Function(bool selected) selectVegan,
    required TResult Function(bool selected) selectPaleo,
    required TResult Function(List<String> data) changeToppings,
    required TResult Function(String value) search,
    required TResult Function(String topping) removeTopping,
  }) {
    return removeTopping(topping);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(double rating, int rate)? selectTime,
    TResult? Function(int persons)? selectPerson,
    TResult? Function(String difficulty)? selectDifficulty,
    TResult? Function(bool selected)? selectLowCalorie,
    TResult? Function(bool selected)? selectVegan,
    TResult? Function(bool selected)? selectPaleo,
    TResult? Function(List<String> data)? changeToppings,
    TResult? Function(String value)? search,
    TResult? Function(String topping)? removeTopping,
  }) {
    return removeTopping?.call(topping);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(double rating, int rate)? selectTime,
    TResult Function(int persons)? selectPerson,
    TResult Function(String difficulty)? selectDifficulty,
    TResult Function(bool selected)? selectLowCalorie,
    TResult Function(bool selected)? selectVegan,
    TResult Function(bool selected)? selectPaleo,
    TResult Function(List<String> data)? changeToppings,
    TResult Function(String value)? search,
    TResult Function(String topping)? removeTopping,
    required TResult orElse(),
  }) {
    if (removeTopping != null) {
      return removeTopping(topping);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectTime value) selectTime,
    required TResult Function(_SelectPerson value) selectPerson,
    required TResult Function(_SelectDifficulty value) selectDifficulty,
    required TResult Function(_SelectLowCalorie value) selectLowCalorie,
    required TResult Function(_SelectVegan value) selectVegan,
    required TResult Function(_SelectPaleo value) selectPaleo,
    required TResult Function(_ChangeToppings value) changeToppings,
    required TResult Function(_Search value) search,
    required TResult Function(_RemoveTopping value) removeTopping,
  }) {
    return removeTopping(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SelectTime value)? selectTime,
    TResult? Function(_SelectPerson value)? selectPerson,
    TResult? Function(_SelectDifficulty value)? selectDifficulty,
    TResult? Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult? Function(_SelectVegan value)? selectVegan,
    TResult? Function(_SelectPaleo value)? selectPaleo,
    TResult? Function(_ChangeToppings value)? changeToppings,
    TResult? Function(_Search value)? search,
    TResult? Function(_RemoveTopping value)? removeTopping,
  }) {
    return removeTopping?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectTime value)? selectTime,
    TResult Function(_SelectPerson value)? selectPerson,
    TResult Function(_SelectDifficulty value)? selectDifficulty,
    TResult Function(_SelectLowCalorie value)? selectLowCalorie,
    TResult Function(_SelectVegan value)? selectVegan,
    TResult Function(_SelectPaleo value)? selectPaleo,
    TResult Function(_ChangeToppings value)? changeToppings,
    TResult Function(_Search value)? search,
    TResult Function(_RemoveTopping value)? removeTopping,
    required TResult orElse(),
  }) {
    if (removeTopping != null) {
      return removeTopping(this);
    }
    return orElse();
  }
}

abstract class _RemoveTopping implements HomePageEvent {
  const factory _RemoveTopping(final String topping) = _$RemoveToppingImpl;

  String get topping;
  @JsonKey(ignore: true)
  _$$RemoveToppingImplCopyWith<_$RemoveToppingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
