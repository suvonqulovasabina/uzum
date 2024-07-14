

import 'package:flutter/material.dart';
import 'package:uzum/cons/cons.dart';
import 'package:uzum/ui/payment_item/payment_item_data.dart';
import 'package:uzum/ui/payment_item/widgets.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class PaymentItemScreens extends StatelessWidget {
  final String title;
   const PaymentItemScreens({required this.title,super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.allBackWhite,

      appBar: AppBar(
        forceMaterialTransparency: true,
        title: Text(title,style: TextStylesAll.textStyle26Black,textAlign: TextAlign.start,),
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
