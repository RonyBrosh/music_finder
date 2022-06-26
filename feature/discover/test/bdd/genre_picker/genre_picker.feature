Feature: Genre picker

  After:
  Then reset test

  Scenario: Fetch genres fails
    Given the page is shown and fetch genres endpoint fails
    Then i see alert {'Failed to load genres...', 'Swipe down to refresh the page', 'OK', null}

  Scenario: Fetch genres succeeds
    Given the page is shown and fetch genres endpoint succeeds
    Then i see genre items