import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_shop/src/screen/view/location/controller/location_controller.dart';
import 'package:smart_shop/src/screen/view/location/map.dart';
import 'package:smart_shop/src/screen/widgets/colors.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class BottomSheetWidget extends StatelessWidget {

  final  MapController _mapController =Get.put(MapController());
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
                _mapController.getCurrentLocation();
                Navigator.pop(context);

              },
            leading: Icon(Icons.add_circle,color: BrandColors.colorButton,),
              title: KText(text:'Add Your Current Location',fontSize: 14,),
              trailing: IconButton(onPressed: (){
                _mapController.getmapCurrentLocation();
                Navigator.pop(context);
              },icon: Icon(Icons.arrow_forward_rounded),),

          )
          ],
      ),
    );
  }
}



