import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:go_router/go_router.dart';
import 'package:gotham_coder_work/components/intimation_snack_bar.dart';
import 'package:gotham_coder_work/core/di/dependency_injection.dart';
import 'package:gotham_coder_work/core/routes/app_screen.dart';
import 'package:gotham_coder_work/core/use_cases/usecase.dart';
import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_preferences.dart';

import '../../domain/use_cases/login_usecase.dart';

part 'auth_state.dart';

part 'auth_cubit.freezed.dart';

class AuthCubit extends Cubit<AuthState> {
  final LoginUsecase loginUseCase;

  AuthCubit({required this.loginUseCase}) : super(const AuthState());

  loginWithGmail({required BuildContext context}) async {
    log('Auth with gmail');
    var appPref = locator<AppPreferences>();
    var result = await loginUseCase(NoParams());
    result.fold((left) {
      IntimationSnackBar.showIntimationSnackBar(context: context, msg: left, snackBarType: SnackBarType.error);
      appPref.setLoginStatus(status: true);
      context.pushReplacement('/${AppScreen.eventScreen}');
    }, (right) {
      IntimationSnackBar.showIntimationSnackBar(context: context, msg: 'You are logged in', snackBarType: SnackBarType.success);
      appPref.setLoginStatus(status: true);
      context.pushReplacement('/${AppScreen.eventScreen}');
    });

  }


   setCount(){
    emit(state.copyWith(count: state.count+1));
  }

}
