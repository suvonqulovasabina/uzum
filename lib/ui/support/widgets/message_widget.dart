import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uzum/ui/support/widgets/text_message_widget.dart';
import 'package:uzum/ui/theme/components/secondary_text.dart';
import 'package:uzum/utils/constants/assets.dart';

import '../bloc/support_bloc.dart';
import 'image_message_widget.dart';

class MessageWidget extends StatelessWidget {
  const MessageWidget({super.key, required this.message});

  final Message message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (message is TextMessage)
          TextMessageWidget(data: message as TextMessage)
        else if (message is ImageMessage)
          ImageMessageWidget(data: message as ImageMessage),
        Align(
          alignment: Alignment.centerRight,
          child: SecondaryText(
            color: Colors.black,
            fontFamily: UzumFontFamily.medium,
            fontSize: 12,
            DateFormat('hh:mm').format(message.time),
          ),
        ),
        const SizedBox(height: 8)
      ],
    );
  }
}
