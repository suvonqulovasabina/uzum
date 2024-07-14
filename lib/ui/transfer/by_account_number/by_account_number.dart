import 'package:flutter/material.dart';

import 'account_container.dart';
import 'account_container2.dart';
import 'next_button.dart';

class ByAccountNumber extends StatefulWidget {
  const ByAccountNumber({super.key});

  @override
  State<ByAccountNumber> createState() => _ByAccountNumberState();
}

class _ByAccountNumberState extends State<ByAccountNumber> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Expanded(
              child: Text("Transfer"),
              flex: 1,
            ),
            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.info_outline),
                ],
              ),
            ),
          ],
        ),
      ),
      body: const Column(
        children: [
          AccountContainer(),
          AccountContainer2(),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Text(
                  "otkazish",
                  style: TextStyle(color:
                  Colors.black,
                      fontSize: 16),
                ),
              ],
            ),
          ),
          NextButton()
        ],
      ),
    );
  }
}
