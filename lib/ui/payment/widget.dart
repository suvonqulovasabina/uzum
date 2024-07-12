
import 'package:flutter/material.dart';

import '../theme/light_colors.dart';

Widget getAdd(IconData icon, Color color, String text) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: color,
          size: 30,
        ),
      ),
      SizedBox(height: 5),
      Text(
        text,
        style: TextStyle(fontSize: 12),
      ),
    ],
  );
}

Widget getLocalPayments(
    {required String name, required String url, String? sale}) {
  return Stack(
    children: [
      Container(
        height: 80,
        width: 280,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: Container(
                padding: EdgeInsets.all(10),
                width: 25,
                height: 25,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.network(
                    url,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                text: name,
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
      if (sale != null)
        Positioned(
          top: 15,
          right: 20,
          child: RotationTransition(
            turns: AlwaysStoppedAnimation(350 / 360),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xFFDDF5E4),
              ),
              child: Text(
                sale!,
                style: TextStyle(color: Color(0xFF4D955A)),
              ),
            ),
          ),
        ),
    ],
  );
}
getMehotsIcon(String my_home, IconData icon,{double? iconSize,Color? iconColor}) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          my_home,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        Icon(
          icon,
          size:  iconSize ?? 20,
          color: iconColor ?? Colors.grey,
        ),
      ],
    ),
  );
}

Widget getMehotsName(String saved_payments, String all) {
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          saved_payments,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        Text(
          all,
          style: TextStyle(
            color: LightColors.primary,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
      ],
    ),
  );
}