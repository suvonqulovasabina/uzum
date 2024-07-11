
import 'package:flutter/cupertino.dart';

class ItemImage extends StatelessWidget {
  final String text;
  final String image;
  const ItemImage({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

      Expanded(flex: 1,child: Column(
        children: [
         Image.asset(image,width: 30,height: 30,),
          Container()


        ],
      ),),
       Expanded(child:  Text(text,style: TextStyle(
        fontSize: 14
      ),),flex: 3,)




    ],);
  }
}
