part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent extends Equatable {
  const BottomNavEvent();
  
  @override
  List<Object> get props => null;
}

class HomePageEvent extends BottomNavEvent{}
class StatisticPageEvent extends BottomNavEvent{}
class FaqPageEvent extends BottomNavEvent{}
class ContactPageEvent extends BottomNavEvent{}