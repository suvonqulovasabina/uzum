import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, BottomNavigationState> {
  BottomNavigationBloc() : super(BottomNavigationState.initial()) {
    on<ChangeNavigation>((event, emit) {
      emit(state.copyWith(index: event.index));
    });
  }
}
