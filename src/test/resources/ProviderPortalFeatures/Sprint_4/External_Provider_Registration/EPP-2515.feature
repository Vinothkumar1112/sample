
Feature: Provider Portal: Admin approves the self-registration of a referring provider

  @BDDTEST-EPP-4462
  @Pr3
  @Automation
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2515-Verify if admin able to view Approve button in Pending Approvals screen
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4463
  @Pr3
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2515-Verify if admin able to see message pop up to Approve referring provider request upon click Approve button
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Approve button
    Then user gets popup box with Approve and Cancel buttons
    
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    


  @BDDTEST-EPP-4464
  @Pr3
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2515-Verify if admin able to see message pop up to deny referring provider request upon click Cancel button
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Approve button
    Then user gets popup box with Approve and Cancel buttons
    And user clicks on popup Cancel button 
    Then user should remains on same page
    And user sees the request status not changed
    
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    

  @BDDTEST-EPP-4465
  @Pr3
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2515-Verify if admin able to see success message upon click approve button and confirm the registration
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Approve button
    Then user gets popup box with Approve and Cancel buttons
    When user clicks on popup Approve button
    Then user sees success message Invite Approved
    
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    


  @BDDTEST-EPP-4467
  @Pr3
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2515-Verify if admin not able to view the referring provider request from list upon successful approval
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Approve button
    Then user gets popup box with Approve and Cancel buttons
    When user clicks on popup Approve button
    Then user sees success message Invite Approved
    And user should not see the request name from the list which has been approved
    
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
  
