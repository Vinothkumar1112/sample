
Feature: Provider Portal: Admin rejects the self-registration of a referring provider

  @BDDTEST-EPP-4468
  @Pr3
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to view Reject button in Pending Approvals screen
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

  @BDDTEST-EPP-4469
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to see message pop up to Reject referring provider request upon click Reject button
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
    
      Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4470
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to enter max upto 50 characters in Reason text field as Reason for Rejection
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
    And user enters reject reason "<reason>" in the text box
    
      Examples:
    |emailorusername|password|reason|
    |user1@photon.com|password1@photon|reason for rejcection|

  @BDDTEST-EPP-4471
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to see error message when provides more than 50 characters in Reason text field as Reason for Rejection
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
  	And user enters reject reason "<reason>" in the text box
    
      Examples:
    |emailorusername|password|reason|
    |user1@photon.com|password1@photon|reason for rejcection more than 50 characters|
    
    
  @BDDTEST-EPP-4472
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to see error message when leaves the Reason for Rejection field blank and click Reject button
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
     And user clicks on popup Reject button
    Then user gets error message This is a required field
    
      Examples:
    |emailorusername|password|reason|
    |user1@photon.com|password1@photon||

  @BDDTEST-EPP-4473
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to see message upon click Reject button and reject the registration
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
    And user enters reject reason "<reason>" in the text box
    When user clicks on popup Reject button
    Then admin should see message Invite Rejected
    
    Examples:
    |emailorusername|password|reason|
    |user1@photon.com|password1@photon|reason for rejcection|
    


  @BDDTEST-EPP-4474
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2516-Verify if admin able to see message pop up to deny rejection upon click Cancel button
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    And user can see the list of Referring providers with Approve button and Reject button
    And user clicks Reject button
    Then user gets popup box with Reason text box, Reject and Cancel buttons
    And user enters reject reason "<reason>" in the text box
    And user clicks on popup Cancel button 
    Then user should remains on same page
    And user sees the request status not changed
    
    
    Examples:
    |emailorusername|password|reason|
    |user1@photon.com|password1@photon|reason for rejcection|


