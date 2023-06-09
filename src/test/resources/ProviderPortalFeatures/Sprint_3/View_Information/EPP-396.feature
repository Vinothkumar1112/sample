
Feature: Provider Portal: View Information - Admin edit and update a subspecialty name
  As an admin, I should be able to edit and update the and Subspecialty names 

  @BDDTEST-EPP-1904
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-396- Verify whether admin can modify and save the subspecialty name and accessible user roles detail
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
    Then uses sees updated subspeciality name under the Subspeciality Name
    
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationawe|

  @BDDTEST-EPP-1905
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-396- Verify whether edit action is aborted when admin clicks the cancel button
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

  @BDDTEST-EPP-1906
  @Automation
  @Regression
  @P3
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-396- Verify whether admin can see the error message when Subspecialty name field is empty
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
    Then user sees This is a required field error message under subspeciality name field
    
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon||

  @BDDTEST-EPP-1907
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-396- Verify whether admin can see the error message when "accessible to" CTA is empty
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
    And user validates all the options are deselected under Accessible to
	  When user clicks edit Save button subspeciality
    Then This is a required field is displayed under Accessible To field
    
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Education|

  @BDDTEST-EPP-1908
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-396- Verify whether admin can see the error message when both 'Subspecialty name " and accessible to" CTA are empty
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
    And user validates all the options are deselected under Accessible to
	  When user clicks edit Save button subspeciality
 	  Then user sees This is a required field error message
    
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon||