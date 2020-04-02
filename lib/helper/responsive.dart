import 'package:flutter/cupertino.dart';

class Responsive {
  final BuildContext context;
  double _screenWidth;
  double _screenHeight;

  Responsive(this.context) {
    this._screenWidth = MediaQuery.of(context).size.width / 100;
    this._screenHeight = MediaQuery.of(context).size.height / 100;
  }

  /// example `h(50)`, 50 is 50% height screen device. [height] min `0` max `100`
  double h(double height) {
    _cekValidInput(height);
    return _screenHeight * height;
  }

  /// example `w(50)`, 50 is 50% width screen device. [width] min `0` max `100`
  double w(double width) {
    _cekValidInput(width);
    return _screenWidth * width;
  }

  _cekValidInput(double value) {
    if (value < 1) {
      return 0;
    } else if (value > 100) {
      return 100;
    } else {
      return value;
    }
  }
}
