



import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';

abstract class AuthRemoteDataSource{


  Future<Either<String,GoogleSignInAccount>> singInWithGoogle();




}