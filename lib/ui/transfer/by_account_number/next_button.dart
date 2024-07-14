import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  const NextButton({super.key});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xffe5e5e5)

      ),
      child: const Center(
        child: Text("Keyingisi"),
      ),
    );

  }
}
