
import 'package:flutter/material.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class ForgetPassPage extends StatelessWidget {
  const ForgetPassPage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              KText(text: "Forgot\npassword?",fontSize: 36,fontWeight: FontWeight.bold,),
              SizedBox(
                height: 50,
              ),
              SignUpTextField(
                hintText: "Enter your email address",
                prefixIcon: Icon(Icons.email),
              ),
              SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KText(text: "* We will send you a message to set or reset \nyour new password",color: BrandColors.greyColor,fontSize: 12,textAlign:TextAlign.start,)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(
                  press: (){

                  },
                  text: "Submit",color:  BrandColors.colorButton),
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