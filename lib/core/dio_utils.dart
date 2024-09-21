

import 'dart:convert';

import 'package:dio/dio.dart';

class Utils {
  static Dio getDio() {
    // log('injected ${appPref.geToken()}',name: "token check");
    // log('locator  ${locator<AppPreference>().geToken()}',name:"token check");
    Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 30);
    dio.options.receiveTimeout = const Duration(seconds: 30);

    dio.options.headers["token"] = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyaWQiOjksImlhdCI6MTcyNjkzNTQ2MiwiZXhwIjoxNzU4NDkzMDYyfQ.ZPgkg0K2z5Z8YJcHibAixCNfWlmq8tO3qFHggAUVLkk";
    dio.options.headers["Authorization"] = basicAuthHeader('admin', 'eventino@0417');
    dio.options.headers["Content-Type"] = "application/json";

    // dio.interceptors.add(LogInterceptor());
    return dio;
  }

  static String basicAuthHeader(String username, String password) {
    final credentials = '$username:$password';
    final utf8Credentials = utf8.encode(credentials);
    final base64Credentials = base64Encode(utf8Credentials);
    return 'Basic $base64Credentials';
  }

}
