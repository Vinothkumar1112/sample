
Feature: Provider Portal: View Information - Admin activates a category name
  As an admin, I should be able to activate an information category name 

  @BDDTEST-EPP-2235
  @Regression
  @Automation
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the Admin can login to the system and visit the Category Master View Screen
    
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

  @BDDTEST-EPP-2236
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the Admin is able to View the list of Category Names in Category Master View screen.
    
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

  @BDDTEST-EPP-2237
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the Admin is able to select the particular category and click on 'Activate'
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user selects Category Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
  @BDDTEST-EPP-2238
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the Activate confirmation message + Confirm Activate? is displaying when Admin select any of the In-active Category name to Activate
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2239
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the Confirmation message for activating the Category name is displaying with 2 options like "+Confirm activate?" and  "Cancel".
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    Then user can see Confirm activate? and Cancel buttons
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|


  @BDDTEST-EPP-2241
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the In-Active Category name is not getting Activated after admin select the 'Cancel' option from the confirmation.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    Then user can see Confirm activate? and Cancel buttons
    When user clicks on Cancel button
    Then Inactive category name should not activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    
  @BDDTEST-EPP-2242
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the success message Category name Activated is displaying after activating the Category name
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2243
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the status 'Active' is getting displayed after activating the Category name
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
    And  user sees the updated status of the Category Name as Active 
       Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|



  @BDDTEST-EPP-2240
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-392-Verify whether the In-Active Category name is getting Activated after admin select the "+Confirm Active?" option from the confirmation.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Activate button
    Then user clicks on Confirm Activate?
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    