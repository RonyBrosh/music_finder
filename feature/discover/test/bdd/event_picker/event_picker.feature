import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';

Feature: Event picker

  Scenario: Fetch events fails
    Given the page is shown and fetch events endpoint fails
    Then i see alert {'Failed to load events...', 'Refresh the page or pick a different genre', 'OK', null}

  Scenario: Fetch events succeeds
    Given the page is shown and fetch events endpoint succeeds
    Then i see events items