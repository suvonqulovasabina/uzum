import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/cons/app_icons.dart';
import 'package:uzum/ui/main/dataa.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/utils/string_extension.dart';

import '../../cons/cons.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF8528FA),
              Color(0xFFBB86FC),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              getSearchBox(),
              const SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
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
              const SizedBox(height: 25),
              getCardInfoItem(),
              const SizedBox(height: 25),
              Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 900,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color(0xFFF5F6F8),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), color: Colors.white),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                        text: const TextSpan(text: "Cashback uo to", style: TextStyle(color: Colors.black), children: [
                                      TextSpan(
                                        text: " 20%",
                                        style: TextStyle(
                                          color: Colors.green,
                                        ),
                                      )
                                    ])),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    RichText(
                                        text: TextSpan(
                                            text: 1.toString(),
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                            ),
                                            children: [TextSpan(text: "UZS")])),
                                    Text(
                                      "Earned",
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Fast access",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          getMyFast(),
                          const SizedBox(
                            height: 15,
                          ),
                          getSlider(),
                          SizedBox(height: 15),
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Local payments",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Text(
                                "Enable",
                                style: TextStyle(
                                  color: LightColors.primary,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: 100,
                            child: ListView.separated(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (c, i) {
                                return getLocalPayments(
                                  name: "Biznes\nFabrika",
                                  url: biznesFabrika,
                                  sale: "5%",
                                );
                              },
                              separatorBuilder: (_, __) {
                                return SizedBox(width: 15);
                              },
                              itemCount: 10,
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          getPhonePayment(),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Saved payments",
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios_sharp,
                                size: 20,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          getFast(Icons.add_circle_outline, Colors.grey, "add"),
                          Expanded(child: Container()),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -13,
                    child: getRefresh(context),
                  )
                ],
              )
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        label: Text(
          "uzumpay",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        icon: Icon(
          Icons.qr_code_scanner_outlined,
          size: 24,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF8447D2),
        onPressed: () {
          // Add your Uzumpay functionality here
        },
      ),
    );
  }
}

Widget getRefresh(BuildContext context) {
  return GestureDetector(
    onTap: () {
      context.goNamed('addCard');
    },
    child: Container(
      height: 50,
      width: 50,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: LightColors.primary,
          ),
          child: Icon(
            Icons.refresh,
            color: Colors.white,
            size: 18,
          )),
    ),
  );
}

Widget getPhonePayment() {
  return Container(
    height: 95,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: Colors.white,
    ),
    child: Padding(
      padding: const EdgeInsets.only(
        top: 10,
        left: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Mobile Number",
            style: TextStyle(color: Colors.black54, fontSize: 16),
          ),
          Row(
            children: [
              Text(
                "+998",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
              Container(
                height: 60,
                width: 280,
                child: TextField(
                  keyboardType: TextInputType.visiblePassword,
                  // controller: _phoneController,

                  decoration: InputDecoration(
                    hintText: "(00) 000 - 00 - 00",
                    hintStyle: TextStyle(color: Color(0xFF9DA3A7)),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(Cons.textBorderRadius), borderSide: BorderSide.none),
                    suffixIcon: IconButton(
                      onPressed: () {
                        ;
                      },
                      icon: Icon(
                        Icons.account_circle_sharp,
                        size: IconsSize.IconSearchSize.toDouble(),
                        color: Color(0xFF9DA3A7),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    ),
  );
}

getSearchBox() {
  return Padding(
    padding: const EdgeInsets.all(5.0),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.white10,
            ),
            height: 40,
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
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 5),
        Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.white10,
          ),
          child: Icon(
            Icons.account_circle_outlined,
            size: IconsSize.IconSearchSize.toDouble(),
            color: Colors.white,
          ),
        ),
      ],
    ),
  );
}

Widget getLocalPayments({required String name, required String url, String? sale}) {
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

Widget getCardInfoItem() {
  return Container(
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
              Text(
                "4525",
                style: TextStylesAll.textStyle15,
              ),
              Spacer(),
              Container(
                height: 24,
                width: 24,
                child: Image.asset(
                  AppIcons.Uzcard_50x50,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget getFast(IconData icon, Color color, String text) {
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

Widget getSlider() {
  return CarouselSlider(
    items: getListBanner().map((i) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: Image.network(i),
      );
    }).toList(),
    options: CarouselOptions(height: 140.0),
  );
}

Widget getMyFast() {
  return SizedBox(
    height: 100,
    child: ListView.separated(
      scrollDirection: Axis.horizontal,
      itemBuilder: (c, i) {
        var data = getFastList()[i];
        return getFast(
          data.icon,
          data.color ?? Colors.black,
          data.text,
        );
      },
      separatorBuilder: (c, i) {
        return SizedBox(width: 10);
      },
      itemCount: getFastList().length,
    ),
  );
}

final String biznesFabrika = "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-q0hkRR_zoT_xmNvodO59uw2lfu7bHgA5AQ&s";
