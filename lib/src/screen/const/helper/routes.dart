

import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/1st_page/splash.dart';
import 'package:smart_shop/src/screen/view/auth/login.dart';
import 'package:smart_shop/src/screen/view/auth/registration.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/bottom_bar_page.dart';
import 'package:smart_shop/src/screen/view/profile/profile_edit.dart';

class Routes{

  static String splashScreen="/splash_screen";
  static String signUpScreen="/sign_up_screen";
  static String signInScreen="/sign_in_screen";
  static String navBarScreen="/nav_bar_screen";
  static String editProfileScreen="/profile_edit";



}

List<GetPage> pages=[
  GetPage(name: Routes.splashScreen, page:()=>  SplashPage(),transition: Transition.fade),
  GetPage(name: Routes.signUpScreen, page: ()=> RegistrationPage(),transition: Transition.fade),
  GetPage(name: Routes.signInScreen, page: ()=> LoginPage() ,transition: Transition.fade),
  GetPage(name: Routes.navBarScreen, page: ()=> NavBarScreen(),transition: Transition.fade),
  GetPage(name: Routes.editProfileScreen, page: ()=> ProfileEditPage(),transition: Transition.fade),

];