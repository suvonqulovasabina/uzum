part of 'support_bloc.dart';

class SupportState {
  final TextEditingController controller;
  final List<Message> messages;

  SupportState({required this.controller, required this.messages});

  factory SupportState.initial() {
    return SupportState(
      controller: TextEditingController(),
      messages: [
        TextMessage(
          text: 'Assalomun alaykum',
          isUserOwner: true,
          time: DateTime.now(),
        ),
        TextMessage(
          text: 'Vaalaykum assalom Assalomu alaykum. Yaxshimisiz',
          isUserOwner: false,
          time: DateTime.now(),
        ),
        ImageMessage(time: DateTime.now(), isUserOwner: true, imagePath: Assets.test),
      ],
    );
  }

  SupportState copyWith({TextEditingController? controller, List<Message>? messages}) {
    return SupportState(
      controller: controller ?? this.controller,
      messages: messages ?? this.messages,
    );
  }
}

abstract class Message {
  final DateTime time;
  final bool isUserOwner;

  Message({required this.time, required this.isUserOwner});
}

class TextMessage extends Message {
  final String text;

  TextMessage({required super.isUserOwner, required super.time, required this.text});
}

class ImageMessage extends Message {
  final String imagePath;

  ImageMessage({required super.time, required super.isUserOwner, required this.imagePath});
}
