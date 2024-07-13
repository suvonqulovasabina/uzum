import 'package:flutter/material.dart';

import '../../../theme/light_colors.dart';

class TransferButton extends StatefulWidget {
  final VoidCallback click;

  const TransferButton({super.key, required this.click});

  @override
  State<TransferButton> createState() => _AddButtonState();
}

class _AddButtonState extends State<TransferButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        widget.click();
      },
      child: Container(
        height: 46,
        margin: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: LightColors.primary,
            borderRadius: BorderRadius.circular(16)),
        child: const Center(
          child: Text("O'tkazish",style: TextStyle(
            color: LightColors.white2
          ),),
        ),
      ),
    );
  }
}
