import 'package:flutter/material.dart';

import '../../theme/light_colors.dart';
import 'by_requisites_item.dart';

class ByRequisites extends StatefulWidget {
  const ByRequisites({super.key});

  @override
  State<ByRequisites> createState() => _ByRequisitesState();
}

class _ByRequisitesState extends State<ByRequisites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
      ),
      body: Column(
        children: [
          const ByRequisitesItem(
            icons: "assets/images/leetor.png",
            text: "Transfer requisites",
          ),
          const SizedBox(
            height: 4,
          ),
          const ByRequisitesItem(
            icons: "assets/images/star.png",
            text: "Add to favorite",
          ),
          const SizedBox(
            height: 8,
          ),
          Container(
            height: 2,
            color: LightColors.white2,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  "Favoritest",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
