import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCardTextField extends StatefulWidget {

  const AddCardTextField({super.key});

  @override
  State<AddCardTextField> createState() => _AddCardTextFieldState();
}

class _AddCardTextFieldState extends State<AddCardTextField> {
  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      child: TextField(
        controller: number,

        decoration: InputDecoration(
      suffixIcon: Icon(Icons.document_scanner),
          hintText: "Karta raqami",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: BorderSide.none
      
            // borderSide:  BorderSide(
            //   color: Color(0xccf0f5f9),
            //   width: 1.0,
            // ),
          ),
          filled: true,
          fillColor: const Color(0xffe5e5e5)
        ),
      ),
    );
  }
}