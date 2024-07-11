import 'package:flutter/material.dart';

class AppBarItem extends StatelessWidget {
  const AppBarItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Row(
        children: [Icon(Icons.arrow_back_rounded), Text("Yangi karta"), TextField()],
      ),
    );
  }
}
