
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title: Center(child: KText(text: "Details product",)),
       actions: [
         Stack(
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
         SizedBox(
           width: 10,
         ),
       ],
     ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: ListView(

              children: [
                Image.network("https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",height: 200, width: Get.width, fit: BoxFit.fitWidth,),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [

                              KText(text: "Air pods max by Apple",fontWeight: FontWeight.bold,),
                              Row(
                                children: [
                                  KText(text: "\$ 1999,99 "),
                                  KText(text: " ( 219 people buy this )",color: BrandColors.greyColor,),
                                ],
                              ),


                            ],
                          ),
                          Image.asset(AppIcons.love, height: 30,width: 30,),


                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      KText(text: "Choose the color",fontSize: 16,color: BrandColors.greyColor,),

                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: BrandColors.greyColor,width: 1,style: BorderStyle.solid),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                          child: KText( text: 'Black',),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      KText(text: "Description of product",fontSize: 16,fontWeight: FontWeight.bold,),
                      SizedBox(
                        height: 10,
                      ),
                      KText(text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet arcu id tincidunt "
                          "tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. Nulla bibendum "
                          "purus tempor semper purus. Ut curabitur platea sed blandit. Amet non at proin justo nulla et. "
                          "A, blandit morbi suspendisseLorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquet "
                          "arcu id tincidunt tellus arcu rhoncus, turpis nisl sed. Neque viverra ipsum orci, morbi semper. "
                          )
                    ],
                  ),
                )

              ],

            ),
          ),
          Column(
            children: [
              Divider(),
              Container(

                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    children: [
                      Expanded(child: GlobalButtons.buttonWidget(text: "Add to Cart")),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(child: GlobalButtons.buttonWidget(text: "Buy Now")),


                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          )
        ],
      ),
    );
  }
}
