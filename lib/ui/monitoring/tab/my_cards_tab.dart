import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/theme/light_colors.dart';

import '../../theme/components.dart';

class MyCardsTab extends StatefulWidget {
  const MyCardsTab({super.key});

  @override
  State<MyCardsTab> createState() => _MyCardsTabState();
}

class _MyCardsTabState extends State<MyCardsTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.white3,
      body: Column(
        children: [
          MyCardItem(
            cardNumber: '8600310408174563',
            ownerName: "G'ANIYE MUHAMMAD",
            amount: 221988.03,
            date: '06/28',
          )
        ],
      ),
    );
  }
}
