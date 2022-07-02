import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class TicketMasterInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['apikey'] = 'XHbCIy9TEnel0iAvBEC0CLLxZG96YxJB';
    return super.onRequest(options, handler);
  }
}
