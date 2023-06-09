
Feature: Provider Portal: Invite a referring provider


  @BDDTEST-EPP-4172
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1768- To verify whether the Internal staff is able to invite the Referring provider
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Invite Providers under referral portal
    Then user can see NPI, First Name Last Name, Phone Number, Email ID text boxes
    And user can enter Email "<email>" number in the Email search box
    Then user gets search results Email matches with NexGen Database
    And Provider Details should display with NPI, First Name, Last Name, Practice Name and Practice Email
    Then user verify the Send Invite button is enabled
    When user clicks on Send Invite button
    Then user gets success messgage Invite Sent
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|
    
    
  @BDDTEST-EPP-4169
  @Authentication
  @P1
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1768-To verify whether the Success message 'Invitation sent' is displaying after sending the Invite to referring provider
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Invite Providers under referral portal
    Then user can see NPI, First Name Last Name, Phone Number, Email ID text boxes
    And user can enter Email "<email>" number in the Email search box
    Then user gets search results Email matches with NexGen Database
    And Provider Details should display with NPI, First Name, Last Name, Practice Name and Practice Email
    Then user verify the Send Invite button is enabled
    When user clicks on Send Invite button
    Then user gets success messgage Invite Sent
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|

  