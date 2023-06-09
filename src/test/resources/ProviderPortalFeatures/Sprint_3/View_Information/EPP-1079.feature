
Feature: Provider Portal: View Information - Admin deactivates a subspecialty name 
  As an admin, I should be able to deactivate a Subspecialty name which is in ‘Active’ status

  @BDDTEST-EPP-1970
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Admin can login to the system and visit the Subspecialty Master View Screen
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1971
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Admin is able to View the list of Subspecialty Names in the Subspecialty Master View screen.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And User should be able to view the list of all subspecialities names
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1972
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Admin is able to select the particular Subspecialty and click on 'Deactivate'
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1973
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Deactivate confirmation message "+ Confirm Deactivate?" is displaying when the Admin select any of the Active Subspecialty name to Deactivate.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
   Then user sees Confirm Deactivate? popup
 

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1974
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Confirmation message for deactivating the Subspecialty name is displaying with 2 options like "+Confirm deactivate?" and  "Cancel".
  

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
   	Then user can see Confirm deactivate? and Cancel buttons

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1975
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Active Subspecialty name is getting Deactivated after the admin select the "+Confirm deactivate?" option from the confirmation
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
    Then user clicks on Confirm Deactivate?
    
     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1976
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the Active Subspecialty name is not getting Deactivated after the admin selects the 'Cancel' option from the confirmation.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
   	Then user can see Confirm deactivate? and Cancel buttons
    When user clicks on Deactive Cancel button
    Then Inactive category name should not deactivated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1977
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the success message is displaying after Deactivating the Subspecialty name.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
   	And user selects Subspeciality Name which is in Active status
    And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    
 

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-1978
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-1079-Verify whether the status 'In-Active' is getting displayed after deactivating the Subspecialty name
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Active status
 		And user clicks on Deactivate button
    And user clicks on Confirm Deactivate?
    Then user gets sucess message Deactivated
    And  user sees the updated status of the Category Name as Inactive 

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

 