import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smart_shop/src/screen/const/api/api_checker.dart';
import 'package:smart_shop/src/screen/const/api/api_client.dart';
import 'package:smart_shop/src/screen/const/api/api_const.dart';
import 'package:smart_shop/src/screen/const/helper/routes.dart';
import 'package:smart_shop/src/screen/const/helper/share_pref_helper.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';

class AuthController extends GetxController{


  // Login

  final emailController = TextEditingController().obs;
  final passController = TextEditingController().obs;



  // sign up
  var isVisibility=false.obs;
  var isRememberMe=false.obs;

  final nameRegController = TextEditingController().obs;
  final emailRegController = TextEditingController().obs;
  final passRegController = TextEditingController().obs;
  final confirmPassRegController = TextEditingController().obs;
  final phoneController = TextEditingController().obs;

  @override
  void onInit() {

    getToken();

    super.onInit();
  }


  var isLoading =false.obs;

  RxString isLogged ="".obs;


  getToken()async{

    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString(AppConstant.token.toString())??"";
    isLogged.value =token;
    print("Token:$isLogged");
    
  }




  login()async{


    Map<String, dynamic> data =
    {
      'email': emailController.value.text,
      'password': passController.value.text
    };
    isLoading(true);
    Response response = await ApiClient.postData(ApiConstant.loginApi, json.encode(data),
        headers: {'Content-Type': 'application/json'});
    if(response.statusCode==200){

      debugPrint("--------------------check-------------------");
      debugPrint(data["token"].toString());
      var token = response.body['token'].toString();
      debugPrint("token = $token");

      debugPrint("--------------------check-------------------");

      await   PrefsHelper.setString(AppConstant.token, token.toString());


      Get.snackbar("Login Successful","Congratulation",backgroundColor: BrandColors.colorButton,colorText: Colors.white);
      Get.offAllNamed(Routes.navBarScreen);
    }else{
      ApiChecker.checkApi(response);
      Get.snackbar("Login Failed","Please try again",backgroundColor:BrandColors.colorButton,colorText: Colors.white);
    }
    isLoading(false);

  }

  registration()async{

    Map<String, dynamic> data = {

      "name": nameRegController.value.text,
      "email": emailRegController.value.text,
      "password": passRegController.value.text,
      "password_confirmation": confirmPassRegController.value.text,
      "phone": phoneController.value.text

    };


    isLoading(true);
    Response response = await ApiClient.postData(ApiConstant.registerApi, json.encode(data),
        headers: {'Content-Type': 'application/json'});

    print(response.statusCode);

    if(response.statusCode==200){
      print(response.body);



      Get.snackbar("Registration Successful","Congratulation",backgroundColor: BrandColors.colorButton,colorText: Colors.white);

    }else{
      ApiChecker.checkApi(response);
      Get.snackbar("Registration ","Please try again",backgroundColor:BrandColors.colorButton,colorText: Colors.white);
    }
    isLoading(false);

  }

  logout()async{

    Get.offAllNamed(Routes.navBarScreen);
    clearSharedData(isLogged);
    print(isLogged);

  }

  clearSharedData(String)async{
    SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
    sharedPreferences.clear();

  }






}








