// ignore_for_file: camel_case_types

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class dimensions {
  static double screenHeight = Get.size.height;
  static double screenWidth = Get.size.width;
  /*the dimensions of item on any screen is height of items in your screen
  divised by the height of item example 
  (the height of my screen is 802 and the height of item is 220 so 
  the responsive height is 802/220 = x
  screen Height / x 
  )
  */
  // static double width2 = screenHeight/
  // Height of this screen = 802
  // Width of This screen = 392.72

  // Screen Height
  static double height5 = screenHeight / 160.4;
  static double height10 = screenHeight / 82;
  static double height13 = screenHeight / 61.69;
  static double height15 = screenHeight / 53.46;
  static double height20 = screenHeight / 40.1;
  static double height22 = screenHeight / 37.27;
  static double height50 = screenHeight / 16.04;
  static double height100 = screenHeight / 8.02;
  static double height120 = screenHeight / 6.68;
  static double height180 = screenHeight / 4.45;
  static double height300 = screenHeight / 2.67;

  // Font Size and Icon Size
  static double size5 = screenHeight / 160.4;
  static double size10 = screenHeight / 82;
  static double size13 = screenHeight / 61.69;
  static double size15 = screenHeight / 53.46;
  static double size20 = screenHeight / 40.1;
  static double size24 = screenHeight / 33.41;

  // Border Radius Size
  static double radius13 = screenHeight / 61.69;
  static double radius15 = screenHeight / 53.46;
  static double radius20 = screenHeight / 40.1;

  // Card Height
  static double containerHeight = screenHeight / 3.08;
  static double cardHeight = screenHeight / 3.64;
  static double cardText = screenHeight / 6.17;

  // Screen Width 392.72
  static double width5 = screenWidth / 78.544;
  static double width7 = screenWidth / 56.10;
  static double width10 = screenWidth / 39.272;
  static double width13 = screenWidth / 30.20;
  static double width15 = screenWidth / 26.18;
  static double width20 = screenWidth / 19.636;
  static double width22 = screenWidth / 17.85;
  static double width100 = screenWidth / 3.92;
  static double width110 = screenWidth / 3.57;
  static double width200 = screenWidth / 1.96;
  static double width250 = screenWidth / 1.57;
  static double width300 = screenWidth / 1.30;
}
