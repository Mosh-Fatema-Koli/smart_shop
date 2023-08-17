
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "Profile Edit",),
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
            child: Card(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2tbbcVAwOiN8tLXozbqE5MWsVjTXAj646Ag&usqp=CAU"),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    KText(text: "Name :"),
                    SignUpTextField(
                      hintText: "Enter your name",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    KText(text: "Address :"),
                    SignUpTextField(
                      hintText: "Enter your address",
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    KText(text: "Phone No :"),
                    SignUpTextField(
                      hintText: "Enter your phone no",

                    ),
                    SizedBox(
                      height: 10,
                    ),
                    KText(text: "Email :"),
                    SignUpTextField(
                      hintText: "enter your email",
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    GlobalButtons.buttonWidget(
                        press: (){
                          //Get.to(NavBarScreen());
                        },
                        text: "Submit",color: BrandColors.navitemSelectColor),

                  ],
                ),
              ),
            ),
          ),
        ),
      ),

    );
  }
}
