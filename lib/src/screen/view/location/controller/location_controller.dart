

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {

  Rx<LatLng?> currentLocation = Rx<LatLng?>(null);

  @override
  void onInit() {
    super.onInit();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );
      currentLocation.value = LatLng(position.latitude, position.longitude);
    } catch (e) {
      print("Error getting location: $e");
    }
  }

}
