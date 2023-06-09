
Feature: Provider Portal: View Information - View and access create information screen
  As an Internal provider / internal staff, I should be able to create an information 

  @BDDTEST-EPP-4350
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify that an Internal provider should be able to view the attributes in the Information creation screen
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-4351
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify that an Internal provider should be able to view the Field Names in the Information creation screen
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can see the Title, Subspeciality, Category, Link, Document, Publish and Cancel fields in the Upload Document screen
    
     Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    

    

  @BDDTEST-EPP-4352
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether user able to view the category names in the Category Field
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can see the list of Category names created by admin
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
 



  @BDDTEST-EPP-4354
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to select a category name in the Category Field
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can select the appropriate category name from the Select Category "<category>" list
    
    Examples:
    |emailorusername|password|category|
    |user1@photon.com|password1@photon|Optometry|
    
       
 

  @BDDTEST-EPP-4355
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the Category Field is mandatory in the Information creation screen
    
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
  

  @BDDTEST-EPP-4356
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should not be able to view the category names which are in ‘Inactive’ status
    
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user selects the inactive category name "<category>" in the Select Category field
   
    
    
    Examples:
    |emailorusername|password|category|
    |user1@photon.com|password1@photon|Optometrya|    
   

  @BDDTEST-EPP-4357
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to view the category names which are in ‘active’ status
   
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user selects the active category name "<category>" in the Select Category field
   
    Examples:
    |emailorusername|password|category|
    |user1@photon.com|password1@photon|Optometry| 
   


  @BDDTEST-EPP-4361
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify user should be able to provide URL of a web page
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can provide URL "<url>" of a web page in the Link Field
     
    Examples:
    |emailorusername|password|category|url|
    |user1@photon.com|password1@photon|Optometry|https://www.google.com|
    
    
  @BDDTEST-EPP-4363
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the URL Field is mandatory if document are not uploaded in the Information creation screen
   
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can provide URL "<url>" of a web page in the Link Field
   	When user clicks on Publish button 
  	Then user can see the Link, Document or Image Required to Publish error message
   
    Examples:
    |emailorusername|password|category|url|
    |user1@photon.com|password1@photon|Optometry||
   
   

  @BDDTEST-EPP-4364
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to remove the URL and re-upload a URL before publishing
    
     Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can provide URL "<url>" of a web page in the Link Field
    And user removes entered URL
    Then user enters another URL "<url1>" to the Link Field
     
    Examples:
    |emailorusername|password|category|url|url1|
    |user1@photon.com|password1@photon|Optometry|https://www.google.com|https://www.yahoo.com|
    
    




  @BDDTEST-EPP-4367
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the upload a document Field is mandatory or not in the Information creation screen
   
   
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



    
    

  @BDDTEST-EPP-4369
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether user able to view the sub-specialties in the Sub-Specialty Field
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can see the list of Subspeciality names created by admin
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
    


  @BDDTEST-EPP-4371
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to select a sub-specialty names in the sub-specialty Field
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can see the list of Subspeciality names created by admin
    Then user can select the appropriate Subspeciality "<subspeciality>" name present in the list
    
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|Dry Eye|
    


  @BDDTEST-EPP-4373
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should not be able to view the Sub-Specialty names which are in ‘Inactive’ status
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user selects the inactive subspeciality name "<subspeciality>" in the Select Subspeciality field
    
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|Dry Eye|    
    
    
  @BDDTEST-EPP-4374
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to view the Sub-Specialty names which are in ‘active’ status
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user selects the active subspeciality name "<subspeciality>" in the Select Subspeciality field
   
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|Dry Eye| 
    
    
   @BDDTEST-EPP-4375
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to select all sub-specialties to the information being created
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can see the list of Subspeciality names created by admin
    Then user can select all subspecialties to the information being created
    
    Examples:
    |emailorusername|password|subspeciality|
    |user1@photon.com|password1@photon|Dry Eye|
    
    


  @BDDTEST-EPP-4377
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to click on ‘Cancel’ CTA to abort the information creation
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can enters the title in the Title "<title>" Field
    And user can provide URL "<url>" of a web page in the Link Field
    Then user clicks on upload document Cancel button
    
    Examples:
    |emailorusername|password|subspeciality|title|url|
    |user1@photon.com|password1@photon|Dry Eye|Book|www.google.com|

  @BDDTEST-EPP-4378
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able navigate back to the view screen of self-published information after click on ‘Cancel’ CTA
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can enters the title in the Title "<title>" Field
    And user can provide URL "<url>" of a web page in the Link Field
    Then user clicks on upload document Cancel button
    And user can see self-published information
    
    Examples:
    |emailorusername|password|subspeciality|title|url|
    |user1@photon.com|password1@photon|Dry Eye|Book|www.google.com|
    
    
  @BDDTEST-EPP-4365
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify user should be able to upload a document (pdf or word/doc) or an image file (jpg, jpeg, png)
   
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
		And user can upload a document in pdf or doc or image file (jpg, jpeg, png) formats
     
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
  
  @BDDTEST-EPP-4368
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to remove the uploaded file and re-upload a field before publishing
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
		And user can upload a document in pdf or doc or image file (jpg, jpeg, png) formats
		And user can remove the uploaded document
		Then user can upload a document in pdf or doc or image file (jpg, jpeg, png) formats
     
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
 
    
    
  @BDDTEST-EPP-4376
  @Authentication
  @Automation
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1712 - Verify whether the user should be able to click on ‘Publish’ CTA to publish the information
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
    And user can enters the title in the Title "<title>" Field
		And user can select the appropriate Subspeciality "<subspeciality>" name present in the list
		And user can select the appropriate category name from the Select Category "<category>" list
		And user can provide URL "<url>" of a web page in the Link Field
		And user can upload a document in pdf or doc or image file (jpg, jpeg, png) formats
		Then user clicks on Publish button 
		
		 Examples:
    |emailorusername|password|subspeciality|title|url|category|
    |user1@photon.com|password1@photon|Dry Eye|Book|www.google.com|Optometry|
    
    
   
  