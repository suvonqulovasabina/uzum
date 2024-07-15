import 'package:flutter/material.dart';
import 'package:uzum/ui/transfer/card_selection/ui/card_container.dart';
import 'package:uzum/ui/transfer/card_selection/ui/select_summa.dart';

import '../card_transfer/ui/aad_button.dart';
import '../result/ui/result_screen.dart';

class CardSelectionScreen extends StatefulWidget {
  const CardSelectionScreen({super.key});

  @override
  State<CardSelectionScreen> createState() => _CardSelectionScreenState();
}

class _CardSelectionScreenState extends State<CardSelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("O'tkazma"),
      ),
      body: Column(
        children: [
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const CardContainer();
            },
            itemCount: 1,
          ),
          SelectSumma(),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Summani kiritganinggizdan so'ng komisiya miqdori korindi",
              style: TextStyle(fontSize: 14),
            ),
          ),
          SelectSumma(),
          TransferButton(
            click: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Result()));
            },
          )
        ],
      ),
    );
  }
}