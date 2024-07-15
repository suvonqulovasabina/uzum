part of 'register_cubit.dart';

class RegisterState {
  final String? errorMessage;
  final Status status;

  RegisterState({required this.errorMessage, required this.status});

  RegisterState copyWith({
    String? errorMessage,
    Status? status,
  }) {
    return RegisterState(
      errorMessage: errorMessage ?? this.errorMessage,
      status: status ?? this.status,
    );
  }

  factory RegisterState.initial() {
    return RegisterState(
      errorMessage: null,
      status: Status.initial,
    );
  }
}
