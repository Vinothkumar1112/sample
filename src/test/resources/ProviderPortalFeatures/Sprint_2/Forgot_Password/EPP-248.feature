Feature: As a referring provider, I should be able to view the error message shown by the system, upon the provided inputs for password doesn’t satisfy the password requirements 

  @BDDTEST-EPP-715
  @Authentication
  @Patient_Portal
  @Regression
  @Sprint2
  @Automation
  
Scenario Outline: EPIC_EPP-121_STORY_EPP-248-Verify if referring provider can reset the password when the number of characters are entered between 8 to 20 upon satisfying the password requirements

Given user is redirected to password reset page when clicks on the received link 
When user lands on Create New Passord screen
And user provides input on "<New Password>" and "<Confirm Password>" textboxes
And user clicks on Create New Password page submit button                                            
Then user get success message overlay your password was reset successfully with a login page link                                             

Examples:
|New Password|Confirm Password|
|Abcd@1234|Abcd@1234|

 @BDDTEST-EPP-1096
  @Authentication
  @Patient_Portal
  @Regression
  @Sprint2
  @Automation
  
Scenario Outline: EPIC_EPP-121_STORY_EPP-248-Verify if referring provider can view the error message when the current password is entered in the new password field

Given user is redirected to password reset page when clicks on the received link 
When user lands on Create New Passord screen
And user provides input on "<New Password>" and "<Confirm Password>" textboxes
And user clicks on Create New Password page submit button                             
And user should remain on the same page

Examples:
|New Password|Confirm Password|
|photon@12|photon@12|


  @BDDTEST-EPP-1094
  @Authentication
  @Patient_Portal
  @Regression
  @Sprint2
  @Automation
  
 Scenario Outline: EPIC_EPP-121_STORY_EPP-248-Verify if referring provider can view the error message when a combination does not met password criteria

Given user is redirected to password reset page when clicks on the received link 
When user lands on Create New Passord screen
And user provides input on "<New Password>" and "<Confirm Password>" textboxes
And user clicks on Create New Password page submit button                             
And user should remain on the same page

Examples:
|New Password|Confirm Password|
|Photon@1231236547890222222|Photon@1231236547890222222|
|Pn@12|Pn@12|
|Photon@@@|Photon@@@|
|photon@12|photon@12|
|PHOTON@12|PHOTON@12|
|PHOTONa12|PHOTONa12|

