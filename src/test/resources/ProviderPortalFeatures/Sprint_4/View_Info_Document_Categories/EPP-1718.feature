@BDDSTORY-EPP-1718
@Pr2
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - Remove an information
  As an Internal provider / internal staff, I should be able to delete my own published information 

  Acceptance criteria: 

  GIVEN Internal provider / internal staff has logged into the system 

  And internal provider / internal staff is in view screen of self-published information 

  WHEN internal provider / internal staff clicks on the ‘Remove’ button against an information 

  THEN internal provider / internal staff should be shown to a confirmation message for removing an information 

  And internal provider / internal staff should be able to either confirm or deny the removal of an information 

  And if the internal provider / internal staff confirms the removal, then the respective information should be removed from the view screen of self-published information  

  And the same information should be unpublished and should not be available for other internal providers and internal staffs to view 

  And the information should not be deleted from the database. It is just a soft delete. 

  And if the internal provider / internal staff denies the removal activity, then the information should not be removed and remains same.  

  @BDDTEST-EPP-4384
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1718 - Verify admin should see "Remove" button
    Given admin Launch the Browser Enter "XXX" URL
    When admin enter valid "<adminname or phone number>" and "<password>" 
    And click on login "button"
    Then admin lands on to the provider portal home page
    When admin click on "View Information" menu on left
    Then admin lands on to "View Information" screen 
    And admin should see list of information with component
    And admin should see "Remove" button
    Examples:
    |adminname or Phone number|Password|
    |abcdefg|******|

  @BDDTEST-EPP-4385
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1718 - Verify admin should see confirmation message modal for deleting an information
    Given admin Launch the Browser Enter "XXX" URL
    When admin enter valid "<adminname or phone number>" and "<password>" 
    And click on login "button"
    Then admin lands on to the provider portal home page
    When admin click on "View Information" menu on left
    Then admin lands on to "View Information" screen 
    And admin should see list of information with component
    And admin should see "Remove" button
    When admin click on "Remove" button
    Then admin should see confirmation message for deleting an information
    Examples:
    |adminname or Phone number|Password|
    |abcdefg|******|

  @BDDTEST-EPP-4386
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1718 - Verify admin should see "Confirm" & "Deny" button on confirmation message modal for deleting an information
    Given admin Launch the Browser Enter "XXX" URL
    When admin enter valid "<adminname or phone number>" and "<password>" 
    And click on login "button"
    Then admin lands on to the provider portal home page
    When admin click on "View Information" menu on left
    Then admin lands on to "View Information" screen 
    And admin should see list of information with component
    And admin should see "Remove" button
    When admin click on "Remove" button
    Then admin should see confirmation message modal for deleting an information
    And admin should see "Confirm" & "Deny" button
    Examples:
    |adminname or Phone number|Password|
    |abcdefg|******|

  @BDDTEST-EPP-4387
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1718 - Verify admin should see the respective information should be removed from the view screen of self-published information
    Given admin Launch the Browser Enter "XXX" URL
    When admin enter valid "<adminname or phone number>" and "<password>" 
    And click on login "button"
    Then admin lands on to the provider portal home page
    When admin click on "View Information" menu on left
    Then admin lands on to "View Information" screen 
    And admin should see list of information with component
    And admin should see "Remove" button
    When admin click on "Remove" button
    Then admin should see confirmation message modal for deleting an information
    And admin should see "Confirm" & "Deny" button
    When admin click on "Confirm" button
    Then admin should see the respective information should be removed from the view screen
    Examples:
    |adminname or Phone number|Password|
    |abcdefg|******|

  @BDDTEST-EPP-4388
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1718 - Verify admin should see the respective information should isn't removed from the view screen of self-published information
    Given admin Launch the Browser Enter "XXX" URL
    When admin enter valid "<adminname or phone number>" and "<password>" 
    And click on login "button"
    Then admin lands on to the provider portal home page
    When admin click on "View Information" menu on left
    Then admin lands on to "View Information" screen 
    And admin should see list of information with component
    And admin should see "Remove" button
    When admin click on "Remove" button
    Then admin should see confirmation message modal for deleting an information
    And admin should see "Confirm" & "Deny" button
    When admin click on "Deny" button
    Then admin should see the respective information isn't removed from the view screen
    Examples:
    |adminname or Phone number|Password|
    |abcdefg|******|
