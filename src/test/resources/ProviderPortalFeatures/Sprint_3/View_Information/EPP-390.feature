
Feature: Provider Portal: View Information - Admin edit and update category name
  As an admin, I should be able to edit and update the category name and accessible roles information 

  @BDDTEST-EPP-2259
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-390- Verify that  admin should be able to edit and update the category name and accessible roles information
    
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
    Then user able to modify the category name "<category name>" and Accessible to user roles 
   	When user clicks edit Save button
    Then uses sees updated category name under the Category Name
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationw|
   

  @BDDTEST-EPP-2260
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-390- Verify that admin should view the validation message as This is a required field upon clicking on the Save/Update button, if Category Name and Accessible to fields are empty
   
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks Settings button
    And user clicks on Categories and Subspecialities option under Admin Settings
    When User selects Category master page
    Then User lands on the Category master page
    When user clicks on Edit button against a category name
    And user enters a updated "<category name>" category name  
    And user deselects All radio button under Accessible to
    When user clicks edit Save button
    Then user sees This is a required field error message
    
    Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon||
   
   
   
  @BDDTEST-EPP-2261
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-390-  And if admin clicks on Cancel button, then edit action should be aborted and category name and accessible to detail should remain unchanged
    
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
    Then user able to modify the category name "<category name>" and Accessible to user roles 
   	When user clicks edit Cancel button
    Then user validates Catogory Name and Accessible to which should remain unchanged
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationb|
    


  @BDDTEST-EPP-2262
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-390-  Verify that  admin should be able to save the modified category name and accessible user roles details
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
    Then user able to modify the category name "<category name>" and Accessible to user roles 
   	 When user clicks edit Save button
    Then uses sees updated category name and accessible user roles details
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationp|
    
    
  @BDDTEST-EPP-2263
  @Authentication
  @Automation
  @P3
  @Provider_Portal
  @Regression
  @Sprint3
  Scenario Outline: EPIC_EPP-114_STORY_EPP-390-  Verify that admin should be able to view the updated category name and accessible user roles in the view page
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
    Then user able to modify the category name "<category name>" and Accessible to user roles 
   	When user clicks Save button
    Then uses sees updated category name and accessible user roles details
    
   Examples:
    |emailorusername|password|category name|
    |user1@photon.com|password1@photon|Educationb|

  