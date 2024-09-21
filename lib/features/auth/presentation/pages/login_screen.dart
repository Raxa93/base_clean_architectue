import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotham_coder_work/components/action_button.dart';
import 'package:gotham_coder_work/core/app_styles/app_styles.dart';
import 'package:gotham_coder_work/core/extensions/app_extensions.dart';
import 'package:gotham_coder_work/features/auth/presentation/cubit/auth_cubit.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
        context.read<AuthCubit>().setCount();
      },),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, mainAxisAlignment: MainAxisAlignment.start, children: [
//           BlocSelector<AuthCubit, AuthState, int>(
//   selector: (state) => state.count,
//   builder: (context, state) {
//     return Text(state.toString());
//   },
// ),
          100.height,
          const Text('Welcome to Gotham Coder', style: AppStyles.headline),
          30.height,
          Image.asset('assets/login_logo.png',height: 200,width: 200,),
          100.height,
          ActionGradientButton(hasIcon: false, buttonHeight: 40.0, buttonWidth: 500.0 ,buttonText: 'Login', onTap: () {
            log('let me hit gmail');
            context.read<AuthCubit>().loginWithGmail(context: context);
          },roundedRadius: BorderRadius.circular(20.0),),
        ]),
      ),
    );
  }
}
