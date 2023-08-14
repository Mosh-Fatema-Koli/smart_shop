import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_shop/src/screen/view/location/controller/location_controller.dart';
import 'package:smart_shop/src/screen/widgets/k_text.dart';


class MapScreen extends StatelessWidget {

  final Completer<GoogleMapController> _controller =
  Completer<GoogleMapController>();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:KText(text: "Your Current Location",fontSize: 14,)),
      body:  Stack(
        children: <Widget>[
          GoogleMap(
              initialCameraPosition: CameraPosition(target:
             LatLng(-33.870840,151.206286),
              zoom: 12)
          )
        ],
      )

    );
  }
}
