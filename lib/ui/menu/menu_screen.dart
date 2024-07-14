import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:uzum/ui/theme/components.dart';
import 'package:uzum/ui/theme/light_colors.dart';

import '../../utils/constants/assets.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: LightColors.white3,
        statusBarIconBrightness: Brightness.dark
    ));
    return SafeArea(
      child: Scaffold(
        backgroundColor: LightColors.white3,
        appBar: titleSection(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 15,),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0),
                child: MediumTextPaynet(
                  text: 'Mashhur',
                  color: Colors.grey,
                  fontSize: 14,
                  height: 1,
                ),
              ),
              const SizedBox(height: 15,),
              famousItemList(),
              famousServiceItem(
                Assets.building,
                "Bank xizmatlari",
                'Tasdiqlashni talab etadi'
              ),

              const SizedBox(height: 20,),


              serviceItemList()
            ],
          ),
        ),
      )
    );
  }

  Widget serviceItemList() {
    return Container(
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Column(
        children: [
          serviceItem(Assets.uzASBO, "UzASBO"),
          serviceItem(Assets.flash, "Kashbek"),
          serviceItem(Assets.home, "Mening uyim"),
          serviceItem(Assets.calendar, "Auto to'lo'v kalendari"),
          serviceItem(Assets.humo_pay, "HUMO Pay"),
          serviceItem(Assets.card, "Kartalar"),
          serviceItem(Assets.plus_outlined, "Buyurtma berish"),
          serviceItem(Assets.monitoring, "Tarix"),
          serviceItem(Assets.exchange, "Valyuta kursi"),
          serviceItem(Assets.doc, "Arizalar"),
        ],
      ),
    );
  }

  Widget serviceItem(
      String imgPath,
      String title
  ) {
    return Container(
      height: 56,
      width: MediaQuery.of(context).size.width,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(width: 15,),
          serviceImageItem(imgPath),
          const SizedBox(width: 15,),
          MediumTextPaynet(text: title, fontSize: 18,),
          const Spacer(),
          Image.asset(
            Assets.arrow_right,
            width: 24,
            height: 24,
            color: Colors.grey,
          ),
          const SizedBox(width: 15,),
        ],
      ),
    );
  }
  
  Widget serviceImageItem(
    String img
  ) {
    return Container(
      height: 32,
      width: 32,
      padding: const EdgeInsets.all(7),
      decoration: BoxDecoration(
        color: LightColors.white3,
        borderRadius: BorderRadius.circular(12)
      ),
      child: Image.asset(
        img,
        color: Colors.black,
      ),
    );
  }

  Widget famousServiceItem(
      String imgPath,
      String title,
      String description
  ) {
    return Container(
      height: 72,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          famousItemIcon(imgPath, 38),
          const SizedBox(width: 15,),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MediumTextPaynet(
                text: title,
                color: Colors.black,
                fontSize: 14,
              ),

              const SizedBox(height: 18,),

              MediumTextPaynet(
                text: description,
                color: Colors.grey,
                fontSize: 12,
              ),
            ],
          ),

          const Spacer(),

          Image.asset(
            Assets.arrow_right,
            width: 24,
            height: 24,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget famousItemList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(width: 15,),
          famousItem(Assets.uzASBO, 'UzASBO'),
          const SizedBox(width: 15,),
          famousItem(Assets.flash, 'Keshkeb'),
        ],
      ),
    );
  }

  Widget famousItem(
    String imgPath,
    String title,
  ) {
    return Container(
      width: 140,
      height: 120,
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          famousItemIcon(imgPath, 42),
          const SizedBox(height: 32,),
          MediumText(text: title, fontSize: 14, height: 1,)
        ],
      ),
    );
  }

  Widget famousItemIcon(
      String imgPath,
      double size
  ) {
    return Container(
      width: size,
      height: size,
      padding: EdgeInsets.all(size / 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(size / 2.5),
        gradient: const LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Colors.deepPurple,
            LightColors.primary,
          ]
        )
      ),
      child: Image.asset(
        imgPath,
        color: Colors.white,
      ),
    );
  }

  AppBar titleSection() {
    return AppBar(
      backgroundColor: Colors.transparent,
      scrolledUnderElevation: 0.0,
      automaticallyImplyLeading: false,
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          BoldTextPaynet(
            text: 'Barcha xizmatlar',
            fontSize: 18,
            color: Colors.black,
            height: 1,
          )
        ],
      ),
    );
  }
}
