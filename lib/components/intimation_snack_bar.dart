
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';

import 'custom_toast/custom_snack_bar.dart';
import 'custom_toast/top_snack_bar.dart';




enum SnackBarType{
  success(AppColors.primaryColor),
  error(Colors.red),
  help(AppColors.primaryColor),
  normal(Colors.white);
  final Color color;
  const SnackBarType(this. color);
}

class IntimationSnackBar{

static showIntimationSnackBar({required BuildContext context,required  msg,required SnackBarType snackBarType}){
  if(snackBarType==SnackBarType.success)
    {
     return  showTopSnackBar(
        Overlay.of(context),
        Dismissible(
          key: Key(msg),
          child: CustomSnackBar.success(
            message: msg,
            textStyle: const TextStyle(fontSize: 14,color: Colors.white),
          ),
        ),
      );

    }
  else if (snackBarType==SnackBarType.error){

    return

      showTopSnackBar(
      Overlay.of(context),
      Dismissible(
        key: Key(msg),
        child: CustomSnackBar.error(
          message: msg,
          textStyle: const TextStyle(fontSize: 14,color: Colors.white),
        ),
      ),
    );

  }
  else if (snackBarType==SnackBarType.help){

    return  showTopSnackBar(
      Overlay.of(context),
      Dismissible(
        key: Key(msg),
        child: CustomSnackBar.help(
          message: msg,
          textStyle: const TextStyle(fontSize: 14,color: Colors.white),
        ),
      ),
    );

  }
  else{
    return  showTopSnackBar(
      Overlay.of(context),
      Dismissible(
        key: Key(msg),
        child: CustomSnackBar.success(
          message: msg,
          textStyle: const TextStyle(fontSize: 14,color: Colors.white),
        ),
      ),
    );

  }
}
}
// bool checkLoginStatus({required BuildContext context,bool? navigateToLoginScreen = true}){
//   if(locator<AppPreference>().getLoginStatus())
//   {
//     return true;
//   }
//   else{
//     if(navigateToLoginScreen!)
//     {
//
//       context.push("/${AppScreen.loginScreen}",extra: {
//         'isFromPaymentScreen' : false
//       });
//       // showIntimationSnackBar("Please login first to continue", context);
//       IntimationSnackBar.showIntimationSnackBar(context: context, msg: 'Please login first to continue', snackBarType: SnackBarType.error);
//       return false;
//     }
//     else{
//       return false;
//     }
//
//   }
//
//
// }