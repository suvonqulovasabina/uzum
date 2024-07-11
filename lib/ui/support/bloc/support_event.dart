part of 'support_bloc.dart';

abstract class SupportEvent {}

final class SupportTextChanged extends SupportEvent {
  final String message;

  SupportTextChanged(this.message);
}
