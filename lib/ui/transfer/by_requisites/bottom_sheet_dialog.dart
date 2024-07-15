import 'package:flutter/material.dart';

void bottomSheetDialog(
  BuildContext context,
) {
  showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 320,
          decoration: const BoxDecoration(),
          child: const Column(
            children: [
              Center(
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Icon(
                      Icons.person,
                      size: 90,
                      color: Colors.deepPurple,
                    )
                  ],
                ),
              ),
            ],
          ),
        );
      });
}
