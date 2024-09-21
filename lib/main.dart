import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gotham_coder_work/core/di/dependency_injection.dart';
import 'package:gotham_coder_work/features/app/presentation/pages/gotham_app.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await setUpLocator();

  runApp(const GothamApp());
}




//I dont have aws account so i am writing basics steps here and writing code how to upload and retrive file from s3 bucket
// first of all we need to configure amplify it will ask default editor region etc they will provide us IAM user and access key and secret key.Align
//
// after getting key we will init amplify with command amplify init we will select project name,enviroment,apptype source directory etc,
//
//     after init we will configure amplify in flutter code, and then we will add services which we need like if we ned cognito service we will add cognito and amplify push
// same as we need bucket we will add bucket and amplify push

// i am writing code how to configure and push file?