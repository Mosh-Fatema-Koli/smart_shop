import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/helper/routes.dart';
import 'package:smart_shop/src/screen/view/auth/login.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';



class SplashPage extends StatelessWidget {
  const SplashPage({super.key});



  @override
  Widget build(BuildContext context) {

    Future.delayed(const Duration(seconds: 3), () {

      Get.offAllNamed(Routes.navBarScreen);


    });


    return Scaffold(
      backgroundColor: BrandColors.colorButton,

      body: Container(
        // ignore: prefer_const_constructors
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Expanded(
                flex: 12,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 5,
                              blurRadius: 100,
                              offset: Offset(0, 3), // changes position of shadow
                            ),
                          ],
                        ),
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://thumbs.dreamstime.com/b/lets-shopping-logo-design-template-cart-icon-designs-134743663.jpg',
                            width: 100,
                            height: 100,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
              ),

              Center(
                child: SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    backgroundColor: BrandColors.colorButton,
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              KText(text: 'VERSION 1.0.1',color:BrandColors.backgroundColor,fontWeight: FontWeight.w600,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


}