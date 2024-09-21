import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gotham_coder_work/features/auth/data/data_sources/remote/auth_remote_data_source.dart';

import '../../../../../core/exceptions/firebase_exceptions.dart';

class AuthRemoteDataSourceImpl extends AuthRemoteDataSource {
  @override
  Future<Either<String, GoogleSignInAccount>> singInWithGoogle() async {
    GoogleSignIn _googleSignIn = GoogleSignIn();

    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return const Left(("Something went wrong"));
      }
      return Right(googleUser);
    } on FirebaseAuthException catch (e) {
      String errorMessage = handleFirebaseExceptions(e);

      return Left(errorMessage);
    } catch (e) {
      log('Error is $e');
      return Left(e.toString());
    }
  }
}
