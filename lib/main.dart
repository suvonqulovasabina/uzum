import 'package:flutter/cupertino.dart';
import 'package:uzum/di/di.dart';

import 'app/app.dart';
import 'data/source/local/hive/hive_preference.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await HivePreference.init();
  setUp();
  runApp(const UzumBankApp());
  // runApp(const CardItem());
}
