import 'package:flutter/material.dart';
import 'package:uzum/ui/support/bloc/support_bloc.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class ImageMessageWidget extends StatelessWidget {
  const ImageMessageWidget({super.key, required this.data});

  final ImageMessage data;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return Align(
      alignment: data.isUserOwner ? Alignment.centerRight : Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          // TODO on click image;
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          margin: EdgeInsets.only(left: data.isUserOwner ? width / 4 : 0, right: data.isUserOwner ? 0 : width / 4),
          decoration: BoxDecoration(
            color: data.isUserOwner ? LightColors.primaryFixedDim : LightColors.surfaceContainer,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Image.asset(
            data.imagePath,
            height: width / 1.8,
            width: width / 1.8,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

/*
OOP - obyektlar bilan ishlash,
hayotdagi narsalarni klass va obyektlar tushinchalari bilan dasturlashga olib kirish.

Inheritance, Abstraction, Polymorphism, Encapsulation
*/
