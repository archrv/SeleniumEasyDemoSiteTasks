#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@dropdownfeature
Feature: Select dropdown functionality in SeleniumEasyDemo site
 
  @singleselectdropdown
  Scenario: To test single select dropdown list
    Given User navigates to Select Dropdown Demo page
    When User clicks and selects a day in Select List Demo section
    Then a message confirming Day Selected will be displayed

  @multiselectdropdown
  Scenario: To test First Select and Get All Selected buttons in multi select dropdown list
    Given User navigates to Select Dropdown Demo page
    When User presses Ctrl keyboard button and clicks on multiple options in the list
    And clicks on Get All Selected button
    Then a message confirming Options Selected will be displayed
    When clicks on First Selected button
    Then a message confirming First Selected option will be displayed
