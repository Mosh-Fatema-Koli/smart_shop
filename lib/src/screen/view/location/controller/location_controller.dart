

import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smart_shop/src/screen/view/location/map.dart';
import 'package:geocoding/geocoding.dart';
import 'package:smart_shop/src/screen/view/main_pages/nav_bar/bottom_bar_page.dart';

class MapController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    getCurrentLocation();
    getmapCurrentLocation();
  }

  // String locationName = "Loading...";
  //
  // Future<void> getCurrentLocation() async {
  //   LocationPermission permission = await Geolocator.requestPermission();
  //
  //   if (permission == LocationPermission.denied) {
  //     // Handle the case where the user denied permission.
  //     Get.snackbar(
  //       "Permission Denied",
  //       "Please grant location permission to use this feature.",
  //       snackPosition: SnackPosition.BOTTOM,
  //     );
  //   } else if (permission == LocationPermission.whileInUse ||
  //       permission == LocationPermission.always) {
  //     Position position = await Geolocator.getCurrentPosition(
  //       desiredAccuracy: LocationAccuracy.high,
  //     );
  //
  //     Get.to(() => MapPage(
  //       initialPosition: LatLng(
  //         position.latitude,
  //         position.longitude,
  //       ),
  //     ));
  //   }
  // }

  Future<void> getCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      Get.snackbar(
        "Permission Denied",
        "Please grant location permission to use this feature.",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placemarks.isNotEmpty) {
        String placeName = placemarks[0].name ?? '';
        String street = placemarks[0].street ?? '';
        String city = placemarks[0].locality ?? '';
        String state = placemarks[0].administrativeArea ?? '';
        String country = placemarks[0].country ?? '';

        String address = "$placeName $street, $city, $state, $country";
        print(address);


        Get.to(() => NavBarScreen(
          // initialPosition: LatLng(
          //   position.latitude,
          //   position.longitude,
          // ),
          currentLocationAddress: address,
        ));
      }
    }
  }
  Future<void> getmapCurrentLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();

    if (permission == LocationPermission.denied) {
      Get.snackbar(
        "Permission Denied",
        "Please grant location permission to use this feature.",
        snackPosition: SnackPosition.BOTTOM,
      );
    } else if (permission == LocationPermission.whileInUse ||
        permission == LocationPermission.always) {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      List<Placemark> placemarks =
      await placemarkFromCoordinates(position.latitude, position.longitude);

      if (placemarks.isNotEmpty) {
        String placeName = placemarks[0].name ?? '';
        String street = placemarks[0].street ?? '';
        String city = placemarks[0].locality ?? '';
        String state = placemarks[0].administrativeArea ?? '';
        String country = placemarks[0].country ?? '';

        String address = "$placeName $street, $city, $state, $country";
        print(address);


        Get.to(() => MapPage(
          initialPosition: LatLng(
            position.latitude,
            position.longitude,
          ),
          currentLocationAddress: address,
        ));
      }
    }
  }

}
