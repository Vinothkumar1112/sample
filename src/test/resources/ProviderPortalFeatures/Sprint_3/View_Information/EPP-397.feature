
Feature: Provider Portal: View Information - Admin views error message for subspecialty name already exist
  As an admin, I should be able to view error message, upon trying to create a Subspecialty name which is already exist. 

  @BDDTEST-EPP-2062
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether the Admin can login to the system and visit to new Subspecialty option
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page


    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationba|

  @BDDTEST-EPP-2063
  @Regression
  @Automation
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether the Admin is Type on Subspecialty name text box in the Subspecialty Master Create Screen
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    When user clicks on Create Subspeciality button 
    Then user enters a new Subspeciality Name "<subspeciality name>" category name

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationba|

  @BDDTEST-EPP-2064
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether the admin is not able to create a Subspecialty with exisiting Subspecialty name
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    When user clicks on Create Subspeciality button 
    And user sees the attributes for creating a new Subspeciality Name, Accessible to, Save, and Cancel button 
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    And user will see inline error message as The subspeciality name already exists!

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationba|

  @BDDTEST-EPP-2065
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether the admin is not able to update a Subspecialty with exisiting Subspecialty name
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user able to view Edit button
    When user clicks on Edit button against a subspeciality name 
    Then user able to modify the subspeciality name "<subspeciality name>" and Accessible to user roles 
   	When user clicks edit Save button subspeciality
   	Then user will see edit inline error message as The subspeciality name already exists!
   	     
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Cataract Surgery|
    
  @BDDTEST-EPP-2066
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether new Subspecialty master screen has option to cancel the process
   Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    And user able to view Edit button
    When user clicks on Edit button against a subspeciality name 
    Then user able to modify the subspeciality name "<subspeciality name>" and Accessible to user roles 
		When user clicks edit Cancel button
    Then user validates Subspeciality Name and Accessible to which should remain unchanged
    
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationawww|

  @BDDTEST-EPP-2070
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-397-Verify whether Admin remains in the same page after displaying the error message 'The Subspecialty name already exists!' (Subspecialty creation)
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Subspeciality master page
    Then User lands on the Subspeciality master page
    When user clicks on Create Subspeciality button 
    And user sees the attributes for creating a new Subspeciality Name, Accessible to, Save, and Cancel button 
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    And user will see inline error message as The subspeciality name already exists!

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Cataract Surgery|

  