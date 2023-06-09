@BDDSTORY-EPP-1719
@Pr4
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: Universal View Information page - published by others
  As an Internal provider / internal staff, I should be able to view the information published by other internal providers /internal staffs 

  Note - External Providers can neither create nor view an information published by others 

  Acceptance criteria: 

  GIVEN internal provider / internal staff has logged in to the provider portal 

  WHEN internal provider / internal staff navigates to the page where information published by others can be viewed 

  THEN internal provider / internal staff should be able to view information published by themselves and also information published by all other internal provider and internal staffs. 

  And internal provider / internal staff should be shown to the information only which are in ‘Active’ status. Information which are in 'Inactive' status should not be shown in the screen. 

  And internal providers / internal staffs should be able to view information grouped by category name 

  And internal providers / internal staff should be able to view the information with details as title, URL published, file published (word / pdf / image), sub-specialties, name of the person who published the information and the published date.

  @BDDTEST-EPP-4309
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1719-Verify if internal provider/internal staff navigate to universal view page and see information
    Given Internal provider/staff Launch the Provider Portal URL
    When  internal provider/staff enter valid Email or phone number and Password 
    And Internal provider/staff clicks on login button
    Then Internal provider/staff lands onto the provider portal home page
    And Internal provider/internal staff should see Universal View screen 
    Then internal provider/internal staff should see information published by self
    And internal provider/internal staff should see information published by others
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4310
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1719-Verify if internal provider/internal staff able to view the information only which are in ‘Active’ status
    Given Internal provider/staff Launch the Provider Portal URL
    When  internal provider/staff enter valid Email or phone number and Password 
    And Internal provider/staff clicks on login button
    Then Internal provider/staff lands onto the provider portal home page
    And Internal provider/internal staff should see Universal View screen 
    Then internal provider/internal staff should see information published by self/others which are in Active status
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4311
  @Authentication
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1719-Verify if internal provider/internal staff not able to view the information which are in ‘InActive’ status
    Given Internal provider/staff Launch the Provider Portal URL
    When  internal provider/staff enter valid Email or phone number and Password 
    And Internal provider/staff clicks on login button
    Then Internal provider/staff lands onto the provider portal home page
    And Internal provider/internal staff should see Universal View screen 
    Then internal provider/internal staff should not see information published by self/others which are in Inactive status
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4312
  @Authentication
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1719-Verify if internal provider/internal staff able to view the information grouped by Category name
    Given Internal provider/staff Launch the Provider Portal URL
    When  internal provider/staff enter valid Email or phone number and Password 
    And Internal provider/staff clicks on login button
    Then Internal provider/staff lands onto the provider portal home page
    And Internal provider/internal staff should see Universal View screen 
    Then internal provider/internal staff should see information grouped by Category name
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|

  @BDDTEST-EPP-4313
  @Authentication
  @Automation
  @Pr4
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1719-Verify if internal provider/internal staff able to view the information details as title, URL published, Document, sub specialty, Person name, publish date.
    Given Internal provider/staff Launch the Provider Portal URL
    When  internal provider/staff enter valid Email or phone number and Password 
    And Internal provider/staff clicks on login button
    Then Internal provider/staff lands onto the provider portal home page
    And Internal provider/internal staff should see Universal View screen 
    And internal provider/internal staff should see information details as title, URL published, Document, sub specialty, Person name,Publish date
    Examples:
    |Title|Subspeciality|Category|
    |Cataracts|Cataract Surgery|Optometry|
