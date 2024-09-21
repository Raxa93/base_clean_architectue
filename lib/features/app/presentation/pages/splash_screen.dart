


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:gotham_coder_work/core/app_colors/app_colors.dart';
import 'package:gotham_coder_work/core/app_styles/app_styles.dart';
import 'package:gotham_coder_work/core/di/dependency_injection.dart';
import 'package:gotham_coder_work/core/routes/app_screen.dart';
import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      afterSplash();
    },);
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Text('Welcome',style: AppStyles.titleLarge),
      ),


    );
  }

  void afterSplash() async {
    var appPref = locator<AppPreferences>();
    bool loginStatus = appPref.getLoginStatus();
  await Future.delayed(const Duration(seconds: 2));

    if(loginStatus){
      //Navigate to home screen
      context.pushReplacement('/${AppScreen.eventScreen}');
    }else{
      context.pushReplacement('/${AppScreen.loginScreen}');
      //navigate to login screen
    }




  }
}
