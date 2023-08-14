
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class SearchProduct extends StatelessWidget {
  const SearchProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 10,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 10,
          childAspectRatio: .75


      ),
      itemBuilder: (BuildContext context, int index) {
        return   GestureDetector(
          onTap: (){
            // Get.to(ProductsDetailes());
          },
          child: Card(
            color: BrandColors.cardColor,
            child: Container(
              height: 210,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      flex:4,
                      child: ClipRRect(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10), ),
                          child: Image.asset("images/products/img.png",fit: BoxFit.cover,height: 120,width: Get.width,))),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            KText(text: "Women Printed Kurta",fontSize: 14,fontWeight: FontWeight.bold,),
                            SizedBox(height: 5,),
                            KText(text: "Tk 1500"),

                            SizedBox(height: 10,),
                            CartButtons.cartbuttonWidget(text: "Add to cart",textColor:BrandColors.colorWhite,color: BrandColors.colorButton)


                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
