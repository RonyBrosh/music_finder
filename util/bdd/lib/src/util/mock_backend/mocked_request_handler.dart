import 'package:bdd/src/util/mock_backend/mocked_error_response.dart';
import 'package:core/core.dart';

class MockedRequestHandler {
  const MockedRequestHandler({
    required this.path,
    required this.result,
  });

  final String path;
  final ResultState<String> result;

  static ResultState<String> returnSuccess({required String data}) {
    return ResultState.success(data);
  }

  static ResultState<String> returnError({
    required int errorCode,
    String body = '{}',
    String? message,
  }) {
    return ResultState.failure(MockedErrorResponse(
      errorCode: errorCode,
      body: body,
      message: message,
    ));
  }
}
