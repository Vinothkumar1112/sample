
Feature: Provider Portal: Forgot Password - Validate empty fields in 'Reset Password' page
  As a Referring Provider / Internal Provider / Internal Staff, I should be able to view the error message shown by the system when mandatory fields are not filled

  @BDDTEST-EPP-875
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-241 - Verify whether Internal Provider is prompted with error message when Email field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    When user provides "<Email or Username>" field
    And user clicks on Submit button
    Then user sees error message This is a required field

    Examples:
      |Email or Username|
      ||

  @BDDTEST-EPP-876
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-241 - Verify whether Referring Provider is prompted with error message when Email field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    When user provides "<Email or Username>" field
    And user clicks on Submit button
    Then user sees error message This is a required field

    Examples:
      |Email or Username|
      ||
