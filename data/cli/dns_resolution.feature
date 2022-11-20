 @cli_scenario
Feature: DNS names resolve as expected

  @cli
  Scenario Outline: DNS Resolution
    Validates that DNS names resolve
    Given I Run A DNS Resolution Check For <dns> At The Command Line
    Then I Should Find Name: In The CLI Output
    And I Should Find Address: In The CLI Output
    And I Should Not Find UnKnown can't find In The CLI Output
    And I Should Not Find Non-existent domain In The CLI Output

    Examples: Google
      google.com
      | dns |
      | google.com |

    Examples: Yahoo
      yahoo.com
      | dns |
      | yahoo.com |

    Examples: Bing
      bing.com
      | dns |
      | bing.com |

    Examples: Agriculture External
      www.agriculture.gov.au
      | dns |
      | www.agriculture.gov.au |