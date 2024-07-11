part of 'bottom_navigation_bloc.dart';

class BottomNavigationState {
  final int index;

  BottomNavigationState({required this.index});

  factory BottomNavigationState.initial() {
    return BottomNavigationState(index: 0);
  }

  BottomNavigationState copyWith({int? index}) {
    return BottomNavigationState(index: index ?? this.index);
  }
}
