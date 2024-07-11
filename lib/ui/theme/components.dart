import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popover/popover.dart';
import 'package:uzum/ui/theme/my_images.dart';

import 'light_colors.dart';


class PopupButton extends StatelessWidget {
  const PopupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  const Icon(Icons.more_vert, size: 24, color: Colors.grey,),
      onTap: () {
        showPopover(
          context: context,
          bodyBuilder: (context) => const ListItems(),
          onPop: () => print('Popover was popped!'),
          direction: PopoverDirection.bottom,
          backgroundColor: Colors.white,
          width: 240,
          height: 56,
          arrowHeight: 15,
          arrowWidth: 30,
        );
      },
    );
  }
}

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        InkWell(
          onTap: () {

          },
          child: Container(
            color: Colors.white,
            child: const Row(
              children: [
                Icon(
                  CupertinoIcons.delete_simple,
                  size: 24,
                  color: Colors.red,
                ),

                SizedBox(width: 12,),

                MediumText(
                  text: 'Ro\'yxatdan olib tashlash',
                  height: 1,
                  maxLines: 2,
                  fontSize: 16,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class SemiBoldText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;

  const SemiBoldText(
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


class BoldText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  final int maxLines;
  final TextAlign textAlign;

  const BoldText(
      {super.key,
        required this.text,
        this.fontSize = 14,
        this.color = Colors.black,
        this.height = .1,
        this.maxLines = 1,
        this.textAlign = TextAlign.start
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        fontFamily: "UzumBold",
      ),
    );
  }
}




class MediumText extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color color;
  final double height;
  final int maxLines;
  final TextAlign textAlign;

  const MediumText(
      {super.key,
        required this.text,
        this.fontSize = 14,
        this.color = Colors.black,
        this.height = .1,
        this.maxLines = 1,
        this.textAlign = TextAlign.start
      });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        height: height,
        fontFamily: "Medium",
      ),
    );
  }
}

class CustomTextField extends StatefulWidget {
  final VoidCallback onTapSuffix;

  const CustomTextField({super.key, required this.onTapSuffix});

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 52,
      child: TextField(
        controller: _controller,
        onChanged: (text) {
          setState(() {}); // Trigger rebuild to update suffix icon
        },
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(16),
          CardNumberInputFormatter(),
        ],
        autofocus: false,
        cursorColor: LightColors.primary,
        cursorHeight: 20,
        decoration: InputDecoration(
          hintText: "Karta raqam yoki nomini kiriting",
          hintStyle: const TextStyle(color: Colors.grey, fontSize: 14, fontFamily: "Medium"),
          filled: true,
          fillColor: LightColors.white2,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 1.0,
            ),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Colors.red,
              width: 2.0,
            ),
          ),
          errorStyle: const TextStyle(color: Colors.red),
          suffixIcon: _controller.text.isEmpty
              ? InkWell(
                  onTap: widget.onTapSuffix,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SvgPicture.asset(
                      MyImages.scanCardSvg,
                      color: Colors.black,
                    ),
                  ),
                )
                : InkWell(
                  onTap: () {
                    _controller.clear();
                    setState(() {}); // Trigger rebuild to update suffix icon
                  },
                  child: const Icon(Icons.cancel, size: 20, color: Colors.black,),
                ),
        ),
        style: const TextStyle(color: Colors.black),
      ),
    );
  }
}


class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String newText = newValue.text.replaceAll(' ', '');
    if (newText.length > 16) {
      newText = newText.substring(0, 16);
    }

    final buffer = StringBuffer();
    for (int i = 0; i < newText.length; i++) {
      buffer.write(newText[i]);
      if ((i + 1) % 4 == 0 && i + 1 != newText.length) {
        buffer.write(' ');
      }
    }

    final String formattedText = buffer.toString();
    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }
}

