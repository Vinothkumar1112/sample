
Feature: Provider Portal: Revoke user - Search a Referring provider
  As an admin, I should be able to search a referring provider by his/her first name, last name, email id and phone no. to view his/her account status.

  @BDDTEST-EPP-2118
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by his/her first name matching the list 
       
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    And user clicks on Revoke User in dashboard 
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers
    When user enters the Name "<name>" of the referring provider in the search field
    Then admin sees list of referring providers relates to entered Name
                                                                        

    Examples:
    |emailorusername|password|name|
    |user1@photon.com|password1@photon|user3|

  

  @BDDTEST-EPP-2120
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by his/her first name and last name matching the list
       
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page
    And user clicks on Revoke User in dashboard 
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers
    When user enters the Name "<name>" of the referring provider in the search field
    Then admin sees list of referring providers relates to entered Name
    And user sees Activate or Deactivate button under Action category                                                                         

    Examples:
    |emailorusername|password|name|
    |user1@photon.com|password1@photon|user1|

  

  @BDDTEST-EPP-2123
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by account status when selecting "All" radio button
   
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button All in Account Status
    Then user can see the all the list of referring providers
 
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2124
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by account status when selecting Active radio button
    
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button Active in Account Status
    Then user can see the all the referring providers in Active status
                                                                                                                                                   
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|

  @BDDTEST-EPP-2125
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by account status when selecting Inactive radio button
    
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    When user clicks radio button Inactive in Account Status
    Then user can see the all the referring providers in Inactive status
    
    Examples:
    |emailorusername|password|
    |user1@photon.com|password1@photon|



  @BDDTEST-EPP-2127
  @Automation
  @Provider_Portal
  @Reffering_Provider_Portal
  @Regression
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can clear the search field and able to view the list of all registered referring providers
      
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    And user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers
   	Then user enters the Name "<name>" of the referring provider in the search field
   	And user enters the Email "<email>" of the referring provider in the search field
   	And user enters the Phone Number "<phonenumber>" of the referring provider in the search field
   	And user clears all the entered data in search field
    When user clicks radio button All in Account Status
    Then user can see the all the list of referring providers
                            
    Examples:
    |emailorusername|password|name|email|phonenumber|
    |user1@photon.com|password1@photon|user2|user2@mockmail.com|2678901234|
    
    
    
  @BDDTEST-EPP-2121
  @Automation
  @Regression
  @Provider_Portal
  @Reffering_Provider_Portal
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by email matching the list
       
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    And user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers
    When user enters the Email "<email>" of the referring provider in the search field
    Then admin sees list of referring providers relates to entered Email
    
     Examples:
    |emailorusername|password|email|
    |user1@photon.com|password1@photon|user2@mockmail.com|

  @BDDTEST-EPP-2122
  @Automation
  @Regression
  @Provider_Portal
  @Reffering_Provider_Portal
  @Sprint3
  @View_Information
  Scenario Outline: EPIC_EPP-79_STORY_EPP-198 - Verify  if admin can search the referring provider by phone number matching the list
        
    Given user launches the ProviderPortal url
    When user lands on providerportal
    And user provides "<emailorusername>" and "<password>" 
    And user clicks on Login button
    Then user lands on home page                                                                     
    And user clicks on Revoke User in dashboard                                                                                        
    And user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action
    And user sees sort options All, Active, Inactive 
    And user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers
    When user enters the Phone Number "<phonenumber>" of the referring provider in the search field
    Then admin sees list of referring providers relates to entered Phone Number
    
     Examples:
    |emailorusername|password|phonenumber|
    |user1@photon.com|password1@photon|3678901234|

    