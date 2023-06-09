
Feature: As an ECP Provider/ Referring Provider/ Admin, I want to view the validation message shown by the system on attempting to login with incorrect username or password 


  @BDDTEST-EPP-554
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222-Verify if ECP Provider is displayed with the error message when tries to login the portal with invalid username and valid password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>"
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |invalidXXXX|password1@photon|

  @BDDTEST-EPP-555
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222- Verify if ECP Provider is displayed with the error message when tries to login into  portal with valid username and invalid password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|invalidYYYYY|

  @BDDTEST-EPP-556
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222-Verify if ECP Provider is displayed with the error message when tries to login into  portal with invalid username and invalid password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |invalidXXXX|invalidYYYYY|

  @BDDTEST-EPP-557
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222- Verify if Referring Provider is displayed with the error message when tries to login the portal with invalid username and valid password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |invalidXXXX|password1@photon|
    
  @BDDTEST-EPP-559
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222-Verify if Referring Provider is displayed with the error message when  tries to login into the portal with invalid username and invalid password
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |invalidXXXX|invalidYYYYY|
    
    @BDDTEST-EPP-1695
  @Authentication
  @Automation
  @Patient_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222- Verify the response when Referring Provider  provides invalid inputs in different combination on Username field and valid password present on login page
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
		|emailorusername|password|
    |user1.photon.com|password1@photon|
    |u s er 1@ photon.com|password1@photon|
    |user.1@photon.com|password1@photon|
    |user1photon.com|password1@photon|
    |user.1@photon..com|password1@photon|
    |user1_@photon.com|password1@photon|


  @BDDTEST-EPP-1697
  @Authentication
  @Automation
  @Patient_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222- Verify the response when Admin  provides invalid inputs in different combination on Username field and valid password present on login page
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1.photon.com|password1@photon|
    |u s er 1@ photon.com|password1@photon|
    |user.1@photon.com|password1@photon|
    |user1photon.com|password1@photon|
    |user.1@photon..com|password1@photon|
    |user1_@photon.com|password1@photon|


  @BDDTEST-EPP-1698
  @Authentication
  @Automation
  @Patient_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-222- Verify the response when ECP Provider  provides invalid inputs in different combination on Username field and valid password present on login page
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Invalid Username or Password
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1.photon.com|password1@photon|
    |u s er 1@ photon.com|password1@photon|
    |user.1@photon.com|password1@photon|
    |user1photon.com|password1@photon|
    |user.1@photon..com|password1@photon|
    |user1_@photon.com|password1@photon|

    
 
  