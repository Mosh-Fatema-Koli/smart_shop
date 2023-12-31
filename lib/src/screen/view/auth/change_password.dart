
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class ChangePassPage extends StatelessWidget {
  ChangePassPage({super.key});

  TextEditingController _controller = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "Change Password",),
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
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              TextboxWidget(controller: _controller,
                hintText: "Password",
                isPassword: true,

              ),
              SizedBox(
                height: 10,
              ),
              TextboxWidget(controller: _controller,
                hintText: "Confirm Password",
                isPassword: true,

              ),


              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(
                  press: (){

                  },
                  text: "Submit",color: BrandColors.colorButton),
              SizedBox(
                height: 60,
              ),

            ],
          ),
        ),
      ),
    );
  }
}