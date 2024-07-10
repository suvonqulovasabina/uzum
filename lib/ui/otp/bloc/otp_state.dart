part of 'otp_bloc.dart';

class OtpState {
  final Status status;
  final int timer;

  OtpState({required this.status, required this.timer});

  factory OtpState.initial() {
    return OtpState(
      status: Status.initial,
      timer: 60,
    );
  }

  OtpState copyWith({Status? status, int? timer}) {
    return OtpState(
      status: status ?? this.status,
      timer: timer ?? this.timer,
    );
  }

  @override
  String toString() {
    return 'OtpState{status: $status, timer: $timer}';
  }
}
