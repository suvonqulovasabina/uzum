import 'package:flutter/material.dart';

class ExpDateField extends StatelessWidget {
  final TextEditingController expController;
  final String image;

  const ExpDateField({super.key, required this.expController, required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 184, left: 16),
      child: TextField(
        controller: expController,
        decoration: InputDecoration(
          hintText: "mm/yy",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: const Color(0xffe5e5e5),
        ),
      ),
    );
  }
}
