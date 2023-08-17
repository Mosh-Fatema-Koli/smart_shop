
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class ProfileViewPage extends StatelessWidget {
  const ProfileViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "Profile",),
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
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(

          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2tbbcVAwOiN8tLXozbqE5MWsVjTXAj646Ag&usqp=CAU"),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    color: BrandColors.colorButton,
                    child: SizedBox(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KText(text: "Name :",fontSize: 16,fontWeight: FontWeight.bold,),
                            SizedBox(height: 5,),
                            KText(text: "Mr. XXXXX"),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: BrandColors.colorButton,
                    child: SizedBox(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KText(text: "Address : ",fontSize: 16,fontWeight: FontWeight.bold,),
                            SizedBox(height: 5,),
                            KText(text: "XXX XXX XXX XXXX"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: BrandColors.colorButton,
                    child: SizedBox(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KText(text: "Phone No :",fontSize: 16,fontWeight: FontWeight.bold,),
                            SizedBox(height: 5,),
                            KText(text: "XXXXXXXX XXXX XXX"),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Card(
                    color: BrandColors.colorButton,
                    child: SizedBox(
                      width: Get.width,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            KText(text: "Email :",fontSize: 16,fontWeight: FontWeight.bold,),
                            KText(text: "x@gmail.com"),
                          ],
                        ),
                      ),
                    ),
                  ),



                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
