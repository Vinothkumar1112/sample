
Feature: Provider Portal: Forgot Password - Validate Internal provider/staff
  As an internal provider / internal staff, I should be able to view message that instructs me to contact E360+ system administrator for reset password  
  

  @BDDTEST-EPP-576
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-243-Verify whether  internal provider / internal staff is provided with contact admin message after successful username validation
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link
    Then user lands on Reset Password page
    And user provides "<Email or Username>" field
    And user clicks on Submit button
    Then system validates the username provided by user
    And user sees message as Please check your email to reset your password
    
    Examples:
    |Email or Username|
    |user1@photon.com|

  @BDDTEST-EPP-577
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-243-Verify whether internal provider / internal staff is redirecting to login page from forgot password page 
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link
    Then user lands on Reset Password page
    And user provides "<Email or Username>" field
    And user clicks on Submit button
    Then system validates the username provided by user
    And user sees message as Please check your email to reset your password
    And user navigates to login screen
    
    Examples:
    |Email or Username|
    |user1@photon.com|

