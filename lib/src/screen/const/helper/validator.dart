import 'package:get/get_utils/src/get_utils/get_utils.dart';

class Validators {

  static String? phoneValidator(String? value) {
    if (value == "") {
      return "Phone Number is required";
    } else if (value?.length != 11) {
      return 'Phone number should contain exactly 11 digits';
    }
    return null;
  }

  static String? emailValidator(String? value) {
    if (value == "") {
      return "Email is required";
    } else if (!GetUtils.isEmail(value!)) {
      return 'Please enter a valid email';
    }
    return null;
  }
  static String? nameValidator(String? value) {
    if (value == "") {
      return "Field could not empty";
    }
    return null;
  }
  static String? amountValidator(String? value) {
    if (value == "") {
      return "Field could not empty";
    }
    return null;
  }

  static String? passValidator(String? value) {
    RegExp regex=RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }else if(value.length<6){
      return ("Password Must be more than 5 characters");
    }
    else if(!regex.hasMatch(value)){
      return ("Password should contain upper,lower,digit and Special character ");
    }
    return null;
  }
}