

import 'package:flutter/material.dart';
import 'package:uzum/cons/cons.dart';
import 'package:uzum/ui/payment_item/payment_item_data.dart';
import 'package:uzum/ui/payment_item/widgets.dart';

class PaymentItemScreens extends StatelessWidget {
  final String title;
   const PaymentItemScreens({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title,style: TextStylesAll.textStyle26,),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.black,size: 24,))
        ],
      ),
      body: SingleChildScrollView(

        child: Column(children: [

          ListView.builder(
            shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: paymentProvides.length,
              itemBuilder: (_,i){

            return getPaymentItem(paymentProvides[i]);
          })

        ],),
      ),
    );
  }
}
