import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio get provideDio {
    final dio = Dio(BaseOptions(baseUrl: 'https://api.deezer.com'));
    return dio;
  }
}
