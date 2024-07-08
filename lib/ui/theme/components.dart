import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoldText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;

  const BoldText(
      {super.key,
        required this.text,
        this.fontSize = 14,
        this.color = Colors.black,
        this.height = .1
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.start,
      softWrap: true,
      overflow: TextOverflow.clip,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        fontFamily: "SemiBold"
      ),
    );
  }
}
