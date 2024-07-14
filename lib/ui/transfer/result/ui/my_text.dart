import 'package:flutter/cupertino.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class MyText extends StatelessWidget {
  final String text;

  const MyText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          color: LightColors.white2, fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
