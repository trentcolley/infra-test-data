 @cli_scenario
Feature: SOA domain names resolve as expected

  @cli
  Scenario Outline: SOA Resolution
    Validates that DNS names resolve
    Given I Run A SOA Lookup For <soadomain> At <ip> At The Command Line
    Then I Should Find Address: In The CLI Output
    And I Should Find <ip> In The CLI Output
    And I Should Find mail addr = <mailaddr> In The CLI Output
    And I Should Find <soadomain> In The CLI Output

    Examples: Google Mail
      gmail.google.com
      | soadomain | ip | mailaddr |
      | gmail.google.com | 8.8.8.8 | dns-admin.google.com |
