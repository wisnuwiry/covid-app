import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  int currentIndex = 0;
  @override
  BottomNavState get initialState => HomePageState();

  @override
  Stream<BottomNavState> mapEventToState(
    BottomNavEvent event,
  ) async* {
    if (event is HomePageEvent) {
      yield HomePageState();
    }else if(event is StatisticPageEvent){
      yield StatisticPageState();
    }else if(event is FaqPageEvent){
      yield FaqPageState();
    }else if(event is ContactPageEvent){
      yield ContactPageState();
    }
  }
}
