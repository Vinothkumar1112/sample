
Feature: Provider Portal: View Information - Admin views subspecialty names created
  As an admin, I should be able to view the list of all Subspecialty names created 

  @BDDTEST-EPP-1962
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-395- Verify if admin able to view the list of all Subspecialty names created
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And User should be able to view the list of all subspeciality names
    
       Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    

  @BDDTEST-EPP-1963
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-395- Verify whether admin can able to sort the list by subspecialty name
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And Admin should be able to sort the subspeciality
     
     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|   
 

  @BDDTEST-EPP-1964
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-395- Verify whether admin can able to sort the list by last modified based on US timezone
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And Admin should be able to sort the subspeciality
     
     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|  

  @BDDTEST-EPP-1965
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-395- Verify whether admin can able to sort the list by status
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And Admin should be able to sort the subspeciality
     
     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  
  @BDDTEST-EPP-1969
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-395- Verify whether admin can activate a Subspecialty name, which is in ‘inactive’ status
    
    
    
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user selects Subspeciality Name which is in Inactive status
    And user clicks on Activate button
    And user clicks on Confirm Activate?
    Then user gets sucess message Activated
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    
  
