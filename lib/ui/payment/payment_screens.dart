import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/cons/cons.dart';
import 'package:uzum/ui/payment/widget.dart';

import '../theme/light_colors.dart';


class PaymentScreens extends StatelessWidget {
  const PaymentScreens({super.key});

  @override
  Widget build(BuildContext context) {
    // final lan = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: LightColors.allBackWhite,
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)?.payment_screen_title ?? '',
        ),
        actions: [
          Padding(

            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search_outlined,size: IconsSize.IconSearchSize.toDouble(),color: Colors.black,),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
             getMehotsName(AppLocalizations.of(context)?.saved_payments ?? "",AppLocalizations.of(context)?.all ?? ""),
            SizedBox(

              height: 80,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (c,i){
                  return getAdd(Icons.phone_android, Colors.grey, "ADD");
                }, separatorBuilder: (_,__){
                  return SizedBox(width: 5);
                }, itemCount: 5)),
           getMehotsName(AppLocalizations.of(context)?.local_payments ?? "", AppLocalizations.of(context)?.all ?? ""),
            SizedBox(
              height: 100,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (c,i){
                String urls= "https://i.imgur.com/iwdd5Hm.png";

                return getLocalPayments(name: "Balgo shaxriston", url: urls);
              }, separatorBuilder: (_,__){
                return SizedBox(width: 10,);
              }, itemCount: 10),
            ),
             getMehotsIcon(AppLocalizations.of(context)?.my_home ?? "",Icons.arrow_forward_ios),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,

                      ),
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.all(10),
                        child: Icon(Icons.add_circle_outline,),),
                    Text(AppLocalizations.of(context)?.add ?? "",style: TextStyle(color: Colors.black,fontSize: 16),),


                  ],
                )
              ],
            ),
            getMehotsIcon(AppLocalizations.of(context)?.payment_by_category ?? "", Icons.grid_view_rounded,iconColor: LightColors.primary2,iconSize: 35),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey
                  ),
                  child: Icon(
                    Icons.phone_iphone,size: 18,
                  ) ,
                ),
                Text("Network",style: TextStyle(color: Colors.black,fontSize: 18),),
                Spacer(),
                Text("325",textAlign: TextAlign.end,style: TextStyle(color: Colors.grey),),
                Icon(Icons.arrow_forward_ios,size: IconsSize.IconSearchSize.toDouble(),color: Colors.grey,)


              ],
            )


          ],
        ),
      ),
    );
  }
}




