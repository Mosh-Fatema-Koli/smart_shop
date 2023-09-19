
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/const/helper/routes.dart';
import 'package:smart_shop/src/screen/widgets/custom_snackBar.dart';



class ApiChecker {
  static void checkApi(Response response, {bool getXSnackBar = false}) {

    if(response.statusCode != 200){
      if(response.statusCode == 401) {
       // Get.find<AuthController>().clearSharedData();
        Get.offAllNamed(Routes.splashScreen);
      }else {
        showCustomSnackBar(response.statusText!, getXSnackBar: getXSnackBar);
      }

    }


  }
}