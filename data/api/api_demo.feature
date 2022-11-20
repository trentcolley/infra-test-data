@api_scenario
Feature: Demo of a potential api data framework separation

  @non_ui @api
  Scenario: A user with a valid API key can perform a postcode search
    Given I Open A Session To https://digitalapi.auspost.com.au
    And I Create A Request Header
    And I Add Key Auth-Key With Value 0810a648-972d-49fc-afdf-03fc07a12bfc To The Request Header
    And I Create A Request Parameter
    And I Add Key q With Value Calwell To The Request Parameter
    When I Send A GET Request To /postcode/search.json
    Then The http response code of the request is 200
    And The Json Response Contains The Value 2905 For Key localities/locality/postcode at index 0

  @non_ui @api
  Scenario: A user with a valid API key can perform a country search
    Given I Open A Session To https://digitalapi.auspost.com.au
    And I Create A Request Header
    And I Add Key Auth-Key With Value 0810a648-972d-49fc-afdf-03fc07a12bfc To The Request Header
    When I Send A GET Request To /postage/country.json
	  And I Save The Array Index Of the Value BELGIUM For Key countries/country/name
    Then The http response code of the request is 200
    And The Json Response Contains The Value BE For Key countries/country/code at the saved index