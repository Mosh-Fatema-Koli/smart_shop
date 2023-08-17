import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_shop/src/screen/view/location/map.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class BottomSheetWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      width: Get.width,
      color: BrandColors.backgroundColor,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          ListTile(
              onTap: (){
                Get.to(MapScreen());
              },
              title: KText(text:'Add Your Current Location',fontSize: 14,),
              trailing: IconButton(onPressed: (){
                Get.to(MapScreen());
              },icon: Icon(Icons.arrow_forward_rounded),),

          )
          ],
      ),
    );
  }
}



