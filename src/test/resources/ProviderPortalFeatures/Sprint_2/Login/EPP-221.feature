Feature: Provider Portal: Login - Error message if mandatory fields not filled-in, As an ECP Provider/ Referring Provider/ Admin, I should be able to see error message when mandatory fields are not filled in Login page

  @BDDTEST-EPP-524
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-221-Verify whether Referring provider is prompted with error message when password field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>"
    And user clicks on Login button
    Then user prompted with error message The Password is required
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|           |

  @BDDTEST-EPP-525
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-221-Verify whether Referring provider is prompted with error message when username field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>"
    And user clicks on Login button
    Then user prompted with error message Enter a valid Email or Username
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    ||password1@photon|
    
    
  @BDDTEST-EPP-1435
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-221-Verify whether Admin is prompted with error message when password field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message The Password is required
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|          |
    
    
  @BDDTEST-EPP-521
  @Authentication
  @Automation
  @Regression
  @Provider_Portal
  @Sprint2
   Scenario Outline: EPIC_EPP-121_STORY_EPP-221-Verify whether ECP provider is prompted with error message when password field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message The Password is required
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|            |



  @BDDTEST-EPP-522
  @Authentication
  @Automation
  @Regression
  @Provider_Portal
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-221-Verify whether ECP provider is prompted with error message when username field is left empty
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user prompted with error message Enter a valid Email or Username
    And user remains on login page itself
    
    Examples:
    |emailorusername|password|
    ||password1@photon|
    