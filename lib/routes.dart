import 'package:flutter/material.dart';

import 'helper/helpers.dart';
import 'ui/common/commons.dart';
import 'ui/screen/screens.dart';

Route generateRoute(RouteSettings settings) {
  final arg = settings.arguments;
  switch (settings.name) {
    case mainScreen:
      return PageTransition(child: MainScreen());
      break;
    case splashScreen:
      return PageTransition(child: SplashScreen());
      break;
    case webScreen:
      return PageTransition(
          child: WebViewScreen(
        url: arg,
      ));
      break;
    // case newsDetailScreen:
      // return PageTransition(child: NewsDetailScreen());
      // break;
    default:
      return PageTransition(child: SplashScreen());
  }
}
