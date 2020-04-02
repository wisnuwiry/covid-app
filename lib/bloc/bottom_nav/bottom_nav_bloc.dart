import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  int currentIndex = 0;
  @override
  BottomNavState get initialState => PageLoadingState();

  @override
  Stream<BottomNavState> mapEventToState(
    BottomNavEvent event,
  ) async* {
    if (event is PageTappedEvent) {
      yield CurrentIndexChangedState(currentIndex: this.currentIndex);
      yield PageLoadingState();

      switch (this.currentIndex) {
        case 0:
          yield HomePageLoadedState();
          break;
        case 1:
          yield InfoPageLoadedState();
          break;
        case 2:
          yield NewsPageLoadedState();
          break;
        case 3:
          yield ContactPageLoadedState();
          break;
        default:
      }
    }
  }
}
