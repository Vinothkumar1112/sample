
Feature: Provider Portal: View Information - Search an information
  As an internal provider / internal staff, I should be able to search an information by the title of the information, sub-specialty and publisher name. 


  @BDDTEST-EPP-4397
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin able to search an information by the title of the information, sub-specialty and publisher name.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    Then user sees Title search box
    And user sees Subspeciality search box
    And user sees Publisher Name search box
    And user sees list of information with component
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    

  @BDDTEST-EPP-4398
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin able to search an information by the title of the information.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<title>" to Title search box
    Then user able to see the search result according search title
    
    Examples:
    |emailorusername|password|title|
    |user1@photon.com|password1@photon|Social Connections16|
    
    
  @BDDTEST-EPP-4399
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin able to search an information by sub-specialty.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<subspeciality>" to Subspeciality search box
    Then user able to see the search result according search subspeciality
    
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|Doctors17, Front Desk,|

  @BDDTEST-EPP-4400
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin able to search an information by the publisher name.
      Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<publishername>" to Publisher Name search box
    Then user able to see the search result according search publisher name
    
    Examples:
    |emailorusername|password|publishername|
    |user1@photon.com|password1@photon|Admin18|

  @BDDTEST-EPP-4401
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin gets the error message, when admin search an invalid information by the title of the information
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<title>" to Title search box
    Then user able to see the search result according search title
    
    Examples:
    |emailorusername|password|title|
    |user1@photon.com|password1@photon|w|

  @BDDTEST-EPP-4402
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin get an error message, when admin search an invalid sub-specialty.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<subspeciality>" to Subspeciality search box
    Then user able to see the search result according search subspeciality
    
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|w|

  @BDDTEST-EPP-4403
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1722 - Verify the admin gets the error message, when admin search an invalid publisher name.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user enters the "<publishername>" to Publisher Name search box
    Then user able to see the search result according search publisher name
    
    Examples:
    |emailorusername|password|publishername|
    |user1@photon.com|password1@photon|w|
    
    
  