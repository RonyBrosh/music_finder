import 'package:core/core.dart';
import 'package:discover/src/data/api/ticket_master/interceptor/ticket_master_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

const ticketMasterDioTIParameterName = 'ticketMasterDioTIParameterName';

@module
abstract class TicketMasterModule {
  @lazySingleton
  @Named(ticketMasterDioTIParameterName)
  Dio get provideDio {
    final dio = Dio(BaseOptions(baseUrl: 'https://app.ticketmaster.com'));
    dio.interceptors.add(LogInterceptor(requestBody: true, responseBody: true));
    dio.interceptors.add(TicketMasterInterceptor());
    dio.httpClientAdapter = getDioHttpAdapter();
    return dio;
  }
}
