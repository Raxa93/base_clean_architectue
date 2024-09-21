

import 'package:flutter/material.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';
import 'package:shimmer/shimmer.dart';

import 'action_button.dart';

Widget retryErrorWidget({required String errorMessage,required var onTap,required double height,required double width}) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Lottie.asset(Assets.animationsError, width: width, height: height, fit: BoxFit.cover),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child:  Shimmer.fromColors(
              baseColor: Colors.black,
              highlightColor: AppColors.primaryColorWhite,
              child:  Text(
                errorMessage,
                style: const TextStyle(color: AppColors.primaryColorWhite, fontWeight: FontWeight.w600, fontSize: 12),
              )),

          // Text(errorMessage),
        ),
        ActionGradientButton(
          hasIcon: false,
          buttonHeight: 25.0,
          buttonWidth: 130.0,
          buttonText: 'Retry',
          roundedRadius: BorderRadius.circular(15),
          onTap: onTap,
        )
      ],
    ),
  );
}