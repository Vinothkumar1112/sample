
Feature: Provider Portal: Forgot Password - Passwords do not match in 'Reset Password' screen
  As a referring provider, I should be able to view the error message shown by the system when Passwords do not match

  @BDDTEST-EPP-757
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-247-verify whether user is prompted with error message when new password and confirm new password fields doesnt match
    

    Given user is redirected to password reset page when clicks on the received link 
    When user verifies the newpassword, confirmpassword, back to login, submit attributes in reset password page
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    And user clicks on Create New Password page submit button
    Then user is prompted with an error message as Password does not match try again

    Examples:
    |New Password|Confrim Password|
    |photon@12|photon@11|
    |photon@12||
    

