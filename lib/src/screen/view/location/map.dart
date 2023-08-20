
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';

class MapPage extends StatelessWidget {
  final LatLng initialPosition;
  final String? currentLocationAddress;

  MapPage({required this.initialPosition, this.currentLocationAddress});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        leading: IconButton(
          onPressed: (){
            Get.back();
          }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
        title: KText(text: "${currentLocationAddress}"),
      ),

      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: initialPosition,
          zoom: 15.0,
        ),
        markers: Set<Marker>.from([
          Marker(
            markerId: MarkerId('current_location'),
            position: initialPosition,
            infoWindow: InfoWindow(title: 'Your Location'),
          ),
        ]),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:smart_shop/src/screen/widgets/k_text.dart';
//
// class MapPage extends StatelessWidget {
//   final LatLng initialPosition;
//
//   MapPage({required this.initialPosition});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       appBar: AppBar(
//         leading: IconButton(
//           onPressed: (){
//             Get.back();
//           }, icon: Icon(Icons.arrow_back,color: Colors.black,),),
//         title: KText(text: "Current Location: ${initialPosition.latitude}, ${initialPosition.longitude}"),
//       ),
//       body: GoogleMap(
//         initialCameraPosition: CameraPosition(
//           target: initialPosition,
//           zoom: 15.0,
//         ),
//         markers: Set<Marker>.from([
//           Marker(
//             markerId: MarkerId('current_location'),
//             position: initialPosition,
//             infoWindow: InfoWindow(title: 'Your Location'),
//           ),
//         ]),
//       ),
//     );
//   }
// }
