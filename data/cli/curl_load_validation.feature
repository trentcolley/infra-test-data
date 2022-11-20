 @cli_scenario
Feature: Curl URL Load Validations

  @cli
  Scenario Outline: Curl Load Validation
    Validates that DNS names resolve
    Given I Run Curl To Load <site> At The Command Line
    When I Extract The Response Header
    Then The Response Header Should Contain <response>

    Examples: Google
      google.com
      | site | response |
      | google.com | 200 |

    Examples: Google Maps
      maps.google.com
      | site | response |
      | maps.google.com | 200 |

    Examples: Stack Overflow
      stackoverflow.com
      | site | response |
      | stackoverflow.com | 200 |