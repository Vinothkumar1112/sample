
Feature: Provider Portal: Forgot Password - Back to login CTA
  As a Referring Provider / Internal Provider / Internal Staff, I should be able to cancel the user validation process for resetting the password and return to the login page 
  
  @BDDTEST-EPP-814
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-244- Verify whether internal provider is able to see the appropriate attributes on forgot password page
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    And user sees Submit button
    And user sees Back to Login button

  @BDDTEST-EPP-1478
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-244- Verify whether internal Provider is able to click on 'Back to Login' button
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    And user sees Submit button
    And user sees Back to Login button
    Then user clicks Back to Login button
    And Password Reset should be aborted
    And page navigages back to login screen

  @BDDTEST-EPP-1479
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-244- Verify whether Referring Provider is able to click on 'Back to Login' button
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    And user sees Submit button
    And user sees Back to Login button
    Then user clicks Back to Login button
    And Password Reset should be aborted
    And page navigages back to login screen
