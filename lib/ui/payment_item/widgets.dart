

import 'package:flutter/material.dart';
import 'package:uzum/ui/payment_item/payment_item_data.dart';
import 'package:uzum/ui/theme/light_colors.dart';


Widget getPaymentItem(PaymentItemData data) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 5),
    color: Colors.white,
    child: Row(
      children: [
        Container(
          height: 40,
          width: 40,
          margin: const EdgeInsets.symmetric(horizontal: 5),
          padding: const EdgeInsets.all(1),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12), color: Colors.white,
            border: Border.all(color: LightColors.circular_grey,width: 0.7)

          ),

          child: Image.asset(
            data.img,


          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            data.name,
            style: const TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.bold),
          ),
        ),
        const Spacer(),

        data.discount != null ? Text(
          '${data.discount.toString()}%',
          textAlign: TextAlign.end,

          style: const TextStyle(color: Color(0xC54AE736),fontWeight: FontWeight.normal),
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