 	
Feature: Provider Portal: View Information - Admin creates category name
  As an admin, I should be able to create the category names for upload and publish the information 

  @BDDTEST-EPP-2167
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that an user should be able to create the category name
   
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
    |user1@photon.com|password1@photon|Educationb|
   
  


  @BDDTEST-EPP-2177
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that an user should be able to validate whether all the roles are selected in default
   
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
    Then user validates all the roles are selected by default

     Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Paper|



  @BDDTEST-EPP-2181
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that an user should be able to select one or more or all the role names of Internal providers and Internal staffs, to whom the category name will be accessible
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
    Then user clicks Save button

    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Note|

  @BDDTEST-EPP-2182
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that an user should be able to deselct all the roles and click save button and validate the message
    
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
    And user validates all the options are deselected under Accessible to
    When user clicks Save button
    Then This is a required field is displayed under Accessible To field

    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Book|
    
   
  @BDDTEST-EPP-2183
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify the status of the newly created category name should be Active by default
    
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
    And user validates the Status as Active for added category


    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationss|
    
    
    
  @BDDTEST-EPP-2184
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that creation date should be captured as Last modified date for the respective category name


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
    And user validates Last Modified date is today

     Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationf|

  @BDDTEST-EPP-2185
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that name of the user who created the category name should be captured for ‘Created by’ detail
   
   
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
    And user validates the Created by name matches with creator
   
    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationj|

  @BDDTEST-EPP-2187
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-388 - Verify that an user should view the validation message upon clicking on the ‘Save’ Button, if there are no inputs provided for ‘Category Name’ and ‘Accessible to’ fields.
    
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
    And user deselects All radio button under Accessible to
    When user clicks Save button
    Then user sees This is a required field error message
    
    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon||
  