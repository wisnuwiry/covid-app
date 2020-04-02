import 'package:flutter/material.dart';

import '../../common/commons.dart';
import '../screens.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  void _onTapNav(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> _listBody = [
    HomeScreen(),
    InfoScreen(),
    NewsScreen(),
    ContactScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listBody[_selectedIndex],
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBottomNav() {
    return BottomNav(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.dashboard),
          title: Text('Dashboard'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          title: Text('Info'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.insert_invitation),
          title: Text('News'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.contacts),
          title: Text('Contact'),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onTapNav,
    );
  }
}
