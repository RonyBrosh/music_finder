import 'package:design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';

/// Example: Then i see alert {'Title', 'message', 'mainActionButtonText', null}
Future<void> iSeeAlert(
  WidgetTester tester,
  String title,
  String content,
  String mainActionButtonText,
  String? secondaryActionButtonText,
) async {
  expect(find.byType(PlatformDialog), findsOneWidget);
  expect(find.widgetWithText(PlatformDialog, title), findsOneWidget);
  expect(find.text(content), findsOneWidget);
  expect(find.text(mainActionButtonText), findsOneWidget);
  if (secondaryActionButtonText != null) {
    expect(find.text(secondaryActionButtonText), findsOneWidget);
  }
}
