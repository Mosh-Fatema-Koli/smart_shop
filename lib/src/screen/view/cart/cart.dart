
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/cart/controller/cart_controller.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/button.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class CartPage extends StatelessWidget {
 CartPage({super.key});

 final CartController controller = Get.put(CartController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
                appBar: AppBar(
                  leading: IconButton(
                    onPressed: (){
                    Get.back();
                     }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
                  title: KText(text: "Your Cart",),
                  actions: [
                    Center(
                      child: GestureDetector(
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
                    ),
                    SizedBox(
                      width: 15,
                    ),
                  ],
                ),
      body: Column(
        children: [
          Divider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: "Delivery to"),
                Row(
                  children: [
                    KText(text: "Salatiga City, Central Java",color: BrandColors.colorDark,),
                    Icon(Icons.keyboard_arrow_down_outlined,color: BrandColors.colorDark,)
                  ],
                )
              ],
            ),
          ),
          Divider(),

          SingleChildScrollView(
            child: Container(
              height: 500,
              child:Obx(() => ListView.builder(
                itemCount: controller.cardList.length,
                itemBuilder: (context, index) {

                  final cardData = controller.cardList[index];

                  final isItemSelected = cardData.isSelected;

                  return Container(
                    child: ListTile(
                      contentPadding: EdgeInsets.all(5),
                      leading: Checkbox(
                        value: cardData.isSelected,
                        checkColor: BrandColors.colorWhite,
                        activeColor: BrandColors.colorButton,
                        onChanged: (value) {
                          controller.toggleCardSelection(index);
                        },
                      ),
                      title: Container(

                        child: Row(
                          children: [
                            Expanded(

                                flex:1,
                                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqJfcBpl3WXLCJ_3XzXwJb_7tWkiOuq1G2cg&usqp=CAU",height:100,fit: BoxFit.cover,)
                            ),
                            SizedBox(width: 5,),
                            Expanded(
                                flex:3,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    KText(text: controller.cardList[index].name,fontSize: 16,fontWeight: FontWeight.bold,),
                                    KText(text: "Variant: ${controller.cardList[index].variant}"),
                                    Row(
                                      children: [
                                        KText(text: "${controller.cardList[index].price.toString()}0 Tk"),
                                        Row(
                                          children: [
                                            IconButton(onPressed: (){
                                              controller.decrementQuantity(index);
                                            }, icon: Icon(Icons.remove_circle_outline_outlined,color: BrandColors.lightgreyColor,)),
                                            KText(text: controller.cardList[index].quantity.toString()),
                                            IconButton(onPressed: (){
                                              controller.incrementQuantity(index);
                                            }, icon: Icon(Icons.add_circle_outline,color: BrandColors.lightgreyColor,)),
                                            IconButton(onPressed: (){}, icon: Icon(Icons.delete,color: BrandColors.lightgreyColor,))
                                          ],
                                        ),

                                      ],
                                    )

                                  ],
                                ))

                          ],
                        ),
                      ),

                    ),
                  );
                },
              )),
          ))
        ],
      ),


        bottomNavigationBar: Column(
      mainAxisSize: MainAxisSize.min,
          children: [
            Divider(),
            Container(

              height: 100,
              child: Obx(() => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        KText(text: "Totals", fontSize: 18, fontWeight: FontWeight.bold),
                        KText(text: "${controller.totalPrice.toString()}0 Tk", fontSize: 18, fontWeight: FontWeight.bold),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    GlobalButtons.buttonWidget(
                      text: "Continue for payments",
                      color: controller.isSelected.value
                          ? BrandColors.colorButton // Change the color when isSelected is true
                          : BrandColors.lightgreyColor,
                    ),
                  ],
                ),
              ),)
            ),
          ],
        )



    );
  }
}
