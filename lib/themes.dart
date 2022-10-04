import 'package:brum_brum_ride_electric/constains/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  // light theme
  static final light = ThemeData(
    backgroundColor: backgroundColor,
    primaryColor: primaryColor,
    brightness: Brightness.light,
  );
  // dark theme
  static final dark = ThemeData(
    backgroundColor: backgroundColor,
    primaryColor: primaryColor,
    brightness: Brightness.dark,
  );
}

TextStyle get subHeadingStyle {
  return (GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 26.sp,
      color: Get.isDarkMode ? Colors.grey[400] : Colors.black,
      fontWeight: FontWeight.w700,
    ),
  ));
}

TextStyle get headingStyle {
  return (GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 36.sp,
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w600,
    ),
  ));
}

//LETS GETON
TextStyle get userHeadingStyle {
  return (GoogleFonts.ibmPlexSans(
    textStyle: TextStyle(
      fontSize: 36.sp,
      color: Get.isDarkMode ? Colors.white : userheadingText,
      fontWeight: FontWeight.w600,
    ),
  ));
}

TextStyle get textHeadingStyle {
  return (GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 18.sp,
      color: Get.isDarkMode ? Colors.white : Colors.black,
      fontWeight: FontWeight.w400,
    ),
  ));
}

TextStyle get textInputStyle {
  return (GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 16.sp,
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey,
      fontWeight: FontWeight.w500,
    ),
  ));
}

TextStyle get userTextInputStyle {
  return (GoogleFonts.ibmPlexSans(
    textStyle: TextStyle(
      fontSize: 14.sp,
      color: Get.isDarkMode ? Colors.grey[100] : Colors.black,
      fontWeight: FontWeight.w500,
    ),
  ));
}

TextStyle get hintStyle {
  return (GoogleFonts.roboto(
    textStyle: TextStyle(
      fontSize: 14.sp,
      color: Get.isDarkMode ? Colors.grey[400] : Colors.grey[600],
      fontWeight: FontWeight.w500,
    ),
  ));
}

TextStyle get userSubHeadingStyle {
  return (GoogleFonts.ibmPlexSans(
    textStyle: TextStyle(
      fontSize: 18.sp,
      color: Get.isDarkMode ? Colors.grey[100] : Colors.grey[800],
      fontWeight: FontWeight.w400,
    ),
  ));
}
