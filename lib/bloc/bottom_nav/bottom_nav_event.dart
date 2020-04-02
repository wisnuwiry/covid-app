part of 'bottom_nav_bloc.dart';

abstract class BottomNavEvent extends Equatable {
  const BottomNavEvent();
}

class PageTappedEvent extends BottomNavEvent{
  final int index;

  PageTappedEvent({@required this.index});

  @override
  List<Object> get props => null;
}