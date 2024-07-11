import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppBarItem extends StatefulWidget {
  const AppBarItem({super.key});

  @override
  State<AppBarItem> createState() => _AppBarItemState();
}

class _AppBarItemState extends State<AppBarItem> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Icon(Icons.arrow_back_rounded),
          Text("Yangi karta"),
          TextField()
        ],
      ),
    );
  }
}

