
Feature: Provider Portal: View Information - Validate mandatory fields when publishing information
  As an internal provider / internal staff, I should be able to view the validation for empty fields upon publishing the information. 



  @BDDTEST-EPP-4173
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal provider should be able to view the error message This field is mandatory when Category field is not filled.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
    Then user can see This is a required field under the Category Field
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|  
    
    
  @BDDTEST-EPP-4174
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal provider should be able to view the error message This field is mandatory when Title field is not filled.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
    Then user can see This is a required field under the Title Field
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|  
    

  @BDDTEST-EPP-4175
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal provider should be able to view the error message This field is mandatory when URL field is not filled.(If no documents uploaded)
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
  	Then user can see the Link, Document or Image Required to Publish error message
   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4176
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713- Verify whether the Internal provider should be able to view the error message This field is mandatory when Upload document field is not filled.(If no URL is provided)
      Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
  	Then user can see the Link, Document or Image Required to Publish error message
   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|



  @BDDTEST-EPP-4178
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal staff should be able to view the error message This field is mandatory when Category field is not filled.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
    Then user can see This is a required field under the Category Field
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|  

  @BDDTEST-EPP-4179
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal staff should be able to view the error message This field is mandatory when Title field is not filled.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
    Then user can see This is a required field under the Title Field
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|  

  @BDDTEST-EPP-4180
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal staff should be able to view the error message This field is mandatory when URL field is not filled.(If no documents uploaded)
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
  	Then user can see the Link, Document or Image Required to Publish error message
   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4181
  @Authentication
  @Automation
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1713 - Verify whether the Internal staff should be able to view the error message This field is mandatory when Upload document field is not filled.(If no URL is provided)
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
   	When user clicks on Publish button 
  	Then user can see the Link, Document or Image Required to Publish error message
   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    

  