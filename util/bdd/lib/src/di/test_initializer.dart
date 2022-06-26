import 'package:bdd/src/util/mock_backend/mocked_requests_manager.dart';
import 'package:bdd/src/util/mocked_backend_interceptor.dart';
import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';

class TestInitializer extends DIInitializer {
  TestInitializer() : super(_init);
}

void _init(GetIt getIt) {
  final mockRequestManager = MockedRequestsManager();
  getIt.registerSingleton<MockedRequestsManager>(mockRequestManager);

  final dio = getIt<Dio>();
  dio.interceptors.add(MockedBackEndInterceptor(mockRequestManager));
}
