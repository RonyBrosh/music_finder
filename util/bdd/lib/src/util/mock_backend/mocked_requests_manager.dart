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
    var queryParameters = '';
    requestOptions.queryParameters.forEach((key, value) {
      queryParameters += '$key=$value';
    });
    return _currentScenario?.handlers.firstWhereOrNull(
      (handler) => handler.path == '${requestOptions.path}?$queryParameters',
    );
  }
}
