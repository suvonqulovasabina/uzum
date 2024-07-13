import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HivePreference {
  static const String boxName = 'token';

  static  init()  async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocumentDir.path);
    await Hive.openBox(boxName);
  }

  static  setSignUpToken(String token)  {
    var box = Hive.box(boxName);
     box.put('SuToken', token);
  }

  static String? getSignUpToken() {
    var box = Hive.box(boxName);
    return box.get('SuToken', defaultValue: 'token');
  }

  static  setLoginToken(String token)  {
    var box = Hive.box(boxName);
     box.put('tokenLogin', token);
  }

  static String? getLoginToken() {
    var box = Hive.box(boxName);
    return box.get('tokenLogin', defaultValue: 'token');
  }

  static  setPinCode(String pinCode)  {
    var box = Hive.box(boxName);
     box.put('code', pinCode);
  }

  static String? getPinCode() {
    var box = Hive.box(boxName);
    return box.get('code', defaultValue: '');
  }

  static  setAccess(String access)  {
    var box = Hive.box(boxName);
     box.put('Access', access);
  }

  static String? getAccess() {
    var box = Hive.box(boxName);
    return box.get('Access', defaultValue: '');
  }

  static  setRefresh(String refresh)  {
    var box = Hive.box(boxName);
     box.put('Refresh', refresh);
  }

  static String? getRefresh() {
    var box = Hive.box(boxName);
    return box.get('Refresh', defaultValue: '');
  }

  static  setTransfer(String transfer)  {
    var box = Hive.box(boxName);
     box.put('Transfer', transfer);
  }

  static String? getTransfer() {
    var box = Hive.box(boxName);
    return box.get('Transfer', defaultValue: '');
  }
}
