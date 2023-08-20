
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class OfferPage extends StatelessWidget {
  const OfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) =>Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
          child: Card(
            shadowColor: BrandColors.colorButton,
            elevation: 5,
            child: Container(

              width: Get.width,
              child: Column(
                children: [
                  ListTile(
                    contentPadding: EdgeInsets.symmetric(horizontal: 5,vertical: 0),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-vFh37dvKphojkLdr64apc5t1r0loZnDh9gddvXcq4malpVKK9dR6MJlOMks0ac1o-cs&usqp=CAU"),
                    ),
                    title: KText(text: "Up to 50% Discount all products",fontSize: 14,),
                    subtitle: KText(text: "9 Minutes ago",fontSize: 12,color: BrandColors.navitemSelectColor,),

                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10,),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTy38XI-A70Sxrro3aYq24lQJTQG9b8xTnwtw&usqp=CAU",height: 100,width:Get.width,fit: BoxFit.fitWidth,),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: KText(text: "Up to 50% Discount all products Up to 50% Discount all products",fontSize: 10,),
                  )
                ],
              ),
            ),
          ),
        ) ,),

    );
  }
}
