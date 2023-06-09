
Feature: Provider Portal - Referring Provider Registration - Receive link to set password/ Set password
  User Story: As a referring provider, I should be able to receive a link to my registered email-id post filling in the registration details and submitting them


  @BDDTEST-EPP-1124
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-194-Verify if the set password page consists of the following fields Username, password, confirm password, create account and back to login
    
    Given user is redirected to Set Password page when clicks on the received link 
    Then Set password page is displayed with a Username, Password text field, Confirm password text field, create account button and Back to login link
 

  @BDDTEST-EPP-1125
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-194-Verify if the username text field by default takes the email-id has a Username.
  Given user is redirected to password reset page when clicks on the received link 
  Then Set password page is displayed with a Username


  @BDDTEST-EPP-1128
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-Verify if the external provider Password combination should consist of  At least One Numeric (0-9), At least One Upper case Alphabets (A-Z), At least One Lower case Alpha (a-z), and At least One Special character (no spaces)
    Given user is redirected to Set Password page when clicks on the received link 
    When the user provides input password "<Password>" field
     Examples:
    |Password|
    |Phot0@2N|

  @BDDTEST-EPP-1129
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-Verify if the password text field accepts 8 to 20 characters.
    Given user is redirected to Set Password page when clicks on the received link 
    When the user provides input password "<Password>" field
     
    Examples:
    |Password|
    |abcdefgh|
    |abcdefghijklmnipqrst|
    
  @BDDTEST-EPP-1132
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-verify whether user is prompted with error message when new password and confirm new password fields doesn't match
   
   Given user is redirected to Set Password page when clicks on the received link 
   When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
   And user clicks on Create Account button
   Then user is prompted with an error message as Password does not match try again
     
    Examples:
    |New Password|Confirm Password|
    |photon@12|photon@11|
    
   @BDDTEST-EPP-1136
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-Verify if the ‘Confirm New Password’ field should match with the value in the ‘New Password’ field.
   Given user is redirected to Set Password page when clicks on the received link 
   When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
   And user clicks on Create Account button
   Then page should not prompted any error message
     
    Examples:
    |New Password|Confirm Password|
    |photon@12|photon@12|
    
    
    @BDDTEST-EPP-1138
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-Verify if the proper error message is displayed when the external provider clicks on to create my account button without entering the password
   Given user is redirected to Set Password page when clicks on the received link 
   When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
   And user clicks on Create Account button
   Then user sees the error message This is a required field
     
    Examples:
    |New Password|Confirm Password|
    |||
    
  @BDDTEST-EPP-1140
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-verify if the external provider clicks on the create my account button and then is redirected to the login page.
   Given user is redirected to Set Password page when clicks on the received link 
   When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
   And user clicks on Create Account button
   Then user gets success meassage Password has been set
    
    Examples:
    |New Password|Confirm Password|
    |photon@12|photon@12|
    
  @BDDTEST-EPP-1534
  @Regression
  @Provider_Portal
  @Automation
  @sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-194-Verify if the Password combination should Contain at least 3 out of 4 types  At least One Numeric (0-9), At least One Upper case Alpha (A-Z), At least One Lower case Alpha (a-z), and At least One Special character (no spaces).
   Given user is redirected to Set Password page when clicks on the received link 
   When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
   And user clicks on Create Account button
   Then user gets success meassage Password has been set
    Examples:
    |New Password|Confirm Password|
    |Photon@123|Photon@123|
    |PHOTON@123|PHOTON@123|
    |photon@123|photon@123|
    |Photon123|Photon123|

    
    
   @BDDTEST-EPP-1531
  @Regression
  @Provider_Portal
  @Automation
  @sprint2
   Scenario Outline: EPIC_EPP-121_STORY_EPP-194- Verify if the proper error message displays when the External provider enters password does not met criteria 
    Given user is redirected to Set Password page when clicks on the received link 
    When user provides input on "<New Password>" and "<Confirm Password>" textboxes in Set Password page
    And user clicks on Create Account button
    Then user should remain same page and success message would not display
     
    Examples:
    |New Password|Confirm Password|
    |photon@photon|photon@photon|
    |PhotonPhoton|Photon@Photon|
    |photon123|photon123|
    |$$$$photon|$$$$photon|
 
     