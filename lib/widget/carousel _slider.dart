import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

Widget carouselSlider(item)=>SizedBox(
  height: 200,
  child: Carousel(
    boxFit: BoxFit.cover,
    images: item,
    animationCurve: Curves.fastOutSlowIn,
    animationDuration: Duration(milliseconds: 1000),
  ),
);