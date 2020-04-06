import 'package:flutter/material.dart';

class PageTransition extends PageRouteBuilder {
  final Widget child;

  PageTransition({@required this.child})
      : super(
            pageBuilder: (_, Animation<double> animation,
                Animation<double> secondAnimation) {
              return child;
            },
            transitionDuration: Duration(milliseconds: 300),
            transitionsBuilder: (_, Animation<double> animation,
                Animation<double> secondAnimation, Widget child) {
              return SlideTransition(
                position:
                    Tween<Offset>(begin: Offset(1.0, 0.0), end: Offset.zero)
                        .animate(animation),
                child: SlideTransition(
                  position:
                      Tween<Offset>(begin: Offset.zero, end: Offset(-1.0, 0.0))
                          .animate(secondAnimation),
                  child: child,
                ),
              );
            });
}
