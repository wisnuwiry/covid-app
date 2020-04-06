import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'theme_state.dart';

enum ThemeEvent { dark, light }

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  @override
  ThemeState get initialState => ThemeDarkState();

  @override
  Stream<ThemeState> mapEventToState(
    ThemeEvent event,
  ) async* {
    switch (event) {
      case ThemeEvent.dark:
        yield ThemeDarkState();
        break;
      case ThemeEvent.light:
        yield ThemeLightState();
        break;
    }
  }
}
