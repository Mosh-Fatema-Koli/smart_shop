
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/cart.dart';
import 'package:smart_shop/src/screen/view/product/product.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';


class AllCategories extends StatelessWidget {
   AllCategories({super.key});

   final List<Map> myProducts =
   List.generate(10, (index) => {"id": index, "name": "Product $index"})
       .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.backgroundColor,
      appBar: AppBar(
        elevation: 5,
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "All Categories",),
        actions: [
          GestureDetector(
            onTap: (){
              Get.to(CartPage());
            },
            child: Stack(
              children: [
                Image.asset(AppIcons.cart,height: 30,width: 30,),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(100)
                    ),
                    child: Center(child: KText(text: "0",fontSize: 8,color: BrandColors.colorWhite,)),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        // implement GridView.builder
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return GestureDetector(
                onTap: (){
                  Get.to(AllProductPage());
                },
                child: Card(
                  // alignment: Alignment.center,
                  // decoration: BoxDecoration(
                  //     borderRadius: BorderRadius.circular(15)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.network("https://images.unsplash.com/photo-1523275335684-37898b6baf30?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZHVjdHxlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80",height: 60, width: 60, fit: BoxFit.fitWidth,),

                      Text(myProducts[index]["name"]),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}


