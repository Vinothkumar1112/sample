
Feature: Provider Portal: View Information - Download the file
  As an internal provider / internal staff, I should be able to download the file in the selected information 


  @BDDTEST-EPP-4315
  @Authentication
  @Pr4
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1764 - Verify an internal provider should be able to download the file in the selected information
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
		And user clicks on View Documents button under Document
		And uer clicks on document link in overlay
		Then user can view the document in another window in same format
		
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  
  @BDDTEST-EPP-4316
  @Authentication
  @Regression
  @Automation
  @Pr4
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1764 - Verify an internal staff should be able to download the file in the selected information
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
		And user clicks on View Documents button under Document
		And uer clicks on document link in overlay
		Then user can view the document in another window in same format
		
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
