


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';

class AppStyles{


  static const titleLarge = TextStyle(
    color: AppColors.primaryDarkColor,
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );


  static const headline = TextStyle(
    color: Colors.black,
    fontSize: 22,
    fontWeight: FontWeight.w700,
  );



  static BoxDecoration primaryRoundedContainer = const BoxDecoration(
    color: AppColors.primaryColorWhite,
    borderRadius: BorderRadius.all(Radius.circular(12)),
  );

  static BoxDecoration primaryColorGradient =   const BoxDecoration(
    gradient: LinearGradient(

      colors: [

        AppColors.primaryColor,
        AppColors.primaryColor,
        // Color(0xFFFF2525),

      ],
      // stops: [
      //   0.1,
      //   0.9,
      // ],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    ),
  );

  static  BoxDecoration roundedContainerWithShadow = BoxDecoration(
    color: Colors.white,
    borderRadius: const BorderRadius.all(Radius.circular(30)),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.3), // Shadow color
        spreadRadius: 3, // Spread radius
        blurRadius: 3, // Blur radius
        offset: const Offset(0, 0), // Offset for horizontal and vertical shadow
      ),
    ],
  );
}