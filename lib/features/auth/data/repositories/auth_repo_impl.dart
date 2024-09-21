import 'package:dartz/dartz.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:gotham_coder_work/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:gotham_coder_work/features/auth/domain/repositories/auth_repo.dart';

class AuthRepoImpl extends AuthRepo {
  final AuthRemoteDataSource authRepo;

  AuthRepoImpl({required this.authRepo});

  @override
  Future<Either<String, GoogleSignInAccount>> singInWithGoogle() async {
    try {
      var value = await authRepo.singInWithGoogle();
      return value;
    } catch (e) {
      return Left(e.toString());
    }
  }
}
