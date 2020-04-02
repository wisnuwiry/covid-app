import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final Function(int) onTap;
  final int currentIndex;

  const BottomNav(
      {Key key, @required this.items, this.onTap, this.currentIndex})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        color: Theme.of(context).canvasColor,
      ),
      child: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,       
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Color(0xFF212736),
        selectedItemColor: Color(0xFF374664),
        items: items,
        onTap: onTap,
        elevation: 0,
        currentIndex: currentIndex,
      ),
    );
  }
}
