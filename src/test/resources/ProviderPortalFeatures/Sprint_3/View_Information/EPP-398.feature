
Feature: Provider Portal: View Information - Admin activates a subspecialty name
  As an admin, I should be able to activate a Subspecialty name which is in ‘Inactive’ status

  @BDDTEST-EPP-2131
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the Admin can login to the system and visit the Subspecialty Master View Screen
    
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
    
   
  @BDDTEST-EPP-2133
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the Admin is able to View the list of Subspecialty Names in Subspecialty Master View screen.
    
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
    
    
  @BDDTEST-EPP-2135
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the Admin is able to select the particular Subspecialty and click on 'Activate'
   
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
   
   
  @BDDTEST-EPP-2138
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the Activate confirmation message "+ Confirm Activate?" is displaying when Admin select any of the In-active Subspecialty name to Activate.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
   Then user sees Confirm Activate? popup
 

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2141
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the Confirmation message for activating the Subspecialty name is displaying with 2 options like "+Confirm activate?" and  "Cancel".
   
       Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
   Then user can see Confirm activate? and Cancel buttons

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
   
  @BDDTEST-EPP-2144
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the In-Active Subspecialty name is getting Activated after admin select the "+Confirm Active?" option from the confirmation.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    
        Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2146
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the In-Active Subspecialty name is not getting Activated after admin select the 'Cancel' option from the confirmation.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
    When user clicks on Cancel button
    Then Inactive category name should not activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    

  @BDDTEST-EPP-2148
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the success message Subspecialty name Activated is displaying after activating the Subspecialty name
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2150
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-398-Verify whether the status 'Active' is getting displayed after activating the Subspecialty name
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspecialities Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
     And  user sees the updated status of the Subspeciality Name as Active 

    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
  