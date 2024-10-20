import 'package:freezed_annotation/freezed_annotation.dart';

part 'homepage_event.freezed.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.selectTime(double rating) = _SelectTime;
  const factory HomePageEvent.selectPerson(int persons) = _SelectPerson;
  // const factory HomePageEvent.onChipDeleted(String topping) = _OnChipDeleted;
}
