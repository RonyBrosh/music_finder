// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:discover/src/presentation/genre_picker/widget/genre_picker_page.dart';
import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';

import './step/the_page_is_shown_and_fetch_genres_endpoint_fails.dart';
import 'package:bdd/src/steps/i_see_alert.dart';
import './step/the_page_is_shown_and_fetch_genres_endpoint_succeeds.dart';
import './step/i_see_genre_items.dart';
import 'package:bdd_widget_test/step/i_tap_text.dart';
import 'package:bdd_widget_test/step/i_wait.dart';
import 'package:bdd_widget_test/step/i_dont_see_widget.dart';
import 'package:bdd_widget_test/step/i_see_widget.dart';

void main() {
  group('''Genre picker''', () {
    testWidgets('''Fetch genres fails''', (tester) async {
      await thePageIsShownAndFetchGenresEndpointFails(tester);
      await iSeeAlert(tester, 'Failed to load genres...', 'Swipe down to refresh the page', 'OK', null);
    });
    testWidgets('''Fetch genres succeeds''', (tester) async {
      await thePageIsShownAndFetchGenresEndpointSucceeds(tester);
      await iSeeGenreItems(tester);
    });
    testWidgets('''Genre item tapped''', (tester) async {
      await thePageIsShownAndFetchGenresEndpointSucceeds(tester);
      await iTapText(tester, 'Alternative');
      await iWait(tester);
      await iDontSeeWidget(tester, GenrePickerPage);
      await iSeeWidget(tester, EventPickerPage);
    });
  });
}
