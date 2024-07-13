import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:uzum/ui/theme/light_colors.dart';
import 'package:uzum/ui/theme/my_images.dart';
import 'package:uzum/ui/transfer/transfer_components.dart';

import '../theme/components.dart';
import 'card_transfer/ui/card_transfer_screen.dart';

class TransferScreen extends StatefulWidget {
  const TransferScreen({super.key});

  @override
  State<TransferScreen> createState() => _TransferScreenState();
}

class _TransferScreenState extends State<TransferScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // Status bar color
        statusBarIconBrightness: Brightness.dark
    ));
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 68,),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: transferTitle(),
            ),

            const SizedBox(height: 50,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: CustomTextField(
                onTapSuffix: () {
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context)=>const
                  CardTransferScreen()));
                },
              ),
            ),

            const SizedBox(height: 15,),

            transferItemList(),
            const SizedBox(height: 28,),
            transferCategoryItem(
              Icons.account_balance_wallet_outlined,
              "Hisob raqami bo'yicha",
              "O'zbekiston bo'ylab",
              () {

              }
            ),
            transferCategoryItem(
                Icons.account_balance_outlined,
                "Hisob raqami bo'yicha",
                "O'tkazma yoki to'lov",
                    () {

                }
            ),
            transferCategoryItem(
                Icons.currency_exchange,
                "Valyuta ayriboshlash",
                "Sotib olish va sotish",
                    () {

                }
            ),
            transferCategoryItem(
                CupertinoIcons.arrow_down_left,
                "Rossiyadan",
                "Tez va komissiyasiz",
                    () {

                }
            ),
            transferCategoryItem(
                CupertinoIcons.arrow_up_right,
                "Rossiyaga",
                "Identifikatsiyadan o'ting",
                    () {

                }
            ),
          ],
        ),
      ),
    );
  }

  Widget transferCategoryItem(
      IconData icon,
      String sectionName,
      String sectionDescription,
      VoidCallback onTap,
  ) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(width: 15,),
            Icon(
              icon,
              color: Colors.black,
              size: 26,
            ),

            const SizedBox(width: 15,),

            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                MediumText(
                  text: sectionName,
                  fontSize: 16,
                  height: 1,
                ),

                MediumText(
                  text: sectionDescription,
                  fontSize: 14,
                  color: Colors.grey,
                  height: 1,
                ),
              ],
            ),

            const Spacer(),

            Icon(
              Icons.keyboard_arrow_right,
              color: Colors.grey.withOpacity(.6),
              size: 24,
            ),

            const SizedBox(width: 15,)
          ],
        ),
      ),
    );
  }

  Widget transferItemList() {
    return Row(
      children: [
        const SizedBox(width: 15,),
        Flexible(
          child: SizedBox(
            height: 105,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (context, index) {
                return transferItem();
              }
            ),
          )
        ),
      ],
    );
  }



  Widget transferItem() {
    return Container(
      width: 100,
      margin: const EdgeInsets.only(right: 12),
      padding: const EdgeInsets.only(top: 8, left: 6, bottom: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.withOpacity(.2), width: 1)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                MyImages.uzcardCardSvg,
                width: 20,
                height: 20,
              ),

              popupMenu()
            ],
          ),

          const Spacer(),

          MediumText(
            text: 'Gaybullayev Abdulvohid',
            height: 1,
            maxLines: 2,
            fontSize: 12,
          ),

          const SizedBox(height: 4,),

          MediumText(
            text: '2536',
            height: 1,
            color: Colors.grey,
            maxLines: 2,
            fontSize: 12,
          ),
        ],
      ),
    );
  }

  Widget popupMenu() {
    return PopupMenuButton(
      color: Colors.white,
      initialValue: "",
      onSelected: (item) {
        setState(() {

        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
         const PopupMenuItem(
          value: "SampleItem.itemOne",
          height: 36,
          child: Row(
            children: [
              Icon(
                CupertinoIcons.delete_simple,
                size: 24,
                color: Colors.red,
              ),

              SizedBox(width: 12,),

              MediumText(
                text: 'Ro\'yxatdan olib tashlash',
                height: 1,
                maxLines: 2,
                fontSize: 16,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ],
      child: Container(
        height: 24,
        width: 24,
        alignment: Alignment.centerRight,
        child: const Icon(
          Icons.more_vert,
        ),
      ),
    );
  }
}