



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:gotham_coder_work/core/routes/app_screen.dart';
import 'package:gotham_coder_work/features/app/presentation/pages/splash_screen.dart';
import 'package:gotham_coder_work/features/auth/presentation/pages/login_screen.dart';
import 'package:gotham_coder_work/features/events_data/presentation/pages/event_screen.dart';

class AppRoutes{



  static GoRouter get router => _router;

 static final GoRouter _router = GoRouter(
      initialLocation: "/${AppScreen.splashScreen}",
      redirect: (context, state) {
        return null;
      },
     errorBuilder: (context, state) => const ErrorHandlerScreen(),
     debugLogDiagnostics: true,
      routes: <GoRoute>[
        GoRoute(
          name: AppScreen.splashScreen,
          path: "/${AppScreen.splashScreen}",
          builder: (context, state) {
            return const SplashScreen();
          },
        ),
        GoRoute(
          name: AppScreen.loginScreen,
          path: "/${AppScreen.loginScreen}",
          builder: (context, state) {
            return const LoginScreen();
          },
        ),
        GoRoute(
          name: AppScreen.eventScreen,
          path: "/${AppScreen.eventScreen}",
          builder: (context, state) {
            return const EventScreen();
          },
        ),
      ]);




}


class ErrorHandlerScreen extends StatefulWidget {
  const ErrorHandlerScreen({super.key});

  @override
  State<ErrorHandlerScreen> createState() => _ErrorHandlerScreenState();
}

class _ErrorHandlerScreenState extends State<ErrorHandlerScreen> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('OOopppss, you dont need to be here!'),
        ),
      ),
    );
  }
}
