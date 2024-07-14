import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/cons/cons.dart';
import 'package:uzum/ui/payment/payment_dats.dart';
import 'package:uzum/ui/payment/widget.dart';

import '../theme/light_colors.dart';

class PaymentScreens extends StatelessWidget {
  const PaymentScreens({super.key});

  @override
  Widget build(BuildContext context) {
    // final lan = AppLocalizations.of(context);

    return Scaffold(

      floatingActionButton: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: FloatingActionButton(onPressed: (){},
          backgroundColor: LightColors.primary,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.qr_code,color: Colors.white,),
              Text("QR Skan",style: TextStyle(color: Colors.white,fontSize: 12),)
            ],
          ),
        ),
      ),
      backgroundColor: LightColors.allBackWhite,
      appBar: AppBar(
        forceMaterialTransparency: true,

        title: Text(
          AppLocalizations.of(context)?.payment_screen_title ?? '',
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_outlined,
              size: IconsSize.IconSearchSize.toDouble(),
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            getMehotsName(AppLocalizations.of(context)?.saved_payments ?? "",
                AppLocalizations.of(context)?.all ?? ""),
            SizedBox(
                height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c, i) {
                      return getAdd(
                          Icons.add_circle_outline, Colors.grey, "Add");
                    },
                    separatorBuilder: (_, __) {
                      return const SizedBox(width: 5);
                    },
                    itemCount: 5)),
            getMehotsName(AppLocalizations.of(context)?.local_payments ?? "",
                AppLocalizations.of(context)?.all ?? ""),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c, i) {
                    String urls = "https://i.imgur.com/iwdd5Hm.png";

                    return getLocalPayments(
                        name: "Balgo shaxriston", url: urls);
                  },
                  separatorBuilder: (_, __) {
                    return const SizedBox(
                      width: 10,
                    );
                  },
                  itemCount: 10),
            ),
            getMehotsIcon(AppLocalizations.of(context)?.my_home ?? "",
                Icons.arrow_forward_ios),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      margin: const EdgeInsets.symmetric(horizontal: 10),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.add_circle_outline,
                      ),
                    ),
                    Text(
                      AppLocalizations.of(context)?.add ?? "",
                      style: const TextStyle(color: Colors.black, fontSize: 16),
                    ),
                  ],
                )
              ],
            ),
            getMehotsIcon(
                AppLocalizations.of(context)?.payment_by_category ?? "",
                Icons.grid_view_rounded,
                iconColor: LightColors.primary2,
                iconSize: 30),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (c, i) {

                    return getAllServise(datas[i],(s){
                      c.pushNamed(),
                    });
                  },
                  itemCount: datas.length),
            )
          ],
        ),
      ),
    );
  }
}

Widget getAllServise(PaymentData data, Function(String) click ) {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 12.0,vertical: 10),
    color: Colors.white,
    child: GestureDetector(
      onTap: (){
        click(data.name);
      },
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 5),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: LightColors.surfaceContainer),
            child: Icon(
              data.icon,
              size: 22,
            ),
          ),
          Text(
            data.name,
            style: const TextStyle(color: Colors.black, fontSize: 18),
          ),
          const Spacer(),
          Text(
            data.count.toString(),
            textAlign: TextAlign.end,

            style: const TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),
          ),
          SizedBox(width: 6,),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
            color: Colors.grey,
          )
        ],
      ),
    ),
  );
}
