Feature: Provider Portal: Forgot Password - View and access 'Create new password' screen
  As a referring provider, I should be able to  view and access password reset screen, upon clicking on the link received through email 
 

  @BDDTEST-EPP-855
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-246-verify whether user can able to view new password, confirm password, cancel and submit attributes in reset password page
    
    Given user is redirected to password reset page when clicks on the received link 
    When user verifies the newpassword, confirmpassword, back to login, submit attributes in reset password page

  @BDDTEST-EPP-861
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-246-verify whether user is prompted with error message when new password and confirm new password fields doesn't match
    Given user is redirected to password reset page when clicks on the received link 
   When user verifies the newpassword, confirmpassword, back to login, submit attributes in reset password page
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    And user clicks on Create New Password page submit button
    Then user is prompted with an error message as Password does not match try again

    Examples:
    |New Password|Confrim Password|
    |photon@12|photon@11|

  @BDDTEST-EPP-871
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-246-verify whether user is able to click on submit button after filling all the mandatory fields appropriately
    Given user is redirected to password reset page when clicks on the received link 
    When user provides input on "<New Password>" and "<Confirm Password>" textboxes
    Then user clicks on Create New Password page submit button

    Examples:
    |New Password|Confirm Password|
    |photon@12|photon@11|
    
    
  @BDDTEST-EPP-873
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-246-verify whether user redirects to login page upon clicking on 'back to login' button
    Given user is redirected to password reset page when clicks on the received link 
    When user provides input on "<New Password>" and "<Confirm Password>" textboxes
    And user clicks on Back to login button
    Then user redirects to login screen

    Examples:
    |New password|Confirm Password|
    |XXX|XXX|
    