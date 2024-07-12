import 'package:flutter/material.dart';
import 'package:uzum/ui/support/bloc/support_bloc.dart';
import 'package:uzum/ui/theme/components/secondary_text.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/utils/constants/assets.dart';

class TextMessageWidget extends StatelessWidget {
  const TextMessageWidget({super.key, required this.data});

  final TextMessage data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Align(
      alignment: data.isUserOwner ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.only(left: data.isUserOwner ? width / 4 : 0, right: data.isUserOwner ? 0 : width / 4),
        decoration: BoxDecoration(
          color: data.isUserOwner ? LightColors.primaryFixedDim : LightColors.surfaceContainer,
          borderRadius: BorderRadius.only(
            topRight: const Radius.circular(12),
            topLeft: const Radius.circular(12),
            bottomLeft: Radius.circular(data.isUserOwner ? 12 : 0),
            bottomRight: Radius.circular(data.isUserOwner ? 0 : 12),
          ),
        ),
        padding: const EdgeInsets.all(12),
        child: SecondaryText(data.text, color: Colors.black, fontFamily: UzumFontFamily.medium),
      ),
    );
  }
}

/*
OOP - obyektlar bilan ishlash,
hayotdagi narsalarni klass va obyektlar tushinchalari bilan dasturlashga olib kirish.

Inheritance, Abstraction, Polymorphism, Encapsulation
*/
