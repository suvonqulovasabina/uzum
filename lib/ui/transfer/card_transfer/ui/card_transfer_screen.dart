
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardTransferScreen extends StatelessWidget {
  const CardTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.arrow_back),
            Text("Kartaga o'tkazma")
          ],
        ),
      ),
    );
  }
}