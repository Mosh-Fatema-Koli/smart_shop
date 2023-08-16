
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/main_pages/wish_list/component/grid_view_favourite_list.dart';
import 'package:smart_shop/src/screen/view/search/src_page.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class WishListPage extends StatelessWidget {
  const WishListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
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
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: "Favourite Product",fontSize: 16,fontWeight: FontWeight.w600,),

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
                FavouriteProduct()
              ],
            )
          ],
        ),
      ),

    );
  }
}
