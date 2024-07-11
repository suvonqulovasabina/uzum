import 'package:flutter/material.dart';
import 'package:uzum/utils/constants/assets.dart';

import '../light_colors.dart';

class SecondaryText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  final VoidCallback? onClick;
  final String? fontFamily;
  final TextAlign textAlign;

  const SecondaryText(
    this.text, {
    this.textAlign = TextAlign.start,
    super.key,
    this.fontSize = 14,
    this.color = LightColors.secondaryText,
    this.height = 1.5,
    this.onClick,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return onClick != null
        ? TextButton(
            onPressed: onClick,
            child: Text(
              text,
              textAlign: textAlign,
              softWrap: true,
              overflow: TextOverflow.clip,
              style: TextStyle(
                color: color,
                fontSize: fontSize,
                height: height,
                fontFamily: fontFamily ?? UzumFontFamily.semiBold,
              ),
            ),
          )
        : Text(
            text,
            textAlign: textAlign,
            softWrap: true,
            overflow: TextOverflow.clip,
            style: TextStyle(
              color: color,
              fontSize: fontSize,
              height: height,
              fontFamily: fontFamily ?? UzumFontFamily.semiBold,
            ),
          );
  }
}
