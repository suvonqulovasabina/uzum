import 'package:flutter/material.dart';
import 'package:uzum/ui/about_card/components/card_item.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            // TODO GO ROUTER BACK
          },
        ),
      ),
      body: const Column(
        children: [
          CardItem(),
        ],
      ),
    );
  }
}
