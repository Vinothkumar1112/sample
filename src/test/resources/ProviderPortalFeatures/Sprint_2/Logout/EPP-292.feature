Feature:  Scenario : EPIC_EPP-121_STORY_EPP-292 - Verify Referring Provider should be able to logout form provider portal

  @BDDTEST-EPP-685
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint2
  
    Scenario Outline: EPIC_EPP-7_STORY_EPP-292 - Verify Referring Provider should be able to logout form provider portal

    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    When user clicks on 'Logout' button
    Then user should see Login screen

    Examples:
    |emailorusername|password|
    |admin1@photon.com|password@2|

  @BDDTEST-EPP-1746
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-292-Verify Internal Provider should be able to logout from Provider portal
  
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    When user clicks on 'Logout' button
    Then user should see Login screen

   Examples:
    |emailorusername|password|
    |admin1@photon.com|password@2|

  @BDDTEST-EPP-1747
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-292-Verify Internal Staff should be able to logout from patient portal
  
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    When user clicks on 'Logout' button
    Then user should see Login screen

   Examples:
    |emailorusername|password|
    |admin1@photon.com|password@2|
