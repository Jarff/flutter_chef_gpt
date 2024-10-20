import 'package:chef_gpt/core/application/bloc/home_page/homepage_event.dart';
import 'package:chef_gpt/core/application/bloc/home_page/homepage_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomepageState> {
  HomePageBloc() : super(HomepageState.initial()) {
    on<HomePageEvent>((event, emit) {
      event.when(
        selectTime: (rating) => emit(state.copyWith(rating: rating)),
        selectPerson: (persons) =>
            emit(state.copyWith(selectedPerson: persons)),
      );
    });
  }

  selectTime(double rating) {
    add(HomePageEvent.selectTime(rating));
  }

  selectPerson(int persons) {
    add(HomePageEvent.selectPerson(persons));
  }
}
