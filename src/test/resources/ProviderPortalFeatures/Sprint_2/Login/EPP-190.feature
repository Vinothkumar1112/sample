
Feature: Provider Portal - Login - View and login
  As an Admin/ ECP Provider/ Referring Provider, I want to view and access the login page of Provider portal 


  @BDDTEST-EPP-484
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-190-Verify whether ECP Provider able to Login into provider portal
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-485
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190-Verify whether Referring Provider Login Page consisting of following attributes: username, password, Not a member? Create an account, Login,  Forgot username, Forgot password
    Given user launches the ProviderPortal url
    When user sees username, password text boxes, Not a member? Create an account link & login button in the Login page
    Then user verifies the attributes present on login screen
        
   @BDDTEST-EPP-493
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190-verify whether ECP provider navigates to forgot username page upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user sees forgot username link in login page
    And user clicks on Forgot usename link
    Then user sees forgot username hint message

  @BDDTEST-EPP-494
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190-verify whether ECP provider navigates to forgot password page upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user sees forgot password link in login page
    And user clicks on Forgot Password link
    Then user lands on forgot password page

  @BDDTEST-EPP-495
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-190-Verify whether Referring Provider is able to Login into the provider portal
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
  @BDDTEST-EPP-503
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190-verify whether Referring provider navigates to forgot username page upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user sees forgot username link in login page
    And user clicks on Forgot usename link
    Then user sees forgot username hint message

  @BDDTEST-EPP-504
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190-verify whether Referring provider navigates to forgot password page upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user sees forgot password link in login page
    And user clicks on Forgot Password link
    Then user lands on forgot password page
    
  @BDDTEST-EPP-936
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190- verify whether ECP provider navigates to “Registration” screen upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    When user sees Not a member? Create an account link in login page
    Then user clicks on Not a member? Create an account link
    And user lands on Registration screen

  @BDDTEST-EPP-937
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-190- verify whether Referring provider navigates to “Registration” screen upon clicking the link
    Given user launches the ProviderPortal url
    When user lands on providerportal
    When user sees Not a member? Create an account link in login page
    Then user clicks on Not a member? Create an account link
    And user lands on Registration screen
    
     @BDDTEST-EPP-1102
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-190-Verify whether Admin able to Login into provider portal
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    
  