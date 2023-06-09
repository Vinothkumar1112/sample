
Feature: Provider Portal: View Information - View URL webpage
  As an internal provider / internal staff, I should be able to access the URL in the information and view the corresponding webpage 

 
  @BDDTEST-EPP-4314
  @Authentication
  @Automation
  @Regression
  @Pr4
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1723 - Verify that an internal staff should be able to access the URL in the information
    
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user clicks on View Links on particular Title or Category
   	And user clicks on the URL provided in the overlay
    Then user navigated to the webpage in the separate tab 

    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    


  @BDDTEST-EPP-4330
  @Authentication
  @Automation
  @Regression
  @Pr4
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1723-Verify that an internal provider should be able to access the URL in the information
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user clicks on View Links on particular Title or Category
   	And user clicks on the URL provided in the overlay
    Then user navigated to the webpage in the separate tab 

    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
