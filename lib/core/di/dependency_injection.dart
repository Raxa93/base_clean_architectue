



import 'package:get_it/get_it.dart';
import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_preferences.dart';
import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_preferences_impl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/auth_injector.dart';
import '../../features/events_data/events_injector.dart';

GetIt locator = GetIt.instance;


Future setUpLocator() async {

  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  locator.registerLazySingleton<AppPreferences>(() => AppPreferencesImpl(sharedPreferences));
  authInjector();
  eventsInjector();


}