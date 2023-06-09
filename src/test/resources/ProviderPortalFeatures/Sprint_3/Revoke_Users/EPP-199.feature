
Feature: Provider Portal: Revoke user - Activate a Referring provider
  As an admin, I should be able to activate the provider portal access for a referring provider

 

  @BDDTEST-EPP-2140
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-199 - Verify whether  admin can activate the referring provider upon clicking the activate option
        
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button Inactive in Account Status
    Then user can see the all the referring providers in Inactive status
    When user clicks Activate button to activate a selected referring provider
    Then user sees Comfirm Activate? and Cancel in a popup message   
    When user clicks Confirm Activate? option on popup message
    And user sees a success message Username Activated Successfully
    Then user sees the updated status of the referring providers account as Active 
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    
   @BDDTEST-EPP-2143
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
     Scenario Outline:EPIC_EPP-79_STORY_EPP-199 - Verify whether the account status remains inactive when admin deny the confirmation message
     
     
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive
    When user clicks radio button Inactive in Account Status
    Then user can see the all the referring providers in Inactive status
    When user clicks Activate button to activate a selected referring provider
    Then user sees Comfirm Activate? and Cancel in a popup message  
    When user clicks Cancel option on activate popup message
    Then user aborted the activate process and respective referring provider should not get activate 
      
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  