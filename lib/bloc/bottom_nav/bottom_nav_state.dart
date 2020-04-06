part of 'bottom_nav_bloc.dart';

abstract class BottomNavState extends Equatable {
  const BottomNavState();

  @override
  List<Object> get props => [];
}

class HomePageState extends BottomNavState {}

class StatisticPageState extends BottomNavState {}

class FaqPageState extends BottomNavState {}

class ContactPageState extends BottomNavState {}
