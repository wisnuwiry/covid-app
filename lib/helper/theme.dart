import 'package:flutter/material.dart';

import 'helpers.dart';

ThemeData themeDark = ThemeData.dark().copyWith(
  primaryColor: Color(PRIMARY_COLOR),
  scaffoldBackgroundColor: Color(BACKGROUND_COLOR_DARK),
  cardColor: Color(CARD_COLOR_DARK),
  canvasColor: Color(CANVAS_COLOR_DARK),
);

ThemeData themeLight = ThemeData.light().copyWith(
  primaryColor: Color(PRIMARY_COLOR),
);
