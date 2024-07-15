import 'package:flutter/material.dart';

import '../../theme/light_colors.dart';

class ByRequisitesItem extends StatefulWidget {
  final String text;
  final String icons;

  const ByRequisitesItem({required this.text, required this.icons});

  @override
  State<ByRequisitesItem> createState() => _ByRequisitesItemState();
}

class _ByRequisitesItemState extends State<ByRequisitesItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16,right: 16,top: 8),
      height: 80,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color:LightColors.white2),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              child: Center(
                  child: Image.asset(
                widget.icons,
                width: 30,
                height: 30,
              color: LightColors.primary2,)),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Text(widget.text),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: const Icon(
                Icons.arrow_forward_ios_sharp,
                color: Colors.deepPurple,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
