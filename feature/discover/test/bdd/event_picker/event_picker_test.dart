// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';
import 'scenario/fetch_events_scenario.dart';

import './step/the_flow_is_running_and_be_is_mocked_with_scenario.dart';
import 'package:bdd/src/steps/i_see_alert.dart';
import './step/i_see_events_items.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';
import 'package:bdd_widget_test/step/i_tap_text.dart';
import './step/link_is_opened.dart';

void main() {
  group('''Event picker''', () {
    testWidgets('''Fetch events fails''', (tester) async {
      await theFlowIsRunningAndBeIsMockedWithScenario(tester, fetchEventsFailsScenario);
      await iSeeAlert(tester, 'Failed to load events...', 'Refresh the page or pick a different genre', 'OK', null);
    });
    testWidgets('''Fetch events succeeds''', (tester) async {
      await theFlowIsRunningAndBeIsMockedWithScenario(tester, fetchEventsSucceedsScenario);
      await iSeeEventsItems(tester);
    });
    testWidgets('''No events''', (tester) async {
      await theFlowIsRunningAndBeIsMockedWithScenario(tester, fetchEventsEmptyScenario);
      await iSeeText(tester, 'No results...');
    });
    testWidgets('''Tap on web link''', (tester) async {
      await theFlowIsRunningAndBeIsMockedWithScenario(tester, fetchEventsOneEventScenario);
      await iTapText(tester, "See it on vendor's website");
      await linkIsOpened(tester);
    });
  });
}
