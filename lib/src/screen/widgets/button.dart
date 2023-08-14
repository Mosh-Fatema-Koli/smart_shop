import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';


class GlobalButtons {
  static ClipRRect buttonWidget(
      {required String? text,
        VoidCallback? press,
        Color? color,
        Color? textColor}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(color: color ?? BrandColors.lightgreyColor),
        child: TextButton(
          style: ElevatedButton.styleFrom(

              elevation: 0.0,
              shadowColor: BrandColors.lightgreyColor,
              foregroundColor: Colors.white),
          onPressed: press,
          child: Text(
            text ?? '',
            style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  static Future customLoader() {
    return Get.dialog(
      const SpinKitThreeBounce(
        color: Colors.white,
        size: 40,
      ),
    );
  }
}

class CartButtons {
  static ClipRRect cartbuttonWidget(
      {required String? text,
        VoidCallback? press,
        Color? color,
        Color? textColor}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        width: double.infinity,
        height: 30,
        decoration: BoxDecoration(color: color ?? BrandColors.lightgreyColor),
        child: TextButton(
          style: ElevatedButton.styleFrom(
              backgroundColor:BrandColors.colorButton,
              elevation: 0.0,
              shadowColor: pinkColor,
              foregroundColor: Colors.white),
          onPressed: press,
          child: Text(
            text ?? '',
            style: TextStyle(
                color: textColor ?? Colors.black,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }


}