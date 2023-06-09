
Feature: As a Referring provider/ ECP Provider/ Admin, I should be able to provide my username and password; and login to the provider portal

   @BDDTEST-EPP-546
  @Authentication
  @Patient_Portal
  @Regression
  @Automation
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-200 -Verify if ECP Provider able to login to the provider portal after entering the valid username and valid password
  
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
		Examples:
		|emailorusername|password|
		|user1@photon.com|password1@photon|

  
  @BDDTEST-EPP-547
  @Authentication
  @Patient_Portal
  @Regression
  @Automation
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-200- Verify if Referring provider able to login to the provider portal after entering the valid username and valid password

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
		Examples:
		|emailorusername|password|
		|user1@photon.com|password1@photon|
  
  @BDDTEST-EPP-548
  @Authentication
  @Patient_Portal
  @Regression
  @Automation
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-200- Verify if admin able to login to the provider portal after entering the valid username and valid password

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
		Examples:
		|emailorusername|password|
		|user1@photon.com|password1@photon|
  
    