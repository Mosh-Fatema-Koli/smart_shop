
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/auth/forget_password.dart';
import 'package:smart_shop/src/screen/view/auth/registration.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/bottom_bar_page.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
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
              KText(text: "Welcome \nBack!",fontSize: 36,fontWeight: FontWeight.bold,),
              SizedBox(
                height: 40,
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
              GestureDetector(
                onTap: (){
                Get.to(ForgetPassPage());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    KText(text: "Forgot Password?",color:Colors.red,fontSize: 12,)
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              GlobalButtons.buttonWidget(
                  press: (){
                    Get.to(NavBarScreen(currentLocationAddress: "Set your current location",));
                  },
                  text: "Login",color: BrandColors.navitemSelectColor),
              SizedBox(
                height: 60,
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
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRzX1hgfyzyzsRPx94B_-lhGFtoJdLg1zeO4IancOY&s",height: 50,width: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/a/ab/Apple-logo.png",height: 50,width: 50,)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/2048px-Facebook_f_logo_%282019%29.svg.png",height: 50,width: 50,)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      KText(text: "Create An Account ",color: Colors.grey[500],fontSize: 12,),
                      GestureDetector(
                          onTap: (){
                            Get.to(RegistrationPage());
                          },
                          child: KText(text: " Sign Up",color: BrandColors.navitemSelectColor,fontSize: 14,fontWeight: FontWeight.bold,)),
                    ],
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