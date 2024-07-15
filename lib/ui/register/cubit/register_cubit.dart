import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:uzum/domain/repositories/registration_repository.dart';

import '../../../di/di.dart';
import '../../../utils/status.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final _repository = di<RegistrationRepository>();

  RegisterCubit() : super(RegisterState.initial());

  void registerUser({required String password, required String phone, required String firstName}) {
    _repository
      .register(
      phone: phone,
      password: password,
      firstName: firstName,
    )
      .then(
      (value) {
        emit(state.copyWith(status: Status.success));
      },
    ).catchError(
      (error) {
        emit(state.copyWith(status: Status.fail, errorMessage: error.toString()));
      },
    );
  }
}
