import 'package:air_salon/app/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FontFamily {
  static String poppins = "Poppins";
}

class AppStyles {
  // Font size 60
  static TextStyle get colorizeTextStyle => TextStyle(
      fontSize: 60.sp, fontWeight: FontWeight.bold);


  // Font size 24
  static TextStyle get font24blackbold => TextStyle(
      fontSize: 24.sp, color: black, fontWeight: FontWeight.bold);

  // Font size 20
  static TextStyle get font20White =>
      TextStyle(fontSize: 20.sp, color: white);

  static TextStyle get font20Black =>
      TextStyle(fontSize: 20.sp, color: black);

  static TextStyle get font20BlackBold => TextStyle(
        fontSize: 20.sp,
        color: black,
        fontWeight: FontWeight.bold,
 
     );
      
  // Font size 18

  // Font size 16

  // Font size 14

  // Font size 12

  // Font size 10
}