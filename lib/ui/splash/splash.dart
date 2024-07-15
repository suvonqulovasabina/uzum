import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uzum/app/route.dart';

import '../../utils/constants/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), _navigateToNextScreen);
  }

  void _navigateToNextScreen() {
    if (mounted) {
      context.pushReplacementNamed(RouteHelper.register);
    }
  }
  @override
  Widget build(BuildContext context) {
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
