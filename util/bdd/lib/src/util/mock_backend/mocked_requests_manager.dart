import 'package:bdd/bdd.dart';
import 'package:dio/dio.dart';
import 'package:collection/collection.dart';

class MockedRequestsManager {
  MockedRequestsManager();

  Scenario? _currentScenario;

  void setScenario(Scenario scenario) {
    _currentScenario = scenario;
  }

  MockedRequestHandler? getRequestHandler(RequestOptions requestOptions) {
    final queryParameters = requestOptions.uri.queryParameters.entries
        .map((entry) => '${entry.key}=${entry.value}')
        .toList(growable: false)
        .join('&');

    return _currentScenario?.handlers.firstWhereOrNull(
      (handler) => handler.path == '${requestOptions.uri.path}?$queryParameters',
    );
  }
}
