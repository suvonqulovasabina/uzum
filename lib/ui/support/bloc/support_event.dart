part of 'support_bloc.dart';

abstract class SupportEvent {}

final class SupportTextChanged extends SupportEvent {
  final String message;

  SupportTextChanged(this.message);
}

final class SendMessage extends SupportEvent {
  final String message;

  SendMessage({required this.message});
}
