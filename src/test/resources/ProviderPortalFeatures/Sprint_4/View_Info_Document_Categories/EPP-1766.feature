@BDDSTORY-EPP-1766
@Pr2
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - Validate 'Title' already exists
  As an internal provider / internal staff, I should be able to view validation for information title, if its already exists. 

  Acceptance criteria: 

  GIVEN internal provider / internal staff has logged into the provider portal 

  And internal provider / internal staff is in a page where he/she can create an information 

  And internal provider / internal staff has provided the title which is already exist 

  WHEN internal provider / internal staff proceeds to publish the information 

  THEN internal provider / internal staff should be shown to a error message as ‘This title already exists.’ 

  And the information should not be published and internal provider / internal staff remains in the same screen 

  @BDDTEST-EPP-4306
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1766 - Verify the error message if internal provider/internal staff publish the information with title name already exist
    Given internal provider/staff Launch the Provider Portal URL
    When internal provider/staff enter valid Email or phone number and Password & submit
    Then internal provider/staff lands on to the provider portal home page
    When internal provider/staff clicks on View documents menu
    Then internal provider/staff navigates to the View documents screen 
    When Internal provider/staff inputs Title name in Title field which is already exist
    And internal provider/staff uploaded information using Link/Document option
    When internal provider/staff clicks on Publish button
    And internal provider/staff should see error message "This title already exists"
    Examples:
    |Title|
    |Cataracts|

  @BDDTEST-EPP-4307
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1766 - Verify if internal provider/internal staff should not able to publish the information & remains in same page when enter title name already exist
    Given internal provider/staff Launch the Provider Portal URL
    When internal provider/staff enter valid Email or phone number and Password & submit
    Then internal provider/staff lands on to the provider portal home page
    When internal provider/staff clicks on View documents menu
    Then internal provider/staff navigates to the View documents screen 
    When Internal provider/staff inputs Title name in Title field which is already exist
    And internal provider/staff uploaded information using Link/Document option
    When internal provider/staff clicks on Publish button
    And internal provider/staff should see error message "This title already exists"
    Then internal provider/staff should remains in same page & information not get published.  
    Examples:
    |Title|
    |Cataracts|
