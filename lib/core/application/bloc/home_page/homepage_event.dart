import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_event.freezed.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.selectTime(double rating, int rate) = _SelectTime;
  const factory HomePageEvent.selectPerson(int persons) = _SelectPerson;
  const factory HomePageEvent.selectDifficulty(String difficulty) =
      _SelectDifficulty;
  const factory HomePageEvent.selectLowCalorie(bool selected) =
      _SelectLowCalorie;
  const factory HomePageEvent.selectVegan(bool selected) = _SelectVegan;
  const factory HomePageEvent.selectPaleo(bool selected) = _SelectPaleo;
  const factory HomePageEvent.changeToppings(List<String> data) =
      _ChangeToppings;
  const factory HomePageEvent.search(String value) = _Search;
  const factory HomePageEvent.removeTopping(String topping) = _RemoveTopping;
}
