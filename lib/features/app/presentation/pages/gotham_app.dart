


import 'dart:developer';

import 'package:amplify_flutter/amplify_flutter.dart';
import 'package:amplify_storage_s3/amplify_storage_s3.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotham_coder_work/features/events_data/presentation/cubit/events_cubit.dart';

import '../../../../core/di/dependency_injection.dart';
import '../../../../core/routes/app_routes.dart';
import '../../../auth/presentation/cubit/auth_cubit.dart';

class GothamApp extends StatefulWidget {

  const GothamApp({super.key});

  @override
  GothamAppState createState() => GothamAppState();
}

class GothamAppState extends State<GothamApp> {
  @override
  void initState() {
    _configureAmplify();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    // _appLinksDeepLink.initDeepLinks();
    final textTheme = Theme.of(context).textTheme;
    return materialRouterWidget(textTheme);
  }

  Widget materialRouterWidget(TextTheme textTheme) {
    return MultiBlocProvider(
      providers: [


        BlocProvider(
          create: (context) => locator<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => locator<EventsCubit>(),
        ),

      ],
      child:
         MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaler:const TextScaler.linear(0.82)),
    child: MaterialApp.router(
    debugShowCheckedModeBanner: false,
    routerDelegate: AppRoutes.router.routerDelegate,
    routeInformationParser: AppRoutes.router.routeInformationParser,
    routeInformationProvider:
    AppRoutes.router.routeInformationProvider,
    localeResolutionCallback: (locale, supportedLocales) {
    for (var supportedLocale in supportedLocales) {
    if (supportedLocale.languageCode == locale!.languageCode &&
    supportedLocale.countryCode == locale.countryCode) {
    return supportedLocale;
    }
    }
    return supportedLocales.first;
    },

    ),
    )
    );
  }

  void _configureAmplify() {
    if(Amplify.isConfigured == false){
      log('Amplify was not configure');

      Amplify.addPlugins([AmplifyStorageS3()]);

      try{
        //I dont have configurration file so i am commenting this code out
        // await Amplify.configure(amplifyConfig);
      }catch(e){
        log('Something went wrong $e');
      }

    }
  }


  uploadFileToBucket() async{
    try {
      final result = Amplify.Storage.uploadFile(localFile: AWSFile.fromPath('path'), path: const StoragePath.fromString('/public/file.txt'));
    }catch(e){
      log(e.toString());
    }
  }

  downloadFileFromBucket() async {

    final directory = await Amplify.Storage.downloadFile(path: StoragePath.fromString('/public/file.txt'), localFile: AWSFile.fromPath('path'));

  }


}
