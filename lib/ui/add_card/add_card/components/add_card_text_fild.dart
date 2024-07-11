import 'package:flutter/material.dart';

class AddCardTextField extends StatelessWidget {
  const AddCardTextField({super.key, required this.onPressed, required this.controller});

  final VoidCallback onPressed;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: IconButton(onPressed: onPressed, icon: const Icon(Icons.document_scanner)),
            hintText: "Karta raqami",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide.none,
            ),
            filled: true,
            fillColor: const Color(0xffe5e5e5)),
      ),
    );
  }
}
