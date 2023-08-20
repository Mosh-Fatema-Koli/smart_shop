
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';

class Style {

  static ThemeData themeData( bool isDarkTheme,BuildContext context){
    return ThemeData(
        scaffoldBackgroundColor:isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite,// scaffold bg color change
        cardColor: isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite,//  card color change
        canvasColor:isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite,// drawer color change
        fontFamily: "inter",
        secondaryHeaderColor: isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite ,
        dividerColor: BrandColors.lightgreyColor,
        iconTheme: IconThemeData(
            color: isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite
        ),
        textTheme: Theme.of(context).textTheme.apply(bodyColor:isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite,displayColor: Colors.red),

        appBarTheme: AppBarTheme(
            backgroundColor:isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite,
           titleTextStyle: TextStyle(color:isDarkTheme?BrandColors.colorDark:BrandColors.colorWhite ),
           // titleTextStyle:  CustomTextStyle.h3(fontWeight: FontWeight.w600,color:isDarkTheme?AppColors.darkHeaderTextColor:AppColors.headerTextColor),
            elevation: 0
        )
    );
  }


}