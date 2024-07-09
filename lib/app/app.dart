import 'package:flutter/material.dart';
import 'package:uzum/app/route.dart';

class UzumBankApp extends StatelessWidget {
  const UzumBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteHelper.router,
      debugShowCheckedModeBanner: false,
      title: 'Uzum Bank',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // TODO uzum bold
        fontFamily: "UzumBold",
      ),
    );
  }
}
