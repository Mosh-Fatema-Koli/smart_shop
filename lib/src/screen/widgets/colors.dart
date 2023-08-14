import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const String uri = "https://apihomechef.antopolis.xyz/api/admin/";

//flutter run -d chrome --web-renderer htmlY

class BrandColors {

  static const Color navItemUnSelectColor = Color(0xFF939393);
  static const Color navitemSelectColor = Color(0xFF67C4A7);

  static const Color backgroundColor = Colors.white;

  static const Color primaryColor = Colors.black;
  static const Color colorWhite = Color(0xFFFBFAFF);


  static const Color colorButton = Color(0xFF67C4A7);

  static const Color lightgreyColor = Color(0xFFC4C4C4);
  static const Color greyColor = Color(0xFF918D8D);

  static const Color discountColor = Color(0xFFFE735C);

  static const Color starColor = Color(0xFFEDB310);

  static const Color cardColor = Color(0xFFFAFAFC);








  //****/////*******************************/////////////////////////////////////


  static const Color colorPrimaryDark = Color(0xFF171430);
  static const Color colorAccent = Color(0xFF21ba45);
  static const Color colorBackground = Color(0xFFFBFAFF);
  static const Color colorPink = Color(0xFFE66C75);
  static const Color colorOrange = Color(0xFFE8913A);
  static const Color colorBlue = Color(0xFF2254A3);
  static const Color colorText = Color(0xFFFBFAFF);
  static const Color colorTextLight = Color(0xFF918D8D);
  static const Color colorTextSemiLight = Color(0xFF737373);
  static const Color colorTextDark = Color(0xFF292828);
  static const Color colorGreen = Color(0xFF40cf89);
  static const Color colorLightGray = Color(0xFFe2e2e2);
  static const Color colorLightGrayFair = Color(0xFFe1e5e8);
  static const Color colorDimText = Color(0xFFD2DCF7);
  static const Color colorPurple = Color(0xFF8F73F8);
  static const Color snackBarColor = Colors.indigo;
}

const Color aPrimaryColor = Color(0xFFFEC61C);

const primaryColor = Color(0xFF2697FF);
const secondaryColor = Color.fromARGB(255, 2, 18, 31);
const bgColor = Color(0xFF212332);
const Color navyBlueColor = Color(0xff314579);
const defaultPadding = 16.0;
const Color aNavBarColor = Colors.red;
const Color pinkColor = Color(0xFFF02E6A);
const Color aSearchFieldColor = Color(0xFFF4F4F4);
const Color aBackgroundColor = Color(0xFFF4F4F4);
const Color aBlackCardColor = Color(0xFF1A1A1A);
const Color aTextColor = Color(0xFF1A1A1A);
const Color aPriceTextColor = Color(0xFFA53034);

myStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.roboto(
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}

myStyles14() {
  return GoogleFonts.roboto(
    fontSize: 14,
    color: BrandColors.colorText,
  );
}

myStyles12() {
  return GoogleFonts.roboto(
    fontSize: 12,
    color: BrandColors.colorText,
  );
}

myStyles16() {
  return GoogleFonts.roboto(
    fontSize: 16,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w400,
  );
}

myStyles18() {
  return GoogleFonts.roboto(
    fontSize: 18,
    color: Color.fromARGB(255, 221, 221, 223),
    fontWeight: FontWeight.w700,
  );
}

myStyles20() {
  return GoogleFonts.roboto(
    fontSize: 20,
    color: BrandColors.colorText,
    fontWeight: FontWeight.w700,
  );
}