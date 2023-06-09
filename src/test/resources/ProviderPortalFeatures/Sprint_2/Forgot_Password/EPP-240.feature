@Provider_Portal
Feature: Provider Portal: Forgot Password - View and access 'Reset Password' page
  As a Referring Provider / Internal Provider / Internal Staff, I should be able to view and access the page where I can provide required input and proceed to reset my login password 

  @BDDTEST-EPP-809
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-240-verify whether Internal Provider is able to click on the forgot password link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    Then user sees  the Forgot Password link  
    And user clicks on Forgot Password link

  @BDDTEST-EPP-810
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-240-verify whether Internal  Provider navigates to forgot password screen upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Submit button
    And user sees Back to Login button

  @BDDTEST-EPP-813
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-240-verify whether Internal Provider is able to reset the password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    When user provides "<Email or Username>" field
    And user clicks on Submit button
    Then user should see heading A link has been sent to your registered email

    Examples:
    |Email or Username|
    |user1@photon.com|

  @BDDTEST-EPP-814
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-244- Verify whether Internal provider is able to see the appropriate attributes on forgot password page
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username textbox
    And user sees Submit button
    And user sees Back to Login button
    
    
    
  @BDDTEST-EPP-1634
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
    
     Scenario Outline: EPIC_EPP-121_STORY_EPP-240-verify whether Referring Provider is able to reset the password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user clicks on Forgot Password link 
    Then user lands on Reset Password page
    And user sees Email or Username field
    When user provides "<Email or Username>" field
    And user clicks on Submit button
    Then user should see heading A link has been sent to your registered email to reset your password. Please check

    Examples:
    |Email or Username|
    |user1@photon.com|

  