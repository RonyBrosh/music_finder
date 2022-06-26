import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> resetTest(WidgetTester tester) async {
  await diContainer.reset();
}
