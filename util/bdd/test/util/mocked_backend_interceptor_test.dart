import 'package:bdd/src/util/mock_backend/endpoint_not_mocked_exception.dart';
import 'package:bdd/src/util/mock_backend/mocked_error_response.dart';
import 'package:bdd/src/util/mock_backend/mocked_request_handler.dart';
import 'package:bdd/src/util/mock_backend/mocked_requests_manager.dart';
import 'package:bdd/src/util/mocked_backend_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockedRequestsManagerMock extends Mock implements MockedRequestsManager {}

class RequestInterceptorHandlerSpy extends RequestInterceptorHandler {
  DioError? dioError;
  Response? response;

  @override
  void reject(DioError error, [bool callFollowingErrorInterceptor = false]) {
    dioError = error;
  }

  @override
  void resolve(Response response, [bool callFollowingResponseInterceptor = false]) {
    this.response = response;
  }
}

void main() {
  late MockedRequestsManager _mockedRequestManager;
  late MockedBackEndInterceptor _sut;

  setUp(() {
    _mockedRequestManager = MockedRequestsManagerMock();
    _sut = MockedBackEndInterceptor(_mockedRequestManager);
  });

  test('onRequest SHOULD throw an exception WHEN endpoint not mocked', () {
    final requestOptions = RequestOptions(path: 'path');
    when(() => _mockedRequestManager.getRequestHandler(requestOptions)).thenReturn(null);

    expect(
      () => _sut.onRequest(requestOptions, RequestInterceptorHandlerSpy()),
      throwsA(isA<EndpointNotMockedException>()),
    );
  });

  test('onRequest SHOULD reject with an error response WHEN endpoint is mocked with error', () {
    final requestOptions = RequestOptions(path: 'path');
    final requestInterceptorHandler = RequestInterceptorHandlerSpy();
    final requestHandler = MockedRequestHandler(
      path: 'path',
      result: MockedRequestHandler.returnError(
        errorCode: 404,
        body: 'body',
        message: 'message',
      ),
    );
    final error = MockedErrorResponse(
      errorCode: 404,
      body: 'body',
      message: 'message',
    );
    when(() => _mockedRequestManager.getRequestHandler(requestOptions)).thenReturn(requestHandler);

    _sut.onRequest(requestOptions, requestInterceptorHandler);

    expect(requestInterceptorHandler.dioError?.requestOptions, requestOptions);
    expect(requestInterceptorHandler.dioError?.response?.requestOptions, requestOptions);
    expect(requestInterceptorHandler.dioError?.response?.statusCode, 404);
    expect(requestInterceptorHandler.dioError?.response?.data, 'body');
    expect(requestInterceptorHandler.dioError?.error, error);
  });

  test('onRequest SHOULD resolve with a success response WHEN endpoint is mocked with success', () {
    final requestOptions = RequestOptions(path: 'path');
    final requestInterceptorHandler = RequestInterceptorHandlerSpy();
    final requestHandler = MockedRequestHandler(
      path: 'path',
      result: MockedRequestHandler.returnSuccess(data: '{"data":1234}'),
    );
    when(() => _mockedRequestManager.getRequestHandler(requestOptions)).thenReturn(requestHandler);

    _sut.onRequest(requestOptions, requestInterceptorHandler);

    expect(requestInterceptorHandler.response?.requestOptions, requestOptions);
    expect(requestInterceptorHandler.response?.data, {"data": 1234});
  });
}
