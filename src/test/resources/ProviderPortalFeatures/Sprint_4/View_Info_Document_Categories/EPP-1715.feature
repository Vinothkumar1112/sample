
Feature: Provider Portal: View Information - Publish an information
  As an Internal provider / internal staff, I should be able to publish the information 


  @BDDTEST-EPP-4206
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider / internal staff able to view & click on Publish button
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    When  internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see the information being created has been published
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4207
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff able to publish the information using Link
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider/internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider/internal staff should see Publish button
    And internal provider/internal staff mouse over to Link field 
    When internal provider/internal staff provide link URL in the Insert URL
    And  internal provider/internal staff clicks on Publish button
    Then internal provider/internal staff should see the Link URL information being created has been published
    Examples:
    |Title|Subspeciality|Category|Link|
    |Cataracts|Cataract Surgery|Optometry|https://www.Informationlink.com|

  @BDDTEST-EPP-4208
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff able to publish the information using Document
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider/internal staff mouse over to Document field 
    When internal provider/internal staff should option to upload document in format (PDF,DOC,JPG,JPEG,PNG)
    And internal provider/internal staff clicks on Publish button
    Then internal provider/internal staff should see the document format uploaded has been published
    Examples:
    |Title|Subspeciality|Category|Document|
    |Cataracts|Cataract Surgery|Optometry|Infodocument.pdf|

  @BDDTEST-EPP-4209
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff should be able to publish the information using both Link and Document
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider/internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider/internal staff should see Publish button 
    And internal provider/internal staff mouse over to both Link & Document field 
    When internal provider/internal staff provide link URL in the Insert URL & option to upload document in format (PDF,DOC,JPG,JPEG,PNG)
    And internal provider/internal staff clicks on Publish button
    Then internal provider/internal staff should see both Link URL information & document format uploaded has been published
    Examples:
    |Title|Subspeciality|Category|Link|Document|
    |Cataracts|Cataract Surgery|Optometry|https://www.Informationlink.com|Infodocument.pdf|

  @BDDTEST-EPP-4210
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff see the current date of publish as "Published date" for the information
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see Publish date as current calender date
    Examples:
    |Title|Subspeciality|Category|Publish date|
    |Cataracts|Cataract Surgery|Optometry|23/08/2022|

  @BDDTEST-EPP-4211
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff see "Published by" for the information who published it
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see publisher name in the "Publish by" 
    Examples:
    |Title|Subspeciality|Category|Publish by|
    |Cataracts|Cataract Surgery|Optometry|John Doe, M.D|

  @BDDTEST-EPP-4212
  @Authentication
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff see "Status" of the information as Active by default upon published
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see Status as Active by default 
    Examples:
    |Title|Subspeciality|Category|Status|
    |Cataracts|Cataract Surgery|Optometry|Active|

  @BDDTEST-EPP-4213
  @Authentication
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff able to see success message after publish the information
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see success message "Documents Has Been Published Successfully!"
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4214
  @Authentication
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff able to navigate to View Document screen after publish the information
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    Then internal provider / internal staff should see success message "Documents Has Been Published Successfully!"
    And internal provider / internal staff should navigate to View Document screen
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4215
  @Authentication
  @P1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1715-Verify internal provider/internal staff able to see "My Documents Only" checkbox and it shows self published information
    Given Internal provider Launch the Provider Portal URL
    When internal providers enter valid Email or phone number and Password 
    And Internal providers clicks on login button
    Then Internal providers lands on to the provider portal home page
    And Internal provider/internal staff should see View documents menu 
    When Internal provider/internal staff clicks on the View documents menu
    Then Internal provider/internal staff navigates to the View documents screen 
    And Internal provider/internal staff should see the information published by all other internal providers
    And Internal provider/internal staff should see the Upload Document menu
    And Internal provider/internal staff click on the Upload Document menu
    And Internal provider/internal staff should see Upload Document Pop up screen in the same page.
    When Internal provider / internal staff inputs valid mandatory fields Title, Subspeciality, Category
    Then internal provider / internal staff should see Publish button 
    And internal provider / internal staff uploaded information using Link/Document option
    When internal provider / internal staff clicks on Publish button
    And internal provider / internal staff should navigate to View Document screen
    And internal provider / internal staff should see My Document Only checkbox ticked and shown self published information
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|
