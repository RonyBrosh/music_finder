import 'package:discover/src/presentation/genre_picker/widget/genre_picker_page.dart';
import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';

Feature: Genre picker

  Scenario: Fetch genres fails
    Given the page is shown and fetch genres endpoint fails
    Then i see alert {'Failed to load genres...', 'Swipe down to refresh the page', 'OK', null}

  Scenario: Fetch genres succeeds
    Given the page is shown and fetch genres endpoint succeeds
    Then i see genre items

  Scenario: Genre item tapped
    Given the page is shown and fetch genres endpoint succeeds
    When i tap text {'Alternative'}
    And i wait
    Then i don't see widget {GenrePickerPage}
    And i see widget {EventPickerPage}