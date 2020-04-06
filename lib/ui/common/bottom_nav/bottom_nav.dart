import 'package:covid19/helper/helpers.dart';
import 'package:flutter/material.dart';

class BottomNav extends StatefulWidget {
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;
  final int currentIndex;

  const BottomNav(
      {Key key, @required this.items, this.onTap, this.currentIndex})
      : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      child: SizedBox(
        height: 70,
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(PRIMARY_COLOR_SECOND).withOpacity(0.3),
          selectedItemColor: Color(PRIMARY_COLOR_SECOND),
          items: widget.items,
          onTap: widget.onTap,
          elevation: 0,
          currentIndex: widget.currentIndex,
          iconSize: 20,
        ),
      ),
    );
  }
}
