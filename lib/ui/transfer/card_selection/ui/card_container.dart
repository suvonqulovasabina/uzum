import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uzum/ui/theme/light_colors.dart';

class CardContainer extends StatefulWidget {
  const CardContainer({super.key});

  @override
  State<CardContainer> createState() => _CardContainerState();
}

class _CardContainerState extends State<CardContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      margin:  const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: LightColors.white2,
        borderRadius: BorderRadius.circular(16)
      ),

   child:
   Row(
     children: [
       Expanded(flex: 1,child: Container(
         margin: const EdgeInsets.all(16),
         child:Column(
           children: [
             Spacer(),
             Center(

               child: Container(
                 height: 40,
                 width: 70,
                 decoration: BoxDecoration(
                     color:LightColors.black,
                     borderRadius: BorderRadius.circular(8)
                 ),
                 child: Center(
                   child: Image.asset("assets/images/uzcard_icon.png"),
                 ),
               ),
             )
             ,
             Spacer()
           ],
         ),

       ),),
       Expanded(flex: 1,child: Container(),),
       Expanded(flex: 1,child: Container(
         child: const Center(
           child: Icon(Icons.keyboard_arrow_down),

         ),
       ),),
     ],
   )

    );
  }
}
