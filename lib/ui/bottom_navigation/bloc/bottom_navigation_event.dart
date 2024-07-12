part of 'bottom_navigation_bloc.dart';

class BottomNavigationEvent {}

final class ChangeNavigation extends BottomNavigationEvent {
  final int index;

  ChangeNavigation({required this.index});
}
