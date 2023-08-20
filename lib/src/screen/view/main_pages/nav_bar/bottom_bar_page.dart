import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/view/location/controller/location_controller.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/controller/nav_controller.dart';
import 'package:smart_shop/src/screen/view/notification/notification.dart';
import 'package:smart_shop/src/screen/widgets/app_bar.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/bottom_sheet.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class NavBarScreen extends StatelessWidget {


  final String? currentLocationAddress;

  NavBarScreen({this.currentLocationAddress});

  final _navController =Get.put(NavBarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: NavBarController.riKey1,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: BrandColors.backgroundColor,
        // leading: Builder(
        //   builder: (context) => IconButton(
        //     icon: Icon(Icons.notes_rounded,color: Colors.grey,),
        //     onPressed: () => Scaffold.of(context).openDrawer(),
        //   ),
        // ),
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            KText(text: "Address:",color: BrandColors.lightgreyColor,),
            GestureDetector(

              onTap: (){
                Get.bottomSheet(
                    BottomSheetWidget(),
                    isScrollControlled: true
                );

              },
              child: Row(
                children: [
                  Expanded(child: KText(text: currentLocationAddress == null ? "Set your current location": currentLocationAddress,fontSize: 12, color: BrandColors.colorButton,maxLines:1,overflow:TextOverflow.ellipsis)),
                  Icon(Icons.keyboard_arrow_down_outlined,color: BrandColors.colorDark,)
                ],
              ),
            )
          ],
        ),

        actions: [
          Center(
            child: Row(
              children: [
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Get.to(
                          CartPage()
                      );
                    },
                    child:  Stack(
                      children: [
                        Image.asset(AppIcons.cart,height: 30,width: 30,),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(child: KText(text: "0",fontSize: 8,color: BrandColors.colorWhite,)),
                          ),
                        )
                      ],
                    ),

                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Builder(
                  builder: (context) => InkWell(
                    onTap: () {
                      Get.to(
                          NotificationPage()
                      );
                    },
                    child:  Stack(
                      children: [
                        Image.asset(AppIcons.notification,height: 30,width: 30,),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                            height: 15,
                            width: 15,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(100)
                            ),
                            child: Center(child: KText(text: "0",fontSize: 8,color: BrandColors.colorWhite,)),
                          ),
                        )
                      ],
                    ),

                  ),
                ),

                SizedBox(width: 10,)
              ],
            ),
          )
        ],
      ),
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
          bottomBarItem(label:"WishList",icon:Icon(Icons.favorite)),
          bottomBarItem(label:"Offer", icon:Icon(Icons.local_offer)),
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
