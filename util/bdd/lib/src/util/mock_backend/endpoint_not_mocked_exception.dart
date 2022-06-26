class EndpointNotMockedException implements Exception {
  const EndpointNotMockedException(this.path);

  final path;

  @override
  String toString() => "Request not mocked: $path";
}
