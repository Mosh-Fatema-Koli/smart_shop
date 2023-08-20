
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "Order History",),
        actions: [
          Center(
            child: GestureDetector(
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
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) =>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Card(
            shadowColor: BrandColors.colorButton,
            elevation: 5,
            child: Container(

              width: Get.width,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal:10,vertical: 0),
                    title: KText(text: "Order Id : 145688855",fontSize: 14,),

                    subtitle: KText(text: "Placed on 08 Aug 2023",fontSize: 12,color: BrandColors.navitemSelectColor,),
                    trailing: KText(text: "Paid",),

                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                    child: Row(
                      children: [
                        Expanded(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy38XI-A70Sxrro3aYq24lQJTQG9b8xTnwtw&usqp=CAU",height: 100,width:Get.width,fit: BoxFit.fitWidth,)),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          KText(text: "Computer",fontSize: 16),

                          Row(
                            children: [
                              KText(text: "Tk 500000 *",fontSize: 12,),
                              KText(text: " 1",fontSize: 12,),

                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          SizedBox(
                            width: 80,

                            child: CartButtons.cartbuttonWidget(
                              press: (){
                                Get.snackbar(
                                  "Item Added",
                                  "Women Printed Kurta added to cart.",
                                  backgroundColor: BrandColors.colorButton,
                                  colorText: BrandColors.colorTextDark,
                                );
                              },
                              text: "Buy Now",
                              textColor: BrandColors.colorWhite,
                              color: BrandColors.colorButton,

                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),

                        ],
                      ))
                      ],
                    ),
                  ),


                ],
              ),
            ),
          ),
        ) ,),
    );
  }
}
