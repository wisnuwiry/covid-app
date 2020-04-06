import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final VoidCallback onPress;

  const PrimaryButton({Key key, @required this.onPress, @required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).canvasColor,
          border: Border.all(color: Theme.of(context).cardColor, width: 2),
        ),
        child: child,
      ),
    );
  }
}
