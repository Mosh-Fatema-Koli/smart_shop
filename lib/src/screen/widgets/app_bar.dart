import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/view/notification/notification.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/bottom_sheet.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/hex_color.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';



setAppBar() {
  // ignore: unnecessary_new
  return new AppBar(
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
                KText(text: "Salatiga City, Central Java",color: BrandColors.primaryColor,),
                Icon(Icons.keyboard_arrow_down_outlined,color: BrandColors.primaryColor,)
              ],
            ),
          )
        ],
     ),

    actions: [
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
    elevation: 0,
  );
}