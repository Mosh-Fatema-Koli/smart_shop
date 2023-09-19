import 'package:shared_preferences/shared_preferences.dart';

class PrefsHelper {
  static Future<String> getString(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(key)??"";
  }

  static Future<bool> getBool(String key) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    return preferences.getBool(key) ?? false;
  }

  static Future setString(String key, value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setString(key, value);
  }

  static Future setBool(String key, bool value) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    await preferences.setBool(key, value);
  }
}




class AppConstant{


// share key static
  static  String token="Token";
  static String isFirstTime  ='FastTime';



}

