Feature: Provider Portal: Forgot Password - Incorrect username
  As a user, I should be able to view the error message shown by the system, upon submitting  with incorrect username

  
  @BDDTEST-EPP-885
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-242 - Verify whether Internal provider is prompted with error message when username is provided incorrectly
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user provides incorrect "<Username>"
    And user clicks on Submit button
    Then user prompted with error message Incorrect Username or Email

    Examples:
    |Username|
    |InvalidXXX|
    
    @BDDTEST-EPP-1485
  @Authentication
  @Automation
  @Provider_Portal
  @Sprint2
  @Regression
  Scenario Outline: EPIC_EPP-121_STORY_EPP-242- verify the response when Internal/External provider provides invalid inputs in different combination on Username field present on forgot password page
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user provides incorrect "<Email>" field
    Then user clicks on Submit button
    And user prompted with error message Incorrect Username or Email

    Examples:
    |Email|
		|user1.photon.com|
    |u s er 1@ photon.com|
    |user.1@photon.com|
    |user1photon.com|
    |user.1@photon..com|
    |user1_@photon.com|

  @BDDTEST-EPP-888
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-242 - Verify whether user is prompted with error message when primary phone number is entered in username field
    Given user launches the ProviderPortal url
    When user clicks on Forgot Password link 
    Then user lands on Reset Password page
    Then user provides primary phone number as "<Email or Username>" field
    And user clicks on Submit button
    Then user prompted with error message Incorrect Username or Email

    Examples:
    |Email or Username|
    |1234567890|

  