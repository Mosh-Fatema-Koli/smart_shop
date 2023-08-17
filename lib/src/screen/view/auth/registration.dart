
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/auth/login.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});


  TextEditingController _controller = TextEditingController();

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
              KText(text: "Create an \naccount",fontSize: 36,fontWeight: FontWeight.bold,),
              SizedBox(
                height: 30,
              ),
              SignUpTextField(
                hintText: "Username or Email",
                prefixIcon: Icon(Icons.person),
              ),
              SizedBox(
                height: 10,
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
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  KText(text: "By clicking the Register button, you agree \nto the public offer",color: Colors.grey[500],fontSize: 12,textAlign:TextAlign.start,)
                ],
              ),
              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(
                  press: (){

                  },
                  text: "Create Account",color: BrandColors.colorButton),
              SizedBox(
                height: 50,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  KText(text: "- OR Continue with -",color: Colors.grey[500],fontSize: 12,),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 60,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzX1hgfyzyzsRPx94B_-lhGFtoJdLg1zeO4IancOY&s",height: 50,width: 50,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png",height: 50,width: 50,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Image.network("https://img.freepik.com/premium-vector/blue-social-media-logo_197792-1759.jpg",height: 50,width: 50,),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.to(LoginPage());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        KText(text: "I Already Have an Account ",color: BrandColors.greyColor,fontSize: 12,),
                        KText(text: " Login",color: BrandColors.navitemSelectColor,fontSize: 14,fontWeight: FontWeight.bold,),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}