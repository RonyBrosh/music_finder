import 'package:bdd/src/util/mock_backend/mocked_request_handler.dart';

class Scenario {
  const Scenario({required this.handlers});

  final List<MockedRequestHandler> handlers;
}
