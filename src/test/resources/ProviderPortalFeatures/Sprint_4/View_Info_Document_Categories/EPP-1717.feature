@BDDSTORY-EPP-1717
@Pr2
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - Edit an information
  As an Internal provider / internal staff, I should be able to edit and update the information which is published by myself 

  Acceptance criteria: 

  GIVEN internal provider / internal staff has logged into the provider portal 

  And internal provider / internal staff is in view screen of self-published information

  WHEN internal provider / internal staff clicks on the ‘Edit’ button against an information 

  THEN internal provider / internal staff should be able to modify all the fields as mentioned in the user story   

  And internal provider / internal staff should be able to publish the modified information, by clicking on the ‘Publish’ button 

  And internal provider / internal staff should be shown to the error message(s) upon clicking on the ‘Publish’ button, as mentioned in user stories   

  And the published date should be updated with the current date of modification for the respective information 

  And internal provider / internal staff should be able to view the modified information in the view page of self-published information 

  And internal provider / internal staff should be navigated back to the view screen of self-published information upon clicking on the ‘Cancel’ button, and the information should not be modified and remains same.

  @BDDTEST-EPP-4273
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to modify all the fields for information by click Edit button
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to modify all the fields for information by click Edit button
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit button
    And internal provider / internal staff should able to modify all the fields for the information
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4274
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to publish the modified information, by clicking on the ‘Publish’ button
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to publish the modified information, by clicking on the ‘Publish’ button 
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit field
    When internal provider / internal staff should able to modify all the fields for the information
    And internal provider / internal staff should click on publish button to published the modified information
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4275
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view error message upon clicking on the ‘Publish’ button
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view error message upon clicking on the ‘Publish’ button
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    When internal provider / internal staff should able to modify all the fields for the information
    And internal provider / internal staff should click on publish button to published the modified information
    Then internal provider / internal staff should see Appropriate error message
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4276
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view publish date as date of modify
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view publish date as date of modify
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit field
    And internal provider / internal staff should modify the details and published the information
    Then internal provider / internal staff should see Publish date as date of modify  
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4277
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view the modified information of self-published information
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view the modified information of self-published information 
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit field
    And internal provider / internal staff should modify the details and published the information
    Then internal provider / internal staff should see self published information as modified information in View screen  
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4278
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to navigate to view page upon click Cancel button
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to navigate to view page upon click Cancel button
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit field
    And internal provider / internal staff should navigate to view page by click on Cancel button 
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4279
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view information remains same in View screen upon click Cancel button
    Scenario: EPIC_EPP-114_STORY_EPP-1717-Verify if internal provider/internal staff able to view information remains same in View screen upon click Cancel button
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Edit field
    And internal provider / internal staff should navigate to view page by click on Cancel button
    And  internal provider / internal staff should see information remains same in View screen
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|
