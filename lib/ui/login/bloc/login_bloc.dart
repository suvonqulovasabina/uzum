import 'package:bloc/bloc.dart';
import 'package:uzum/domain/repositories/registration_repository.dart';

import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _repository = di<RegistrationRepository>();

  LoginBloc() : super(LoginState.initial()) {
    on<LoginUserEvent>((event, emit) {
      emit(state.copyWith(status: Status.loading));

      _repository.login(
        phone: event.phone,
        password: event.password,
      ).then(
        (value) {
          emit(state.copyWith(status: Status.success));
        },
      ).catchError(
        (error) {
          emit(state.copyWith(status: Status.fail, errorMessage: error.toString()));
        },
      );
    });
  }
}
