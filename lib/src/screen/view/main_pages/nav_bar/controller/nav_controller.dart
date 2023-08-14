import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/home.dart';


class NavBarController extends GetxController{

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  var isSelectIndex=0.obs;

  changePosition(int index){
    isSelectIndex.value=index;
  }

  List<Widget> page=[

    HomePage(),
    Container(color: Colors.black,),
    Container(color: Colors.blue,),
    Container(color: Colors.grey,)

  ];



}
