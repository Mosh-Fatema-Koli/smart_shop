
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "Notifications",),
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(CartPage());
            },
            child: Stack(
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
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [



          ],
        ),
      ),

    );
  }
}
