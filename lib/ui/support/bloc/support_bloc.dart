import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'support_event.dart';
part 'support_state.dart';

class SupportBloc extends Bloc<SupportEvent, SupportState> {
  SupportBloc() : super(SupportState.initial()) {
    on<SupportTextChanged>((event, emit) => _onTextChanged(event, emit));
  }

  void _onTextChanged(SupportTextChanged event, Emitter<SupportState> emit) {
    state.controller.text = event.message;
    emit(state.copyWith(controller: state.controller));
  }
}
