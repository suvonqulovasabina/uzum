import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddCardTextFild extends StatefulWidget {
  final String text;
  final String image;
  const AddCardTextFild({super.key, required this.text, required this.image});

  @override
  State<AddCardTextFild> createState() => _AddCardTextFildState();
}

class _AddCardTextFildState extends State<AddCardTextFild> {
  final number = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(

      margin: EdgeInsets.only(right: 184,left: 16),
      child: TextField(
        controller: number,

        decoration: InputDecoration(

            hintText: "yy/xx",
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
