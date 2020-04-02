part of 'bottom_nav_bloc.dart';

abstract class BottomNavState extends Equatable {
  const BottomNavState();

  @override
  List<Object> get props => [];
}

class CurrentIndexChangedState extends BottomNavState {
  final int currentIndex;
  CurrentIndexChangedState({@required this.currentIndex});
}

class PageLoadingState extends BottomNavState {}

class HomePageLoadedState extends BottomNavState {}

class InfoPageLoadedState extends BottomNavState {}

class NewsPageLoadedState extends BottomNavState {}

class ContactPageLoadedState extends BottomNavState {}
