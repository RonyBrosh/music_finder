import 'package:core/core.dart';
import 'package:discover/src/data/api/ticket_master/interceptor/ticket_master_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

const ticketMasterDioTIParameterName = 'ticketMasterDioTIParameterName';
const deezerDioTIParameterName = 'deezerDioTIParameterName';
const nextGigDioTIParameterName = 'nextGigDioTIParameterName';

@module
abstract class TicketMasterModule {
  @lazySingleton
  @Named(ticketMasterDioTIParameterName)
  Dio get provideTicketMasterDio {
    final dio = Dio(BaseOptions(baseUrl: 'https://app.ticketmaster.com'));
    dio.interceptors.add(TicketMasterInterceptor());
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.httpClientAdapter = getDioHttpAdapter();
    return dio;
  }

  @lazySingleton
  @Named(deezerDioTIParameterName)
  Dio get provideDeezerDio {
    final dio = Dio(BaseOptions(baseUrl: 'https://api.deezer.com'));
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.httpClientAdapter = getDioHttpAdapter();
    return dio;
  }

  @lazySingleton
  @Named(nextGigDioTIParameterName)
  Dio get provideNextGigDio {
    final dio = Dio(BaseOptions(baseUrl: 'https://us-central1-nextgigapi-1bec3.cloudfunctions.net'));
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.httpClientAdapter = getDioHttpAdapter();
    return dio;
  }
}
