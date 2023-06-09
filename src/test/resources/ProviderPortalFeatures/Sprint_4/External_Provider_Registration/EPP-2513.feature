
Feature: Provider Portal: Admin views the list of Self-registered referring providers awaiting for approval


  @BDDTEST-EPP-4456
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-  Verify if the Admin can able to view the external providers Name, PracticeName, Phone number, Email, and Date of registration on the pending approval page.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4457
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-  Verify if the external providers First name and last name should be displayed in the name column and the Name displayed as the same as provided during registration
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her First Name and Last Name 
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
  @BDDTEST-EPP-4458
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-  Verify if the external providers Primary Practice Name should be displayed in the Primary practice column and the Practice Name displayed as Provided during registration
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Primary Practice Name 
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4459
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-  Verify if the external providers Email should be displayed in the Primary Email colunmn and the Email id should be displayed as provided during registration
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Email
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4460
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-  Verify if the external providers Phone no  should be displayed in the Phone collum and the Phone no should be displayed as provided during registration
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Pending Approvals under referral portal
    Then user sees the list of referring providers with his or her Phone Number
    
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4553
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  @pr1
  Scenario Outline: EPIC_EPP-121_STORY_EPP-2513-Verify if the Admin should be able to view the list of all selfregistered referring providers who are awaiting for approval with the below attributes.

  
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
   
    
    