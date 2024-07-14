import 'package:flutter/material.dart';

class SelectSumma extends StatefulWidget {
  const SelectSumma({super.key});

  @override
  State<SelectSumma> createState() => _SelectSummaState();
}

class _SelectSummaState extends State<SelectSumma> {
  var summa = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.only(left: 16,right: 16,top: 16),
      child: TextField(
        controller: summa,
        decoration: InputDecoration(
          hintText: "so'm",
          fillColor: Colors.grey[200], // Set the background color of the text field
          filled: true, // Enable the background color
          border: OutlineInputBorder( // Add a border to the text field
            borderRadius: BorderRadius.circular(8.0), // Set the border radius
            borderSide: BorderSide.none, // Remove the default border
          ),
        ),
      ),
    );
  }
}
