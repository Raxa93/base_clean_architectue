


import 'package:gotham_coder_work/core/di/dependency_injection.dart';
import 'package:gotham_coder_work/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:gotham_coder_work/features/auth/data/data_sources/remote/auth_remote_data_source_impl.dart';
import 'package:gotham_coder_work/features/auth/data/repositories/auth_repo_impl.dart';
import 'package:gotham_coder_work/features/auth/domain/repositories/auth_repo.dart';
import 'package:gotham_coder_work/features/auth/domain/use_cases/login_usecase.dart';
import 'package:gotham_coder_work/features/auth/presentation/cubit/auth_cubit.dart';

void authInjector(){


  // add home datasource
  locator.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());


  // add home repo
  locator.registerLazySingleton<AuthRepo>(() => AuthRepoImpl(
      authRepo: locator()
  ));

  // add usecases
  locator.registerLazySingleton(() => LoginUsecase(authRepo: locator()));
  // locator.registerLazySingleton(() => VerifyOtpUseCase(authRepository: locator()));

  // add home bloc
  locator.registerLazySingleton(() => AuthCubit(loginUseCase:  locator()));
}