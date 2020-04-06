import 'package:flutter/material.dart';

import '../colors.dart';

part 'card.dart';

ThemeData themeDark = ThemeData.dark().copyWith(
  primaryColor: Color(PRIMARY_COLOR),
  accentColor: Color(PRIMARY_COLOR),
  scaffoldBackgroundColor: Color(BACKGROUND_COLOR_DARK),
  cardColor: Color(CARD_COLOR_DARK),
  canvasColor: Color(CANVAS_COLOR_DARK),
  appBarTheme: AppBarTheme(
    elevation: 0,
    color: Color(PRIMARY_COLOR_SECOND),
  ),
  cardTheme: cardThemeDark,
);

ThemeData themeLight = ThemeData.light().copyWith(
  primaryColor: Color(PRIMARY_COLOR),
);
