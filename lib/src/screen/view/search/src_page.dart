
import 'package:flutter/material.dart';
import 'package:smart_shop/src/screen/widgets/app_icons.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';
import 'package:smart_shop/src/screen/widgets/text_box_field.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BrandColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: BrandColors.backgroundColor,
        title: SignUpTextField(
          prefixIcon:Image.asset("images/icons/Search.png",height: 30,width: 30,),
        ),
        actions: [
          Stack(
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
          SizedBox(
            width: 10,
          ),
        ],
        elevation: 5,

      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                KText(text: "Last search",fontSize: 14,fontWeight: FontWeight.bold,),
                KText(text: "Clear all",color: Colors.red,)
              ],
            ),

            ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: Icon(Icons.watch_later_outlined),
              title: KText(text: "Iphone 12 pro max",),
              trailing: IconButton(onPressed: (){}, icon: Icon(Icons.close)),
            ),

          ],
        ),
      ),


    );
  }
}
