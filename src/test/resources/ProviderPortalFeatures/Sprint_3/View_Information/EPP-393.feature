 
 Feature: Provider Portal: View Information - Admin deactivates a category name
  As an admin, I should be able to deactivate an information category name 

  @BDDTEST-EPP-1996
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393-Verify whether the Admin can login to the system and visit the Category Master View Screen
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

  @BDDTEST-EPP-1997
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393-Verify whether the Admin is able to View the list of Category Names in the Category Master View screen.
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

  @BDDTEST-EPP-1998
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the Admin is able to select the particular category and click on 'Deactivate'
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user selects Category Name which is in Active status
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1999
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the Deactivate confirmation message Confirm Deactivate? is displaying when the Admin select any of the Active Category name to Deactivate
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2000
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the Confirmation message for deactivating the Category name is displaying with 2 options like Confirm deactivate? and Cancel
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    Then user can see Confirm deactivate? and Cancel buttons
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2001
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the Active Category name is getting Deactivated after the admin select the "+Confirm deactivate?" option from the confirmation
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    Then user clicks on Confirm Deactivate?
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2002
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the Active Category name is not getting Deactivated after the admin selects the Cancel option from the confirmation.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    Then user can see Confirm deactivate? and Cancel buttons
    When user clicks on Deactive Cancel button
    Then Inactive category name should not deactivated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2003
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the success message Category name Deactivated is displaying after deactivating the Category name
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2004
  @Automation
  @Regresion
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-393 Verify whether the status 'Deactive' is getting displayed after deactivating the Category name.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    And  user sees the updated status of the Category Name as Inactive 
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|


