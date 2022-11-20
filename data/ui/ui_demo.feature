@ui_scenario
Feature: UI test of public webpage Advantage Online Shopping

  @ui
  Scenario: A user can open the create account page
    Given I Navigate To http://www.advantageonlineshopping.com/
    When I click an element located by css a#menuUserLink
    And I wait until element located by css div.loader is visible
    And I wait for the element located by css div.login to complete movement
    Then element located by xpath //a[text()='CREATE NEW ACCOUNT'] is visible within 3000 millisecond timeout

  @ui
  Scenario: Field validation errors display on registration screen
    Given I Navigate To http://www.advantageonlineshopping.com/
    When I click an element located by css a#menuUserLink
    And I wait until element located by css div.loader is visible
    And I wait for the element located by css div.login to complete movement
    And I wait until element located by css div.loader is not visible
    And I click an element located by xpath //a[text()='CREATE NEW ACCOUNT']
    And I wait for the element located by css div.login to complete movement
    And I click an element located by css input[name='usernameRegisterPage']
    And I click an element located by css input[name='emailRegisterPage']
    Then element located by xpath //input[@name='usernameRegisterPage']/following-sibling::label contains text Username field is required

  @ui
  Scenario: Password field validation errors display as expected
    Given I Navigate To http://www.advantageonlineshopping.com/
    When I click an element located by css a#menuUserLink
    And I wait until element located by css div.loader is visible
    And I wait for the element located by css div.login to complete movement
    And I wait until element located by css div.loader is not visible
    And I click an element located by xpath //a[text()='CREATE NEW ACCOUNT']
    And I wait for the element located by css div.login to complete movement
    And I type D into the element located by css input[name='passwordRegisterPage']
    And I type G into the element located by css input[name='confirm_passwordRegisterPage']
    And I click an element located by css input[name='usernameRegisterPage']
    Then element located by xpath //input[@name='passwordRegisterPage']/following-sibling::label contains text 4 character or longer
    And element located by xpath //input[@name='confirm_passwordRegisterPage']/following-sibling::label text equals Passwords do not match