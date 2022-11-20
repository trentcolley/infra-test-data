 @cli_scenario
Feature: Canonical names resolve as expected

  @cli
  Scenario Outline: CName Resolution
    Checks that canonical names match expected
    Given I Run A CName Lookup For <hostname> At The Command Line
    Then I Should Find <hostname> In The CLI Output
    And I Should Find canonical name = <canonical> In The CLI Output

    Examples: Agriculture API
      api.agriculture.gov.au
      | hostname | canonical |
      | api.agriculture.gov.au | afd-awe-prpse-main-02.azurefd.net |

    Examples: Google Maps
      maps.google.com.au
      | hostname | canonical |
      | maps.google.com.au | maps.l.google.com |

