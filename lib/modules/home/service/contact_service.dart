import 'package:dio/dio.dart';
import 'package:inglab/lib.dart';

class ContactService {
  final dio = DioProvider.getInstance().dio;

  Future<Response> getContact() async {
    var response = await dio.get(apiContact);
    return response;
  }
}
