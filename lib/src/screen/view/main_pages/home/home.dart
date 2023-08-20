
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/categories/categories.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/component/banner.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/component/categories.dart';
import 'package:smart_shop/src/screen/view/main_pages/home/component/recent_products.dart';
import 'package:smart_shop/src/screen/view/search/src_page.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.backgroundColor,
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  color: Colors.white,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(SearchPage());
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      height: 50,
                      width: Get.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child: Row(
                        children: [
                          Image.asset("images/icons/Search.png",height: 25,width: 20,),
                          SizedBox(
                            width: 10,
                          ),
                          KText(text: "Search",color: BrandColors.greyColor,fontSize: 15,)
                        ],

                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                BannerImageCarousel(),

                SizedBox(
                  height: 10,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    KText(text: "Categories",fontSize: 18,fontWeight: FontWeight.w600,),
                    GestureDetector(
                        onTap: (){
                          Get.to(AllCategories());
                        },
                        child: KText(text: "View All",fontSize: 14,fontWeight: FontWeight.w600,color: BrandColors.colorButton,)),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  child: CategoriesPage(),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    KText(text: "Recent product",fontSize: 18,fontWeight: FontWeight.w600,),

                    Card(
                      child: Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              KText(text: "Filters",color: BrandColors.greyColor,),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(Icons.filter_alt_sharp,color: BrandColors.greyColor,)
                            ],
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    RecentProduct(),
                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
