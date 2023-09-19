import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/controller/auth_controller.dart';
import 'package:smart_shop/src/screen/view/main_pages/account/accounts.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/home.dart';
import 'package:smart_shop/src/screen/view/main_pages/offer/offer.dart';
import 'package:smart_shop/src/screen/view/main_pages/wish_list/wish_list.dart';
import 'package:smart_shop/src/screen/view/search/src_page.dart';


class NavBarController extends GetxController{

  final AuthController _authController =Get.put(AuthController());

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  static final riKey1 = const Key('__RIKEY1__');
  static final riKey2 = const Key('__RIKEY2__');
  static final riKey3 = const Key('__RIKEY3__');


  var isSelectIndex=0.obs;

  @override
  void onInit() {

    _authController.getToken();

    super.onInit();
  }


  changePosition(int index){
    isSelectIndex.value=index;
  }

  List<Widget> page=[

    HomePage(),
    WishListPage(),
    OfferPage(),
    AccountPage()

  ];



}
