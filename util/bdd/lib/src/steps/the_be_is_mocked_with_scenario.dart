import 'package:bdd/src/util/mock_backend/mocked_requests_manager.dart';
import 'package:bdd/src/util/mock_backend/scenario.dart';
import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

/// Example: Given the BE is mocked with {default} scenario
Future<void> theBeIsMockedWithScenario(
  WidgetTester tester,
  Scenario scenario,
) async {
  diContainer<MockedRequestsManager>().setScenario(scenario);
}
