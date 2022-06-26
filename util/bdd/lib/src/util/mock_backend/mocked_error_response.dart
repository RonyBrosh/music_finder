class MockedErrorResponse implements Exception {
  const MockedErrorResponse({
    required this.errorCode,
    required this.body,
    required this.message,
  });

  final int errorCode;
  final String body;
  final String? message;

  @override
  String toString() => 'MockedErrorResponse: errorCode = $errorCode, body = $body, message = $message';

  @override
  bool operator ==(other) {
    return other is MockedErrorResponse &&
        errorCode == other.errorCode &&
        body == other.body &&
        message == other.message;
  }

  @override
  int get hashCode => errorCode.hashCode ^ body.hashCode ^ message.hashCode;
}
