import 'package:flutter/material.dart';
import 'package:uzum/app/route.dart';

class UzumBankApp extends StatelessWidget {
  const UzumBankApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteHelper.router,
      debugShowCheckedModeBanner: false,
      title: 'Uzum Bank',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
