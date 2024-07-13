import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:uzum/app/route.dart';
import 'package:uzum/ui/register/register.dart';

import '../l10n/l10n.dart';

class UzumBankApp extends StatelessWidget {
  const UzumBankApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: RouteHelper.router,
      debugShowCheckedModeBanner: false,
      title: 'Uzum Bank',
      theme: ThemeData(
        colorScheme: ColorScheme.
        fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        // TODO uzum bold
        // fontFamily: "UzumBold",
      ),
      supportedLocales: L10n.all,
      locale: L10n.all[0],
      localizationsDelegates: const [

        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
