import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

Widget imageSliderCarousel = Container(
  height: 200,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/img1.jpg'),
          AssetImage('images/img2.jpg'),
          AssetImage('images/img3.jpg'),
          AssetImage('images/img4.jpg'),
        ],
        dotSize: 6.0,
        indicatorBgPadding: 0,
        dotBgColor: Colors.transparent,
      ),
    ),
  ),
);
