
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/transfer/card_selection/card_selection_screen.dart';

import '../../../theme/components.dart';
import 'aad_button.dart';
import 'my_contener.dart';

class CardTransferScreen extends StatelessWidget {
  const CardTransferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Row(
          children: [

            Text("Kartaga o'tkazma",style: TextStyle(
              fontSize :18
            ),)

          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(flex: 4,child: Column(children: [
            Container(
              margin:  EdgeInsets.all(16),
              child: CustomTextField(onTapSuffix: (){},),
            ),
            MyContener(select: (){},),
          ],),),
            Expanded(flex: 1,child: Column(
             mainAxisAlignment: MainAxisAlignment.end,
             children: [
               Align(
                 alignment: Alignment.bottomLeft,
                 child: TransferButton(click: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>
                       const CardSelectionScreen()));
                 },),)
             ],
           ),)
        ],
      ),
    );
  }
}