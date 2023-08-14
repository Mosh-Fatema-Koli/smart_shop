
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class BannerImageCarousel extends StatelessWidget {

  List<String> bannerImages = [
    'images/banner/banner 1.png',
    'images/banner/banner 1.png',
    'images/banner/banner 1.png',
    // Add more image URLs as needed
  ];
  @override

  Widget build(BuildContext context) {
    return Container(
      height: 180, // Adjust the height as per your requirement
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
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              );
            },
          );
        }).toList(),
      ),
    );
  }
}