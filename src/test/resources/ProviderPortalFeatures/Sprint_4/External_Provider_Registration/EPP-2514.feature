
Feature: Provider Portal: Admin views the registration information of self-registered referring provider

  @BDDTEST-EPP-4561
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the Admin can able to view the complete  details provided by the referring provider during their self-registration
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider Personal information, Specialization and Office details provided during self registration
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4562
  @Provider_Portal
  @Sprint4
  @Regression
  @Automation
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the referring providers details should be the same as details provided by the referring provider during their self-registration
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider Personal information, Specialization and Office details provided during self registration
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4563
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the admin should be able to view all the practice information provided by the referring provider along with the detail on which among them is their primary practice as well
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4565
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the comment field and save button is present in the referring providers complete details page.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
    And user sees the comment field in referring provider details page 
    And user sees the Save button in referring provider details page 
   
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|


  @BDDTEST-EPP-4566
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the admin can able to write a status & feedback for offline verification in the comment field
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	
   
   
   Examples:
    |emailorusername|password|comment|
    |user1@photon.com|password1@photon|ssssss|
    


  @BDDTEST-EPP-4567
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the admin can able save the written status & feedback for offline verification in the comment field
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	Then user clicks on comments Save button
   
   
   Examples:
    |emailorusername|password|comment|
    |user1@photon.com|password1@photon|ssssss|
    
    
  @BDDTEST-EPP-4568
  @Provider_Portal
  @Sprint4
  @Automation
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the admin can able to edit the comments after clicking on the save button.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	Then user clicks on comments Save button
   	And user clicks on selected name in Pending Approvals list
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	Then user clicks on comments Save button
   
   
   Examples:
    |emailorusername|password|comment|
    |user1@photon.com|password1@photon|ssssss|
    

  @BDDTEST-EPP-4572
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the admin should be able to update his/her comment on the verification of referring provider till he/she approves or rejects the registration of the referring provider
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider all the practice information provided during self registration
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	Then user clicks on comments Save button
   	And user clicks on selected name in Pending Approvals list
   	And user enters comment in the comment "<comment>" field in referring provider details page
   	Then user clicks on comments Save button
   
   
   Examples:
    |emailorusername|password|comment|
    |user1@photon.com|password1@photon|ssssss|

  @BDDTEST-EPP-4573
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514- Verify if the external providers Email should be displayed in the Primary Email column and the Email id should be displayed as provided during registration
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider Personal information and primary email provided during self registration
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|


  @BDDTEST-EPP-4574
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2514-Verify if the external providers Phone no  should be displayed in the Phone collum and the Phone no should be displayed as provided during registration
      Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    And user clicks on selected name in Pending Approvals list
    Then user sees the all details of provider Personal information and phone provided during self registration
   
   Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
