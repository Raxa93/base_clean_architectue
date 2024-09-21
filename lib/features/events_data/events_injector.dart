


import 'package:gotham_coder_work/core/di/dependency_injection.dart';
import 'package:gotham_coder_work/features/events_data/data/data_sources/event_remote_data_source.dart';
import 'package:gotham_coder_work/features/events_data/domain/repositories/events_repo.dart';
import 'package:gotham_coder_work/features/events_data/domain/use_cases/get_events_usecase.dart';
import 'package:gotham_coder_work/features/events_data/presentation/cubit/events_cubit.dart';

import 'data/data_sources/event_remote_data_source_impl.dart';
import 'data/repositories/events_repo_impl.dart';

void eventsInjector(){


  // add home datasource
  locator.registerLazySingleton<EventRemoteDataSource>(() => EventRemoteDataSourceImpl());


  // add home repo
  locator.registerLazySingleton<EventsRepo>(() => EventsRepoImpl(
      eventRemoteDataSource: locator()
  ));

  // add usecases
  locator.registerLazySingleton(() => GetEventsUsecase(eventsRepo: locator()));
  // locator.registerLazySingleton(() => VerifyOtpUseCase(authRepository: locator()));

  // add home bloc
  locator.registerLazySingleton(() => EventsCubit(getEventsUsecase: locator()));
}