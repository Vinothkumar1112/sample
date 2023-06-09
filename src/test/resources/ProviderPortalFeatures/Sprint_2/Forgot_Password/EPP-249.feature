@BDDSTORY-EPP-249
Feature: Provider Portal: Forgot Password - Password reset success
  As a referring provider, I should be able to reset my password by creating a new password, upon satisfy all the password requirements in Reset password page. 

  
  @BDDTEST-EPP-1488
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-249-verify if the registered referring provider is able to reset the password from the password reset screen with one numeric, one upper case, and one lower case character
    Given user is redirected to password reset page when clicks on the received link 
    When user lands on Create New Passord screen
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    Then user clicks on Create New Password page submit button
    And user get success message overlay your password was reset successfully with a login page link
        
    Examples: 
    |New Password|Confirm Password| 
    |photon@12|photon@12|

  @BDDTEST-EPP-1489
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-249-verify if the registered referring provider is able to reset the password from the password reset screen with one upper case, one lower case, and one special character
    Given user is redirected to password reset page when clicks on the received link 
    When user lands on Create New Passord screen
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    Then user clicks on Create New Password page submit button
    And user get success message overlay your password was reset successfully with a login page link
        
    Examples: 
    |New Password|Confirm Password| 
    |photon@12|photon@12|

  @BDDTEST-EPP-1490
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-249-verify if the registered referring provider is able to reset the password from the password reset screen with one lower case, one special, and one numeric character
    Given user is redirected to password reset page when clicks on the received link 
    When user lands on Create New Passord screen
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    Then user clicks on Create New Password page submit button
    And user get success message overlay your password was reset successfully with a login page link
        
    Examples: 
    |New Password|Confirm Password| 
    |photon@12|photon@12|

  @BDDTEST-EPP-1491
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-249- verify if the registered referring provider is able to reset the password from the password reset screen with one special, one numeric, and one upper case character
    Given user is redirected to password reset page when clicks on the received link 
    When user lands on Create New Passord screen
    And user provides input on "<New Password>" and "<Confirm Password>" textboxes
    Then user clicks on Create New Password page submit button
    And user get success message overlay your password was reset successfully with a login page link
        
    Examples: 
    |New Password|Confirm Password| 
    |photon@12|photon@12|
    