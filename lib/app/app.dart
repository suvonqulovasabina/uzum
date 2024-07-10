import 'package:flutter/material.dart';
import 'package:uzum/ui/home/add_cart_sms_otp/add_cart_sms_otp.dart';
import 'package:uzum/ui/home/home_page.dart';
import 'package:uzum/ui/register/register.dart';

class UzumBankApp extends StatelessWidget {
  const UzumBankApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Uzum Bank',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  AddCartSmsOtp(),
    );
  }
}
