
Feature: Provider Portal: View Information - Admin views error message for already existed category name
  As an admin, I should be shown to error message, upon trying to create or update a category name which is already exist. 

  @BDDTEST-EPP-2159
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-391-Verify whether the Admin can login to the system and visit to new Categories option
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    When user clicks on Create Category button 
    And user sees the attributes for creating a new  Category Name, Accessible to, Save, and Cancel button 
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  

  @BDDTEST-EPP-2161
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-391-Verify whether the admin is not able to create a category with exisiting category name
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user able to view Edit button
    When user clicks on Edit button against a category name 
    And user able to modify the category name "<category name>" and Accessible to user roles 
   	Then user clicks edit Save button
   	And user will see inline error message as The Category name already exist! for edit
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Opthalmology|
   
  


  @BDDTEST-EPP-2166
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-391-Verify whether new category master screen has save button to save the process
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    When user clicks on Create Category button 
    And user sees the attributes for creating a new  Category Name, Accessible to, Save, and Cancel button 
    And user enters a new "<category name>" category name
    And user selects All radio button under Accessible to
    When user clicks Save button
    Then uses sees new category name under the Category Name

    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationz|

  @BDDTEST-EPP-2168
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-391-Verify whether update category master screen has save button to save the process
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    And user able to view Edit button
    When user clicks on Edit button against a category name 
    And user able to modify the category name "<category name>" and Accessible to user roles 
   	Then user clicks edit Save button   
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationa|

  @BDDTEST-EPP-2170
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  @ViewInformation
  Scenario Outline: EPIC_EPP-121_STORY_EPP-391-Verify whether Admin remains in the same page after displaying the error message The category name already exists! (Category creation)
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    When user clicks on Create Category button 
    And user sees the attributes for creating a new  Category Name, Accessible to, Save, and Cancel button 
    And user enters a new "<category name>" category name
    And user selects All radio button under Accessible to
    When user clicks Save button
   	And user will see inline error message as The Category name already exist!
   
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationa|
    

    
   
 