import 'package:dio/dio.dart';

class ApiBase {

  static final Dio _dio = Dio();
  static const String _baseUrl = 'https://innoqueue.herokuapp.com';

  static String getToken() {
    return "11111"; // not implemented on backend yet
  }

}

class ApiBaseService {

  static void authenticate() {

  }

}
