





import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_perference_key.dart';
import 'package:gotham_coder_work/features/app/data/data_sources/local/shared_preferences/app_preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppPreferencesImpl extends AppPreferences{

  final SharedPreferences _preferences;
  AppPreferencesImpl(this._preferences);



  @override
  bool getLoginStatus() {
    return _preferences.getBool(AppPreferenceKey.preferenceVersion) ?? false;
  }

  @override
  void setLoginStatus({required bool status}) {
    _preferences.setBool(AppPreferenceKey.preferenceVersion, status);
  }

}