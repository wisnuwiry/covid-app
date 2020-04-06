import 'package:flutter/material.dart';

class CustomTextStyle {
  static TextStyle body1(BuildContext context) {
    return Theme.of(context)
        .textTheme
        .body1
        .copyWith(fontSize: 14, color: Theme.of(context).textTheme.caption.color);
  }
}
