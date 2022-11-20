 @cli_scenario
Feature: Certificates have valid expiry dates

  @cli
  Scenario Outline: Certificates Have Sufficient Expiries
    Checks that certificate dates have more than a minimum day expiry
    Given I Run A Certificate Check For <site> At The Command Line
    When I Extract The Not After Date For A Certificate
    Then The Not After Date Of The Certificate Is At Least <minimumdays> Days From Today

    Examples: Google Certificate
      google.com
      | site | minimumdays |
      | google.com | 31 |