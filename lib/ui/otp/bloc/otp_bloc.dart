import 'package:bloc/bloc.dart';

import '../../../utils/status.dart';

part 'otp_event.dart';
part 'otp_state.dart';

class OtpBloc extends Bloc<OtpEvent, OtpState> {
  OtpBloc() : super(OtpState.initial()) {
    on<OtpEvent>((event, emit) {});

    on<OtpTimerTick>((event, emit) {
      final currentState = state;
      if (currentState.timer > 0) {
        emit(currentState.copyWith(timer: currentState.timer - 1));
      } else {}
    });
  }
}
