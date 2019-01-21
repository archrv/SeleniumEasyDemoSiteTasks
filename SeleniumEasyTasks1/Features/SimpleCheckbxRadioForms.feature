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
@simpleCheckboxRadiobuttonformsfeatures
Feature: Simple form, checkbox and radio buttons functionalities in SeleniumEasyDemo site

  @singleInputFieldSimpleForm
  Scenario: To test Single input field in Simple Form page in Input Forms
    Given User navigates to Simple Form Demo page
    When User types a message in Enter Message field
    And clicks on Show Message button
    Then the entered message will be displayed under Your Message section

  @twoInputFieldsSimpleForm
  Scenario: To test Two input fields in Simple Form page in Input Forms
    Given User navigates to Simple Form Demo page
    When User enter values Enter a and Enter b fields
    And clicks on Get Total button
    Then the sum of entered values will be displayed

    @singleCheckboxDemo
  Scenario: To test single checkbox click in Checkbox Demo page in Input Forms
    Given User navigates to Checkbox Demo page
    When User clicks on the single checkbox
    Then success message will be displayed
    
    @multipleCheckboxDemo
  Scenario: To test CheckAll button in Checkbox Demo page in Input Forms
    Given User navigates to Checkbox Demo page
    When User clicks on Check All button
    Then button text will change to Uncheck All
    
    @singleRadioButtonDemo
  Scenario: To test single Radio button click in Radio button Demo page in Input Forms
    Given User navigates to Radio button Demo page
    When User clicks on a radio button in Radio button Demo section
    And clicks on Get Checked Value button
    Then a message confirming which value was clicked will be displayed
    
    
    @groupRadioButtonsDemo
  Scenario: To test Group Radio buttons click in Radio button Demo page in Input Forms
    Given User navigates to Radio button Demo page
    When User clicks on a radio button of each  Group Sex and Age Group
    And clicks on Get Values button
    Then messages confirming which group values were clicked will be displayed