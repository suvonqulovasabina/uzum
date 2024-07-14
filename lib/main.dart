import 'package:flutter/cupertino.dart';
import 'package:uzum/di/di.dart';

import 'app/app.dart';
import 'data/source/local/hive/hive_preference.dart';


///https://www.youtube.com/watch?v=KjE2IDphA_U&list=PLB6lc7nQ1n4iYGE_khpXRdJkJEp9WOech
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HivePreference.init();
  setUp();
  runApp(const UzumBankApp());
  // runApp(const CardItem());
}
