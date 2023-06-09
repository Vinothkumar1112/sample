@BDDSTORY-EPP-1716
@Pr2
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - View self-published information
  As an Internal provider / internal staff, I should be able to view the list of all information published by myself 

  Acceptance criteria: 

  GIVEN Internal provider / internal staff has logged into provider portal 

  And Internal provider / internal staff has already created and published information 

  WHEN Internal provider / internal staff is navigated to the view screen of self-published information 

  THEN Internal provider / internal staff should be able to view the list of all information published by themselves with below attributes in view page 

  | Field Name                                           | Details                                                                                                                                                                |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Category                                             |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Title                                                |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | URL                                                  |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Document                                             |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Sub-specialties                                      |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Published date                                       |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Status                                               |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Edit                                                 | Provision to modify and republish the ‘active’ information as mentioned in                                                                                             |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  | Comments                                             |                                                                                                                                                                        |
  | (This is to explain why the information was removed) |                                                                                                                                                                        |
  |------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
  |  Remove                                              |                                                                                                                                                                        |
  |                                                      | ‘Remove' will automatically unpublish the information and remove it from Portal. This will be a soft-delete, where information will still be available in backend. -   |
  |                                                      | Note - Once removed, the information is not shown anywhere else in the Portal, mentioning the removed list                                                             |

   And internal provider / internal staff should be able to open and view the uploaded file without downloading, for an information 

  And internal provider / internal staff should also be able to download the file provided in the information 

  And internal provider / internal staff should view the status of the information as ‘Active’, if that information is still published , i.e., available for internal providers & internal staff to view 

  And internal provider / internal staff should view the status of the information as 'Inactive', if admin has removed the information and not available for other internal providers & internal staffs to view 

  And internal provider / internal staff should be able to view and access the option for modify the respective information, which are in ‘active’ status 

  And internal provider / internal staff should not be able to view the option to modify the information, which are in 'Inactive' status 

  And internal provider / internal staff should be able to view option to remove an information which are in ‘Active’ status and not for information with status as 'Inactive'

  @BDDTEST-EPP-4252
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view Category field
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view Category field
    
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal provider lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider/ internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider/internal staff uploaded information using Link/Document option
    When internal provider/internal staff clicks on Publish button
    And internal provider/internal staff should navigate to View Document screen
    And internal provider/internal staff should see My Document Only checkbox ticked and shown self published information
    And  internal provider/internal staff should see the catergory field as a ready only 
    And internal provider/internal staff should see the catergory name information under category field
    Examples:
    |Category|
    |Optometry|

  @BDDTEST-EPP-4253
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Title and display  information
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Title and display  information 
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider/internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider/internal staff uploaded information using Link/Document option
    When internal provider/internal staff clicks on Publish button
    And internal provider/internal staff should navigate to View Document screen
    And internal provider/internal staff should see My Document Only checkbox ticked and shown self published information
    And  internal provider/internal staff should see Title field as a ready only 
    And internal provider/internal staff should see display title information under Title field
    Examples:
    |Title|
    |Cataracts|

  @BDDTEST-EPP-4254
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view the URL
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view the URL
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    And  internal provider / internal staff should see URL field as a read only 
    And internal provider / internal staff should see URL displayed as Open Site
    Examples:
    |URL|
    |Open Site|

  @BDDTEST-EPP-4255
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view the Document by click the document image
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view the document by click the document image
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
    Then internal provider / internal staff should see Document field
    And internal provider / internal staff click on document image
    And internal provider / internal staff should see document 
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4256
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff click on the individual document image file to view
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff click on the individual document image file to view 
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see the document field
    And internal provider / internal staff click on the indiviual document/image file 
    And  internal provider / internal staff should see document 
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4257
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Sub specialty
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
    Then internal provider / internal staff should see Sub specialty as a read only 
    And internal provider / internal staff should see Sub specialty mapped to the information 
    Examples:
    |Subspeciality|
    |Cataract Surgery|

  @BDDTEST-EPP-4258
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view Publish date
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Publish date 
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should see Publish date as a ready only  
    And internal provider / internal staff should see the date displayed when the information published.
    Then internal provider / internal staf should see date format in MM/DD/YYYY 
    Examples:
    |Publish date|
    |08/24/2022|

  @BDDTEST-EPP-4259
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Status field
    Scenario: EPIC_EPP-114_STORY_EPP-1716--Verify if  internal provider/internal staff able to view Status field
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider/internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider/internal staff uploaded information using Link/Document option
    When internal provider/internal staff clicks on Publish button
    And internal provider/internal staff should navigate to View Document screen
    And internal provider/internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider/internal staff should see Status field as read only
    And internal provider/internal staff should see Status displayed as either Active or Inactive
    Examples:
    |Status|
    |Active|

  @BDDTEST-EPP-4260
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Edit field
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Edit field
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
    And internal provider / internal staff should able to modify and republish the active information by click on Edit button 
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4261
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Comments
    : EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff able to view Comments 
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
    Then internal provider / internal staff should see Comments as a read only
    And internal provider / internal staff should see comment provided by Admin when information is removed
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4262
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716 Verify if  internal provider/internal staff able to view Remove option for self published information
    Scenario: EPIC_EPP-114_STORY_EPP-1716 Verify if  internal provider/internal staff able to view Remove option for self published information
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
    Then internal provider / internal staff should see Remove option
    And internal provider / internal staff should have provision to remove a self-published information
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4263
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716 Verify if  internal provider/internal staff able to view Remove option for Admin
    Scenario: EPIC_EPP-114_STORY_EPP-1716 Verify if  internal provider/internal staff able to view Remove option for Admin
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
    Then internal provider / internal staff should see Remove option for Admin to remove information
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4264
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff should not able to see information once removed from portal
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal staff should not able to see information once removed from portal
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should have option to remove the information
    And internal provider / internal staff should not see information once removed.
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4265
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should be able to open and view the uploaded file
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should be able to open and view the uploaded file
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4266
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should be able to download the file provided in the information
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should be able to download the file provided in the information
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4267
  @Authentication
  @Automation
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should view the status of the information as ‘Active’, if that information is still published
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should view the status of the information as 'Inactive', if admin has removed the information
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4268
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should view the status of the information as 'Inactive', if admin has removed the information
    IC_EPP-114_STORY_EPP-1716-Verify if  internal provider/internal should view the status of the information as 'Inactive', if admin has removed the information
    Given Internal provider Launch the Provider Portal URL
    When  internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then  Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4269
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view & modify the respective information, which are in ‘active’ status
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view & modify the respective information, which are in ‘active’ status 
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal provider lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4270
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff not able to view & modify the respective information, which are in ‘Inactive’ status
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff able to view & modify the respective information, which are in ‘Inactive’ status 
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal provider lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4271
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff should have option to remove the information as ‘Active’ status
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff should have option to remove the information as ‘Active’ status
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal provider lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4272
  @Authentication
  @Patient_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff should not have option to remove the information as ‘Inactive’ status
    Scenario: EPIC_EPP-114_STORY_EPP-1716-Verify if internal provider/internal staff should not have option to remove the information as ‘Inactive’ status
    Given Internal provider Launch the Provider Portal URL
    When  internal provider enter valid Email or phone number and Password 
    And Internal provider clicks on login button
    Then  Internal provider lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Then internal provider / internal staff should view the uploaded file
    When  internal provider / internal staff should  removed information not anywhere in the portal
    And internal provider / internal staff should mention in removed list
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|
