part of 'support_bloc.dart';

class SupportState {
  final TextEditingController controller;

  SupportState({required this.controller});

  factory SupportState.initial() {
    return SupportState(controller: TextEditingController());
  }

  SupportState copyWith({TextEditingController? controller}) {
    return SupportState(controller: controller ?? this.controller);
  }
}
