import 'package:chef_gpt/core/application/bloc/home_page/homepage_event.dart';
import 'package:chef_gpt/core/application/bloc/home_page/homepage_state.dart';
import 'package:chef_gpt/utils/commons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomepageState> {
  HomePageBloc() : super(HomepageState.initial()) {
    on<HomePageEvent>((event, emit) {
      event.when(
          selectTime: (rating, rate) {
            emit(
              state.copyWith(
                rating: rating,
                selectedTime: translateValue(rating, rate),
              ),
            );
          },
          selectPerson: (persons) =>
              emit(state.copyWith(selectedPerson: persons)),
          selectDifficulty: (difficulty) =>
              emit(state.copyWith(difficulty: difficulty)),
          selectLowCalorie: (selected) =>
              emit(state.copyWith(lowCalorie: selected)),
          selectVegan: (selected) => emit(state.copyWith(vegan: selected)),
          selectPaleo: (selected) => emit(state.copyWith(paleo: selected)),
          changeToppings: (data) => emit(state.copyWith(toppings: data)),
          search: (value) {
            if (value.isNotEmpty &&
                (value.endsWith(',') || value.endsWith(' '))) {
              // Check if the value contains a space or comma
              if (value.contains(RegExp(r'[ ,]'))) {
                // Split the input value by space or comma
                List<String> parts = value.split(RegExp(r'[ ,]+'));
                // Removes empty strings from the list
                parts.removeWhere((part) => part.isEmpty);

                // Process each part
                for (String part in parts) {
                  if (!state.toppings.contains(part)) {
                    List<String> toppings = List<String>.from(state.toppings);
                    toppings.add(part);
                    emit(state.copyWith(toppings: toppings));
                  } else {
                    List<String> toppings = List<String>.from(state.toppings);
                    toppings.remove(part);
                    emit(state.copyWith(toppings: toppings));
                  }
                }
              }
            }
          },
          removeTopping: (String topping) {
            List<String> tmp = List<String>.from(state.toppings);
            tmp.remove(topping);
            emit(state.copyWith(toppings: tmp));
          });
    });
  }

  selectTime(double rating, int rate) {
    add(HomePageEvent.selectTime(rating, rate));
  }

  selectPerson(int persons) {
    add(HomePageEvent.selectPerson(persons));
  }

  selectDifficulty(String difficulty) {
    add(HomePageEvent.selectDifficulty(difficulty));
  }

  selectLowCalorie(bool selected) {
    add(HomePageEvent.selectLowCalorie(selected));
  }

  selectVegan(bool selected) {
    add(HomePageEvent.selectVegan(selected));
  }

  selectPaleo(bool selected) {
    add(HomePageEvent.selectPaleo(selected));
  }

  changeToppings(List<String> data) {
    add(HomePageEvent.changeToppings(data));
  }

  search(String value) {
    add(HomePageEvent.search(value));
  }

  removeTopping(String topping) {
    add(HomePageEvent.removeTopping(topping));
  }
}
