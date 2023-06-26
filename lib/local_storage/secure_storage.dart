import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  static const String _token = '';

  static FlutterSecureStorage get secureStorage => const FlutterSecureStorage();

  /// TOKEN
  static Future<dynamic> getAccessToken() async => await secureStorage.read(key: _token);

  static Future setAccessToken({required String token}) async => secureStorage.write(key: _token, value: token);

  static Future deleteAccessToken() async => secureStorage.delete(key: _token);

  /// DELETE ALL
  static Future clearAll() async => secureStorage.deleteAll();
}
