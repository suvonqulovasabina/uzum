import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/app/route.dart';

import '../../utils/constants/image_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2), () {
      context.pushReplacementNamed(RouteHelper.register);
    });

    return SafeArea(
      child: Center(
        child: Image.asset(Assets.uzumIcon, height: 56, width: 56),
      ),
    );
  }
}
