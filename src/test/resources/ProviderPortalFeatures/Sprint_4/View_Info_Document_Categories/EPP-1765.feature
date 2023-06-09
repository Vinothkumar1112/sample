@BDDSTORY-EPP-1765
@Pr4
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - View the file without download
  As an internal provider / internal staff, I should be able to view the uploaded file in the information, without downloading the same.  

  Acceptance criteria: 

  GIVEN internal provider / internal staff has logged into provider portal 

  And internal provider / internal staff is in a page where he/she can view the information published by all other internal providers and internal staffs 

  WHEN internal provider / internal staff clicks on the document icon against an information and selects a file 

  THEN internal provider / internal staff should be able to view the selected file within the browser, without downloading the file to local storage. 

  And image file can be opened in the same screen and internal provider / internal staff should be able to view the image.

  @BDDTEST-EPP-4317
  @Authentication
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1765 - Verify that an internal provider should be able to view the uploaded file in the information, without downloading the same.
    Given internal provider Launch  the Browser Enter XXX URL
    When internal provider enter valid "<username or phone number>" and "<password>" 
    And internal provider clicks  on login button
    Then internal provider lands on to the provider portal home page
    Then internal providers should navigate to a page where internal providers can view the information published by all other internal providers
    When internal provider access the file in the information 
    Then internal provider should validate that internal provider should be able to view the file within the browser, without downloading the file to local storage. 
    
    
    Examples:
    |Username or Phone number|Password|
    |abcdefg                                     |******    |

  @BDDTEST-EPP-4318
  @Authentication
  @Pr4
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1765 - Verify that an internal staff should be able to view the uploaded file in the information, without downloading the same.
    Given internal staff Launch  the Browser Enter XXX URL
    When internal staff enter valid "<username or phone number>" and "<password>" 
    And internal staff clicks  on login button
    Then internal staff lands on to the provider portal home page
    Then internal staff should navigate to a page where internal staff can view the information published by all other internal providers
    When internal staff access the file in the information 
    Then internal staff should validate that internal provider should be able to view the file within the browser, without downloading the file to local storage. 
    
    
    Examples:
    |Username or Phone number|Password|
    |abcdefg                                     |******    |
