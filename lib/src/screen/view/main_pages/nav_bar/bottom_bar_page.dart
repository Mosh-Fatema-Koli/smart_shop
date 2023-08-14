import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/controller/nav_controller.dart';
import 'package:smart_shop/src/screen/widgets/app_bar.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';

class NavBarScreen extends StatelessWidget {
   NavBarScreen({super.key});
  final _navController =Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _navController.scaffoldKey,

      appBar: setAppBar(),
      body:Obx(() => _navController.page[_navController.isSelectIndex.value]),
      bottomNavigationBar:Obx(()=>
         BottomNavigationBar(
            currentIndex: _navController.isSelectIndex.value,
            showSelectedLabels: true,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            selectedItemColor: BrandColors.navitemSelectColor,
            unselectedItemColor: BrandColors.navItemUnSelectColor ,


           // backgroundColor: Get.find<ThemeController>().isDarkTheme.value?const Color(0xFF29363D): AppColors.bgColor,
            onTap:(index){
              _navController.changePosition(index);
            },
            items:[
          bottomBarItem(label:"Home", icon:Icon(Icons.home_rounded)),
          bottomBarItem(label:"WishList",icon:Icon(Icons.favorite_border_rounded)),
          bottomBarItem(label:"History", icon:Icon(Icons.sticky_note_2_sharp)),
          bottomBarItem(label:"Account",icon:Icon(Icons.person)),


        ]),
      ),
    );
  }

   bottomBarItem({required String label, icon,}) {
    return
      BottomNavigationBarItem(
        icon: icon,
        label: label,

      );
  }
}
