import 'package:discover/src/presentation/event_picker/widget/event_picker_page.dart';
import 'scenario/fetch_events_scenario.dart';

Feature: Event picker

  Scenario: Fetch events fails
    Given the flow is running and BE is mocked with scenario {fetchEventsFailsScenario}
    Then i see alert {'Failed to load events...', 'Refresh the page or pick a different genre', 'OK', null}

  Scenario: Fetch events succeeds
    Given the flow is running and BE is mocked with scenario {fetchEventsSucceedsScenario}
    Then i see events items

  Scenario: No events
    Given the flow is running and BE is mocked with scenario {fetchEventsEmptyScenario}
    Then i see text {'No results...'}

  Scenario: Tap on web link
    Given the flow is running and BE is mocked with scenario {fetchEventsOneEventScenario}
    When i tap text {"See it on vendor's website"}
    Then link is opened