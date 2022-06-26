// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/reset_test.dart';
import './step/the_page_is_shown_and_fetch_genres_endpoint_fails.dart';
import 'package:bdd/src/steps/i_see_alert.dart';
import './step/the_page_is_shown_and_fetch_genres_endpoint_succeeds.dart';
import './step/i_see_genre_items.dart';

void main() {
  Future<void> bddTearDown(WidgetTester tester) async {
    await resetTest(tester);
  }
  group('''Genre picker''', () {
    testWidgets('''Fetch genres fails''', (tester) async {
      try {
        await thePageIsShownAndFetchGenresEndpointFails(tester);
        await iSeeAlert(tester, 'Failed to load genres...', 'Swipe down to refresh the page', 'OK', null);
      } finally {
        await bddTearDown(tester);
      }
    });
    testWidgets('''Fetch genres succeeds''', (tester) async {
      try {
        await thePageIsShownAndFetchGenresEndpointSucceeds(tester);
        await iSeeGenreItems(tester);
      } finally {
        await bddTearDown(tester);
      }
    });
  });
}
