// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_import, directives_ordering

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import './step/the_page_is_shown_and_fetch_genres_endpoint_fails.dart';
import 'package:bdd/src/steps/i_see_alert.dart';

void main() {
  group('''Genre picker''', () {
    testWidgets('''Fetch genres fails''', (tester) async {
      await thePageIsShownAndFetchGenresEndpointFails(tester);
      await iSeeAlert(tester, 'Failed to load genres...', 'Swipe down to refresh the page', 'OK', null);
    });
  });
}
