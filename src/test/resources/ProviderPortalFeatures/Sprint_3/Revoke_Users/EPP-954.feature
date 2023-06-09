
Feature: Provider Portal: Revoke user - Deactivate a Referring provider
  As an admin, I should be able to deactivate the portal access for a referring provider

  @BDDTEST-EPP-2021
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-954 - Verify whether admin can deactivate the referring provider upon clicking the deactivate option
   

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button Active in Account Status
    Then user can see the all the referring providers in Active status
    When user clicks Deativate button to dectivate a selected referring provider
    Then user sees Comfirm Deactivate? and Cancel in a popup message   
    When user clicks Confirm Deactivate? option on popup message
    And user sees a success message Username Deactivated Successfully
    Then user sees the updated status of the referring providers account as Inactive 
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2023
  @Automation
  @Regression
  @Provider_Portal
  @Reffering_Provider_Portal
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-954- Verify whether the account status remains active when admin deny the confirmation message
   

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button Active in Account Status
    Then user can see the all the referring providers in Active status
    When user clicks Deativate button to dectivate a selected referring provider
    Then user sees Comfirm Deactivate? and Cancel in a popup message   
    When user clicks Cancel option on popup message
    Then user aborted the deactivate process and respective referring provider should not get Deactivate 
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

 

