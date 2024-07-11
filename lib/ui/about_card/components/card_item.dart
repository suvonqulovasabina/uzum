import 'package:flutter/material.dart';
import 'package:uzum/utils/string_extension.dart';

import '../../theme/light_colors.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xffe0e0e0),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              margin: const EdgeInsets.only(right: 8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: LightColors.surfaceContainer,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Text('Main card'),
            ),
          ),
          Container(
            color: const Color(0xffa1a1a1),
            alignment: Alignment.center,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: LightColors.surfaceContainer,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    //child: Image.asset(Assets.icMasterCard, height: 24, width: 24),
                  ),
                ),
                Text("${'57208.45'.toValue()} UZS"),
                const Row(children: [
                  Text("5614 68** **** 1137"),
                  Spacer(),
                  Text('03/26'),
                ]),
                Text('Tohir Mirxomitov'.toUpperCase()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
