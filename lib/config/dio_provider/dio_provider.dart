import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:inglab/lib.dart';

class DioProvider {
  static DioProvider? _instance;

  final dio = Dio();

  DioProvider._internal() {
    dio.options.baseUrl = baseUrl;

    dio.options.headers = {
      "Accept": "application/json",
      "Content-Type": "application/x-www-form-urlencoded",
    };
    
    dio.interceptors.add(PrettyDioLogger(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
      responseHeader: false,
      compact: false,
    ));
  }

  static DioProvider getInstance() {
    _instance ??= DioProvider._internal();
    return _instance!;
  }
}
