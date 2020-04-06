import 'package:covid19/bloc/bottom_nav/bottom_nav_bloc.dart';
import 'package:covid19/helper/helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
    switch (index) {
      case 0:
        BlocProvider.of<BottomNavBloc>(context).add(HomePageEvent());
        break;
      case 1:
        BlocProvider.of<BottomNavBloc>(context).add(StatisticPageEvent());
        break;
      case 2:
        BlocProvider.of<BottomNavBloc>(context).add(FaqPageEvent());
        break;
      case 3:
        BlocProvider.of<BottomNavBloc>(context).add(ContactPageEvent());
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  Widget _buildBody(){
    return BlocBuilder<BottomNavBloc, BottomNavState>(
      builder: (context, state) {
        if(state is HomePageState){
          _selectedIndex = 0;
          return HomeScreen();
        }else if(state is StatisticPageState){
          _selectedIndex = 1;
          return StatisticScreen();
        }else if (state is FaqPageState){
          _selectedIndex = 2;
          return InfoScreen();
        }else if(state is ContactPageState){
          _selectedIndex = 3;
          return ContactScreen();
        }else{
          return Container();
        }
      },
    );
  }

  Widget _buildBottomNav() {
    return BottomNav(
      items: [
        BottomNavigationBarItem(
          icon: Icon(NavigationIcon.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(NavigationIcon.analitics),
          title: Text('Statistik'),
        ),
        BottomNavigationBarItem(
          icon: Icon(NavigationIcon.question),
          title: Text('FAQ'),
        ),
        BottomNavigationBarItem(
          icon: Icon(NavigationIcon.phone),
          title: Text('Contact'),
        ),
      ],
      currentIndex: _selectedIndex,
      onTap: _onTapNav,
    );
  }
}
