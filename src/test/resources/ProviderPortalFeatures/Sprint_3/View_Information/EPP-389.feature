
Feature: Provider Portal: View Information - Admin views category name created
  As an admin, I should be able to view the list of all category names created for categorize the information upload and publishing

  @BDDTEST-EPP-1915
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-389 - Verify that Admin should be able to view the list of all category names created for categorize the information upload and publishing
		
		Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And User should be able to view the list of all category names

   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
   

  @BDDTEST-EPP-1916
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-389 - Verify that Admin should be able to sort the category list by category name, last modified date and status
		Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And Admin should be able to sort the category

     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
   

  