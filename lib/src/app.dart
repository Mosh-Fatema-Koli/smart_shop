import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/1st_page/splash.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/bottom_bar_page.dart';
import 'package:smart_shop/src/screen/view/others/thame_change/app_theme.dart';
import 'package:smart_shop/src/screen/view/others/thame_change/controller.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {

    final _themeController =  ThemeController();

    _themeController.getCurrentAppTheme();


    // _themeController.setDarkTheme(_themeController.isDarkTheme.value);
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return Obx(()=>
            GetMaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Ecommerce Project',
              // You can use the library anywhere in the app even in theme

              // theme: ThemeData(
              //   scaffoldBackgroundColor: AppColors.bgColor,
              //   fontFamily: "inter",
              //     textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.blue,displayColor: Colors.red),
              //     hintColor: Colors.red,
              //   primarySwatch: Colors.blue,
              //   appBarTheme: AppBarTheme(
              //     backgroundColor: AppColors.bgColor,
              //     elevation: 0
              //   )
              //
              // ),
              theme: Style.themeData(_themeController.isDarkTheme.value, context),
              home: SplashPage(),

             // getPages: pages,
            ),
        );
      },

    );
  }
}
//
// Widget build(BuildContext context) {
//     return GetMaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: NavBarScreen(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }