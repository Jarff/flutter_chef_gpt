import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_state.freezed.dart';

@freezed
class HomepageState with _$HomepageState {
  factory HomepageState(
      {required double rating,
      required String selectedTime,
      required int rate,
      required int selectedPerson,
      required List<String> toppings,
      required String difficulty,
      required bool lowCalorie,
      required bool vegan,
      required bool paleo}) = _HomepageState;

  factory HomepageState.initial() => HomepageState(
        rating: 0,
        selectedTime: "5",
        rate: 12,
        selectedPerson: 2,
        toppings: [],
        difficulty: "Novice",
        lowCalorie: false,
        vegan: false,
        paleo: false,
      );
}
