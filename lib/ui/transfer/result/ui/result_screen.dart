import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/ui/transfer/result/ui/my_text.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: LightColors.primary,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: 48.0),
            Row(
              children: [
                MyText(text: "Tayyor"),
              ],
            ),
           // SizedBox(height: 16.0),
            Row(
              children: [
                MyText(text: "O'tkazildi"),
              ],
            ),

            Row(
              children: [
                MyText(text: "12 000 so'm"),
              ],
            ),
        //    SizedBox(height: 16.0),
            Row(
              children: [
                MyText(text: "Sabrina"),
              ],
            ),
           // SizedBox(height: 16.0),
            Row(
              children: [
                MyText(text: "Saloqova 5789"),
              ],
            ),

            
          ],
        ),
      ),
    );
  }
}