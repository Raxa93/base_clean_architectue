


import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gotham_coder_work/core/use_cases/usecase.dart';

import '../repositories/auth_repo.dart';

class LoginUsecase extends Usecase<GoogleSignInAccount ,NoParams>{

  final AuthRepo authRepo;

  LoginUsecase({required this.authRepo});

  @override
  Future<Either<String,GoogleSignInAccount>> call(NoParams params) async {
    return await authRepo.singInWithGoogle();
  }



}