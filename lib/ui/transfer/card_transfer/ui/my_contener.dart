import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/transfer/card_selection/card_selection_screen.dart';

import '../../../theme/light_colors.dart';

class MyContener extends StatelessWidget {
  final VoidCallback select;
  const MyContener({super.key, required this.select});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: LightColors.white2,
      ),
      height: 40,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: InkWell(


              child: Container(
                margin: const EdgeInsets.only(top: 4,bottom: 4,left: 4,right: 4),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: LightColors.allBackWhite,
                ),
                child: const Center(
                  child: Text("So'nggilari"),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                child: Text("Menikilar"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
