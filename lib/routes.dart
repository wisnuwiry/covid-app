import 'package:flutter/material.dart';

import 'helper/helpers.dart';
import 'ui/common/commons.dart';
import 'ui/screen/screens.dart';

Route generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case mainScreen:
      return PageTransition(child: MainScreen());
      break;
    case splashScreen:
      return PageTransition(child: SplashScreen());
      break;
    default:
      return PageTransition(child: SplashScreen());
  }
}
