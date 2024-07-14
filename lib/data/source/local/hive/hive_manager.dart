import 'hive_preference.dart';

class HiveManager {
  static  setSignUpToken(String token) {
    return HivePreference.setSignUpToken(token);
  }

  static String? getSignUpToken() {
    return HivePreference.getSignUpToken();
  }

  static  setLoginToken(String token) {
    return HivePreference.setLoginToken(token);
  }

  static String? getLoginToken() {
    return HivePreference.getLoginToken();
  }

  static  setPinCode(String pinCode) {
    return HivePreference.setPinCode(pinCode);
  }

  static String? getPinCode() {
    return HivePreference.getPinCode();
  }

  static  setAccess(String access) {
    return HivePreference.setAccess(access);
  }

  static String? getAccess() {
    return HivePreference.getAccess();
  }

  static  setRefresh(String refresh) {
    return HivePreference.setRefresh(refresh);
  }

  static String? getRefresh() {
    return HivePreference.getRefresh();
  }

  static  setTransfer(String transfer) {
    return HivePreference.setTransfer(transfer);
  }

  static String? getTransfer() {
    return HivePreference.getTransfer();
  }
}
