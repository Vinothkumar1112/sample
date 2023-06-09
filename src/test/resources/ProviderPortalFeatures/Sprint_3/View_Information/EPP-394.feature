
Feature: Provider Portal: View Information - Admin creates subspecialty name
  As an admin, I should be able to create subspecialty name 


  @BDDTEST-EPP-2046
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the admin should see all attributes on the "Create Subspeciality" overlay
    
    
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
    Then user sees the attributes for creating a new Subspeciality Name, Accessible to, Save, and Cancel button 


    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
 

  @BDDTEST-EPP-2048
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the admin able to create a New Subspeciality name
    
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
    Then uses sees new subspeciality name under the Subspeciality Name

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationba|
    
  @BDDTEST-EPP-2049
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the validation message upon clicking the Save button if the admin leaves the "Subspeciality name" field blank
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
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    Then user sees the appropriate validation message This is a required Field
    
   Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon||

  @BDDTEST-EPP-2050
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the validation/Error message upon clicking the Save button if the admin gives the same Subspeciality name already present in the "Subspecialties"
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
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    And user will see inline error message as The subspeciality name already exists!

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationba|

  @BDDTEST-EPP-2051
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the validation/Error message upon clicking the Save button if the admin has not selected any of the roles in "Accessible to" category
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
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user deselects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    Then user sees the appropriate validation message This is a required Field under Accessible to
        
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationbc|


  @BDDTEST-EPP-2053
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the Subspeciality name is not created when the admin selects the 'Cancel' option in Create Subspeciality overlay
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
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Cancel button
    Then user cannot see create subspeciality overlay
        
    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationbc|

  @BDDTEST-EPP-2054
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the admin is able to view the Subspeciality Name as Active
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
    Then uses sees new subspeciality name under the Subspeciality Name
     And user validates the Status as Active for added category

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationbaa|

  @BDDTEST-EPP-2055
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the creation date should be captured as "Last modified" for the respective Subspeciality name
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
    Then uses sees new subspeciality name under the Subspeciality Name
      And user validates Last Modified date is today

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationbaewq|


  @BDDTEST-EPP-2056
  @Automation
  @Regression
  @Provider_Portal
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-394 - Verify if the admin name is captured on "Modify by" in the respective Subspeciality name created
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
    And user enters a new Subspeciality Name "<subspeciality name>" category name
    And user selects Subspeciality All radio button under Accessible to
    When user clicks Subspeciality Save button
    Then uses sees new subspeciality name under the Subspeciality Name
     And user validates the Created by name matches with creator

    Examples:
    |emailorusername|password|subspeciality name|
    |user1@photon.com|password1@photon|Educationbaewss|


