import 'package:flutter/material.dart';

import '../../../helper/helpers.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Responsive _resp;

  @override
  Widget build(BuildContext context) {
    _resp = Responsive(context);

    return Scaffold(
      body: Container(
        child: Column(
          children: <Widget>[
            _buildLogo(),
            _buildVersionText(),
          ],
        ),
      ),
    );
  }

  Widget _buildLogo() {
    return Expanded(
      child: Center(
        child: Image.asset(
          splash_image,
          width: _resp.w(50),
          height: _resp.h(50),
        ),
      ),
    );
  }

  Widget _buildVersionText() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Text('1.0.0'),
    );
  }
}
