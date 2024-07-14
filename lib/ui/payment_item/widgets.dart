

import 'package:flutter/material.dart';
import 'package:uzum/ui/payment_item/payment_item_data.dart';


Widget getPaymentItem(PaymentItemData data) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
    color: Colors.white,
    child: Row(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white),
          child: Image.asset(
            data.img,
            height: 22,
            width: 22,

          ),
        ),
        Text(
          data.name,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
        const Spacer(),

        data.discount.toString().isNotEmpty ? Text(
          '${data.discount.toString()}%',
          textAlign: TextAlign.end,

          style: const TextStyle(color: Color(0xFF399A5DFF),fontWeight: FontWeight.bold),
        ):SizedBox(),
        SizedBox(width: 6,),
        Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        )
      ],
    ),
  );
}