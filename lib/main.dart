import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/bottom_nav/bottom_nav_bloc.dart';
import 'bloc/theme/theme_bloc.dart';
import 'helper/helpers.dart';
import 'routes.dart';
import 'ui/screen/screens.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
    ),
    BlocProvider<BottomNavBloc>(
      create: (context) => BottomNavBloc(),
    )
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        bool _isDark;
        if (state is ThemeLightState) {
          _isDark = false;
        } else if (state is ThemeDarkState) {
          _isDark = true;
        }
        return MaterialApp(
          title: 'Covid 19',
          theme: _isDark ? themeDark : themeLight,
          debugShowCheckedModeBanner: false,
          onGenerateRoute: generateRoute,
          home: MainScreen(),
        );
      },
    );
  }
}
