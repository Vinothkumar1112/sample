
Feature: Provider Portal: View Information - Validate file size when publishing an information
  As an internal provider / internal staff, I should be able to view the validation for maximum file size to upload 

  @BDDTEST-EPP-4184
  @Authentication
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1714- To verify whether the error message File size exceeds the maximum limit of 30MB is displaying when the Internal provider upload the image more than 30 MB.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
		And user can upload a document more than 30MB file size in pdf or doc or image file (jpg, jpeg, png) formats
    Then user can see the error message File size exceeds the maximum limit of 30MB
     
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    
   

  @BDDTEST-EPP-4185
  @Authentication
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1714-To verify whether the error message File size exceeds the maximum limit of 30MB is displaying when the Internal Staff upload the image more than 30 MB.
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    When user clicks on View Information button
    And user can see Upload Document button
    When user clicks on Upload Document button
    Then user can able to view the attributes to create and publish an information 
		And user can upload a document more than 30MB file size in pdf or doc or image file (jpg, jpeg, png) formats
    Then user can see the error message File size exceeds the maximum limit of 30MB
     
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|
    

  @BDDTEST-EPP-4186
  @Authentication
  @P2
  @Provider_Portal
  @Provider_View_Information
  @Sprint4
  @Regression
  @Automation
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1714- To verify whether its being in the same Information creation page after displaying the file size error message.
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
		And user can upload a document more than 30MB file size in pdf or doc or image file (jpg, jpeg, png) formats
		When user clicks on Publish button 
		Then user can see the error message File size exceeds the maximum limit of 30MB
		And user remains on the same Information creation page
		
		 Examples:
    |emailorusername|password|subspeciality|title|url|category|
    |user1@photon.com|password1@photon|Dry Eye|Book|www.google.com|Optometry|


  @BDDTEST-EPP-4188
  @Authentication
  @P1
  @Provider_Portal
  @Provider_View_Information
  @Regression
  @Automation
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1714-Verify whether its accepting the file which is less than 30MB.
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
    
