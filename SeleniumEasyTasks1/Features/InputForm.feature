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
@inputFormSubmitfeature
Feature: Input form submit functionality in SeleniumEasyDemo site

  Scenario: To test Sending form details sucessfully
    Given User navigates to Input Form demo page
    When User enter details
    | fname 		| lname			| email							| phnum				| addres				| city			| state			| zip			| website							| descrptn			|
		| William		| Thomas		| willt@gmail.com		| 865001234		| Alabama	US		| Huntsville| Alabama		| 35649		| www.willt.com				| testing				|
			
    And clicks on Send button
    Then details are sent successfully and form fields get reset