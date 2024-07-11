import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:uzum/cons/cons.dart';

import '../theme/light_colors.dart';


class PaymentScreens extends StatelessWidget {
  const PaymentScreens({super.key});

  @override
  Widget build(BuildContext context) {
    var lan = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.payment_screen_title,
        ),
        actions: [
          Icon(Icons.search_outlined,size: IconsSize.IconSearchSize.toDouble(),color: IconsColors.IconsColorDefult,)
        ],
      ),
      body: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                lan.saved_payments,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              Text(
                lan.all,
                style: TextStyle(
                  color: LightColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
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
                lan.all,
                style: TextStyle(
                  color: LightColors.primary,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
