// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';

import './step/the_page_is_shown_and_fetch_events_endpoint_fails.dart';
import 'package:bdd/src/steps/i_see_alert.dart';
import './step/the_page_is_shown_and_fetch_events_endpoint_succeeds.dart';
import './step/i_see_events_items.dart';
import './step/the_page_is_shown_and_fetch_events_return_empty_list.dart';
import 'package:bdd_widget_test/step/i_see_text.dart';

void main() {
  group('''Event picker''', () {
    testWidgets('''Fetch events fails''', (tester) async {
      await thePageIsShownAndFetchEventsEndpointFails(tester);
      await iSeeAlert(tester, 'Failed to load events...', 'Refresh the page or pick a different genre', 'OK', null);
    });
    testWidgets('''Fetch events succeeds''', (tester) async {
      await thePageIsShownAndFetchEventsEndpointSucceeds(tester);
      await iSeeEventsItems(tester);
    });
    testWidgets('''No events''', (tester) async {
      await thePageIsShownAndFetchEventsReturnEmptyList(tester);
      await iSeeText(tester, 'No results...');
    });
  });
}
