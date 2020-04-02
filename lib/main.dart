import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'helper/helpers.dart';
import 'routes.dart';
import 'ui/screen/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));

    return MaterialApp(
      title: 'Covid 19',
      theme: themeDark,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: generateRoute,
      home: MainScreen(),
    );
  }
}
