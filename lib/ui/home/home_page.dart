import 'package:flutter/material.dart';
import 'package:uzum/cons/app_icons.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/utils/string_extension.dart';

import '../../cons/cons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LightColors.primary,
      appBar: appHome(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.settings,
                    size: IconsSize.IconSearchSize.toDouble(),
                    color: IconsColors.IconsColorDefultgray,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "256938".toValue(),
                      style: TextStylesAll.textStyle26,
                    ),
                  ),
                  Icon(
                    Icons.visibility_off,
                    size: IconsSize.IconSearchSize.toDouble(),
                    color: IconsColors.IconsColorDefultgray,
                  ),
                ],
              ),
            ),
            SizedBox(height: 25,),
            getCardInfoItem(),
            SizedBox(height: 25,),
        
            Container(
              height: 600,
              width: double.infinity,
              
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) )
              ),
              child: Column(
                children: [

                  Row(
                    children: [
                      Column(
                        children: [
                          
                        ],
                      )
                    ],
                  ),
        
                  Expanded(child: Container())
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

AppBar appHome() {
  return AppBar(
    backgroundColor: LightColors.primary,
    title: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white10),
      height: 40,
      width: double.infinity,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Icon(
              Icons.search_outlined,
              size: IconsSize.IconSearchSize.toDouble(),
              color: IconsColors.IconsColorDefult,
            ),
          ),
          Expanded(
              child: Text(
            "Search",
            style: TextStylesAll.textStyle15 as TextStyle,
          ))
        ],
      ),
    ),
    actions: [
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50), color: Colors.white10),
        child: Icon(
          Icons.account_circle_outlined,
          size: IconsSize.IconSearchSize.toDouble(),
          color: Colors.white,
        ),
      )
    ],
  );
}

Widget getCardInfoItem(){
  return           Container(
    height: 120,
    width: 180,
    decoration: BoxDecoration(
      color: LightColors.primary2,
      borderRadius: BorderRadius.circular(14),
    ),
    child: Column(
      children: [
        Text(
          "256998".toValue(),
          style: TextStylesAll.textStyle15,
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Text("4525",style: TextStylesAll.textStyle15,),
              Spacer(),
              Container(
                  height: 24,
                  width: 24,
                  child: Image.asset(
                    AppIcons.Uzcard_50x50,
                    fit: BoxFit.cover,
                  ))
            ],
          ),
        )
      ],
    ),
  );

}