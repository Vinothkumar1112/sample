@BDDSTORY-EPP-1767

Feature: Provider Portal: Invite provider - Search and validate referring provider
  As an internal staff, I should be able to search and validate a referring provider through E360+ system

  
  @BDDTEST-EPP-4389
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767-Verify if internal staff can able validate a referring provider by searching his/her NPI
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Invite Providers under referral portal
    Then user can see NPI, First Name Last Name, Phone Number, Email ID text boxes
    And user can enter NPI "<NPI>" number in the NPI search box
    Then user gets search results NPI matches with NexGen Database
    
    
    
    Examples:
    |emailorusername|password|NPI|
    |user1@photon.com|password1@photon|123|
    


  @BDDTEST-EPP-4390
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 -Verify if internal staff can able validate a referring provider by searching his/her First Name and Last Name
    
        
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Invite Providers under referral portal
    Then user can see NPI, First Name Last Name, Phone Number, Email ID text boxes
    And user can enter First or Last Name "<name>" number in the First or Last Name search box
    Then user gets search results First or Last Name matches with NexGen Database
    
    
    
    Examples:
    |emailorusername|password|name|
    |user1@photon.com|password1@photon|john|
    


  @BDDTEST-EPP-4391
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 - Verify if internal staff can able validate a referring provider by searching his/her Email ID
    
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
    
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|
    


  @BDDTEST-EPP-4392
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 - Verify if after validate internal staff can able send an invitation to an External provider  not been registered to the provider portal.
    
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
    
    
  

  @BDDTEST-EPP-4393
  @P1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 - Verify if after validate internal staff can able send an invitation to an External provider  not been invited before to register with the provider portal
    
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
    And user verify the Send Invite button is enabled
    When user clicks on Send Invite button
    Then user gets success messgage Invite Sent
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|
    
    

  @BDDTEST-EPP-4394
  @P1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 -  Verify if after validate internal staff can able to Resend an invitation to a selected referring provider who has already been invited but not registered with the provider portal.
   
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
    And user verify the Resend Invite button is enabled
    When user clicks on Resend Invite button
    Then user gets success messgage Invite Sent
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|
    
   
  @BDDTEST-EPP-4395
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 - Verify if  internal staff can able fill in Email details when the Email field is blank
    
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
    When user clicks on NPI number in search results
    Then Provider Details should display with NPI, Provider Name, Practice Name, Practice Address, Practice Phone, Practice Fax, Practice URL and Practice Email
		And user clicks on Provider Details Close button   
    
    Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|johndoe1@mail.com|
    


  @BDDTEST-EPP-4396
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-136_STORY_EPP-1767 - Verify if  internal staff can able s fill in URL of primary practice details when the URL of primary practice field is blank
  
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page 
    And user clicks on Referral Portal button
    And user clicks on Invite Providers under referral portal
    Then user can see NPI, First Name Last Name, Phone Number, Email ID text boxes
    And user can enter NPI "<NPI>" number in the NPI search box
    Then user gets search results NPI matches with NexGen Database
    When user clicks on NPI number in search results
    Then Provider Details should display with NPI, Provider Name, Practice Name, Practice Address, Practice Phone, Practice Fax, Practice URL and Practice Email
		And user clicks on Provider Details Close button
    
    Examples:
    |emailorusername|password|NPI|
    |user1@photon.com|password1@photon|123|
    
