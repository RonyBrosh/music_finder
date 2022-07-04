import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

Future<void> linkIsOpened(WidgetTester tester) async {
  final url = 'https://www.ticketweb.uk/event/mods-mayday-round-chapel-tickets/11770435?REFERRAL_ID=tmfeed';
  final linkManager = diContainer<LinkManager>();
  verify(() => linkManager.openWebLink(url));
}
