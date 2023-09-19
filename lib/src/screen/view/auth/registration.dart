
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/controller/auth_controller.dart';
import 'package:smart_shop/src/screen/const/helper/validator.dart';
import 'package:smart_shop/src/screen/view/auth/login.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class RegistrationPage extends StatelessWidget {
  RegistrationPage({super.key});

  final AuthController _authController =Get.put(AuthController());
  final formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: BrandColors.colorButton,
          elevation: 0,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: Form(
            key: formKey,

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
                  hintText: "Name",
                  controller: _authController.nameRegController.value,
                  prefixIcon: Icon(Icons.person),
                  validator: Validators.nameValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                SignUpTextField(
                  hintText: "Email",
                  controller: _authController.emailRegController.value,
                  prefixIcon: Icon(Icons.email),
                  validator: Validators.emailValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                SignUpTextField(
                  hintText: "phone",
                  controller: _authController.phoneController.value,
                  prefixIcon: Icon(Icons.call),
                  validator: Validators.phoneValidator,
                ),
                SizedBox(
                  height: 10,
                ),
                TextboxWidget(controller: _authController.passRegController.value,
                  hintText: "Password",
                  isPassword: true,
                  validator: Validators.passValidator,

                ),
                SizedBox(
                  height: 10,
                ),
                TextboxWidget(controller: _authController.confirmPassRegController.value,
                  hintText: "confirm Password",
                  isPassword: true,
                  validator: Validators.passValidator,

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
                      if (formKey.currentState!.validate()) {
                        _authController.registration();
                      }

                    },
                    text: "Create Account",color: BrandColors.colorButton),
                SizedBox(
                  height: 30,
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
      ),
    );
  }
}