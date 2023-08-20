
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class BannerImageCarousel extends StatelessWidget {

  List<String> bannerImages = [
    'images/banner/banner 1.png',
    'images/banner/banner 1.png',
    'images/banner/banner 1.png',
    // Add more image URLs as needed
  ];
  @override

  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        width: Get.width.sw,// Adjust the height as per your requirement
        child: CarouselSlider(
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            viewportFraction: 1,
            enableInfiniteScroll: false,
            initialPage: 1,
            autoPlay: true,


          ),
          items: bannerImages.map((imageURL) {
            return Builder(
              builder: (BuildContext context) {
                return Image.asset(
                  imageURL,
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                );
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}