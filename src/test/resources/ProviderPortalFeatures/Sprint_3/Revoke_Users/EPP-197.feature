
Feature: Provider Portal: Revoke user - View Referring provider list with account status
  As an admin, I should be able to view the list of all Referring providers who registered with provider portal; along with their account status. - 

  @BDDTEST-EPP-2076
  @Automation
  @P1
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-197 - Verify whether admin can see details from list of referring provider
       
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive                                                                                             
    And user sees Activate or Deactivate button under Action category  
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2077
  @Automation
  @P1
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-197 -Verify whether admin can sort the referring provider in alphabetical order
   
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard 
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user clicks radio button All in Account Status
    When user clicks Account Status
    And user clicks Name
    Then user sees list sorted by Name in alphabetical order                                              
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    

  @BDDTEST-EPP-2078
  @Automation
  @P1
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-197 - Verify whether admin can sort the referring provider by account status
   

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard 
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user clicks radio button All in Account Status
    When user clicks Name
    And user clicks Account Status
    Then user sees list sorted by Account Status in alphabetical order                                              
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2079
  @Automation
  @P1
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-197 - Verify whether admin able to sort referring provider by last modified
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard 
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user clicks radio button All in Account Status
    When user clicks Name
    And user clicks Last Modified
    Then user sees list sorted by Last Modified in decending date order                                              
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
  