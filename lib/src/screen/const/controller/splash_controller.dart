import 'dart:ffi';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_shop/src/screen/const/helper/routes.dart';
import 'package:smart_shop/src/screen/const/helper/share_pref_helper.dart';

class SplashController extends GetxController{


 var isFirstTime = false.obs;


  jumpPage() async {

    SharedPreferences prefs = await SharedPreferences.getInstance();
    // Retrieve the boolean value from SharedPreferences
    bool? isFirstTime = prefs.getBool(AppConstant.isFirstTime);
    print(isFirstTime);

    Future.delayed(const Duration(seconds: 3),(){
         Get.offAllNamed(Routes.navBarScreen);

    });
  }



}