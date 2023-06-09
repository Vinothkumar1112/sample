Feature: Provider Portal: Login - Account lock- As a referring provider, I should get locked out by the system, if I continuously attempt to login with incorrect password and reach maximum no. of allowed attempts defined by admin

  @BDDTEST-EPP-564
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-223-verify whether Referring provider is able to login into the application with unsuccessful login attempts before, when the attempt didnt reach maximum count defined by the admin
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user verify the home page with unsuccessful login attempts before, when the attempt didnt reach maximum count 
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|password1@photon|

    
  @BDDTEST-EPP-569
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-223-verify whether ECP Provider is able to login into the application with unsuccessful login attempts before, when the attempt didnt reach maximum count defined by the admin
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user verify the home page with unsuccessful login attempts before, when the attempt didnt reach maximum count 
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|password1@photon|
      
  
  @BDDTEST-EPP-562
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-223-verify whether Referring provider is prompted with error message about account lock
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Your account is locked due to invalid login attempts. Please try again later
    And user remains on login page itself
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    
  @BDDTEST-EPP-565
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-223-verify whether ECP Provider is prompted with error message when account is locked
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Your account is locked due to invalid login attempts. Please check your email to unlock it
    And user remains on login page itself
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    
    
  #changed  
  @BDDTEST-EPP-560
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-223-verify whether ECP staff is prompted with error message about account lock
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Your account is locked due to invalid login attempts. Please check your email to unlock it
    And user remains on login page itself
        
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    |user1@photon.com|invalidYYY|
    