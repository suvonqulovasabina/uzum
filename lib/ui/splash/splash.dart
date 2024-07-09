import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/app/route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../utils/constants/image_path.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      context.pushReplacement(RouteHelper.register);
    });

    // test degan text ni l10 ni ichidagi arb dan oldi
    print(AppLocalizations.of(context)!.test);

    return SafeArea(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Center(
          child: Image.asset(Assets.uzumLogo, height: 200, width: 200),
        ),
      ),
    );
  }
}
