import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/main_pages/account/accounts.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/home.dart';
import 'package:smart_shop/src/screen/view/main_pages/offer/offer.dart';
import 'package:smart_shop/src/screen/view/main_pages/wish_list/wish_list.dart';
import 'package:smart_shop/src/screen/view/search/src_page.dart';


class NavBarController extends GetxController{

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var isSelectIndex=0.obs;

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
