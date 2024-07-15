part of 'login_bloc.dart';

class LoginState {
  final Status status;
  final String? errorMessage;

  LoginState({
    required this.status,
    required this.errorMessage,
  });

  LoginState copyWith({
    Status? status,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  factory LoginState.initial() {
    return LoginState(
      status: Status.initial,
      errorMessage: null,
    );
  }
}
