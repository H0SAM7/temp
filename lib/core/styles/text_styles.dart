import 'package:broker/core/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {


static TextStyle styleMedium18(BuildContext context) {
    return TextStyle(
      //   color: blueColor,
      fontSize: getResponsiveSize(context, fontSize: 18),
      fontFamily: GoogleFonts.amiri().fontFamily,
      fontWeight: FontWeight.bold,
    );
  }




























  static TextStyle style14(BuildContext context) {
  
    return TextStyle(
       color: whiteColor,

      fontSize: getResponsiveSize(context, fontSize: 14),

      fontFamily: GoogleFonts.inter().fontFamily,
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle style18(BuildContext context) {
    return TextStyle(
      //   color: blueColor,
      fontSize: getResponsiveSize(context, fontSize: 18),
      color: Colors.black,

      fontWeight: FontWeight.w400,
      height: 0,
    );
  }

  static TextStyle style24(BuildContext context) {
    return TextStyle(
      //   color: blueColor,
      fontSize: getResponsiveSize(context, fontSize: 24),
      fontWeight: FontWeight.w600,
    );
  }

  static const TextStyle style25 = TextStyle(
    color: Colors.black,
    fontSize: 25,
    fontWeight: FontWeight.w500,
    height: 0,
  );

  static const TextStyle styleBold18 = TextStyle(
    color: Colors.black,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    height: 0,
  );

  static TextStyle style20 = TextStyle(
    color: Colors.black.withOpacity(0.800000011920929),
    fontSize: 20,
    fontWeight: FontWeight.w400,
    height: 0,
  );

  static const TextStyle style22 = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w500,
    height: 0,
  );
}

// sacleFactor
// responsive font size
// (min , max) fontsize

double getResponsiveSize(BuildContext context, {required double fontSize}) {
  double responsiveSize = fontSize * getScaleFactor(context);
  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;
  responsiveSize.clamp(lowerLimit, upperLimit);
  //log(responsiveSize.toString());
  return responsiveSize;
}

double getScaleFactor(BuildContext context) {
  //   var disPacher=PlatformDispatcher.instance;
  // var physicalWidth=disPacher.views.first.physicalSize.width;
  // var devicePixelRatio=disPacher.views.first.devicePixelRatio;
  // double width=physicalWidth/devicePixelRatio;   ------> contextبديل الميديا كويري في حال انك مش عايز تستخدم ال

  double width = MediaQuery.sizeOf(context).width;
  if (width < 750) {
    return width / 450;
  } else if (width < 1200) {
    return width / 800;
  } else {
    return width / 1600;
  }
}