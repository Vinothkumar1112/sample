@BDDSTORY-EPP-1720
@Pr3
@Provider_Portal
@Provider_View_Information
Feature: Provider Portal: View Information - Admin remove an information
  As an admin, I should be able to remove an information, which is published by internal provider / internal staff 

  Acceptance criteria: 

  GIVEN admin has logged into the provider portal 

  And admin is in a screen where he/she can remove an information 

  And admin is viewing all the information published by all the internal providers and internal staffs 

  WHEN admin clicks on the option to remove an information 

  THEN admin should be asked to provide the reason for removing the information with below attributes 

  | Field name           | Details                            | Mandatory / optional  |
  |----------------------|------------------------------------|-----------------------|
  | Reason for removing  |                                    | Mandatory             |
  |----------------------|------------------------------------|-----------------------|
  | Remove               | Remove the respective information  | NA                    |
  |----------------------|------------------------------------|-----------------------|
  | Cancel               | Abort the removal activity         | NA                    |

   

  And admin should be able to remove the information upon clicking on the ‘Remove’ button

  And if the admin removed an information, then the respective information should not be available to internal providers and internal staff to view.  

  And the status of the information should be updated and shown as 'Inactive’ and the reason provided by admin should be displayed under comments column to the publisher in his/her view screen of self-published information 

  And if the admin cancels the removal activity, then the information should remain unchanged  

  @BDDTEST-EPP-4293
  @Authentication
  @Pr3
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to view & click Remove button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Examples:
    |Remove|
    |Remove|

  @BDDTEST-EPP-4294
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to view Remove document pop up screen upon click Remove button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page. 
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4295
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to view Reason for Rejection to provide in Reason text field
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page. 
    And admin should see Reason in Text field. 
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4296
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to enter comments in Reason text field
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page. 
    And admin enter comments in Reason Text field. 
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4297
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to enter comments in Reason text field should allow max upto 50 characters
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    And admin should enter max upto 50 character in reason of rejection text field
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4298
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify the error message if admin enter comments more than 50 characters in Reason text field
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    And admin enter more than 50 character in reason of rejection field
    Then admin should see Appropriate Error message 
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4299
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to view Reason text field as mandatory
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    And admin should see reason of rejection as a mandatory field
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4300
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify the error message if admin leave the Reason text field blank & click on Remove button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    Then admin leave the reason for rejection in text field as empty 
    And admin click on submit button 
    And admin should see Appropriate error message 
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4301
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to remove the information upon click the ‘Remove’ button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    When admin should enter max of 50 character in reason of rejection field
    Then admin should click on remove button
    And admin should see information removed from page
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4302
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to see information unchanged upon click the Cancel button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    Then admin enter reason for rejection in text field 
    When admin click on Cancel button
    Then admin should see information remains same in the page
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4303
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify the success message if admin removed the information upon click the Remove button
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    Then admin enter the comments upto max 50 characters in Reason field 
    And admin click on Remove button 
    And admin should see the success message "Documents Has Been Removed Successfully!"
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4304
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin able to view the status as Inactive after removed the information
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    Then admin enter the comments upto max 50 characters in Reason field 
    And admin click on Remove button 
    And admin should see the success message "Documents Has Been Removed Successfully!"
    Then admin should see the Status of the removed information as Inactive in the View Page
    Examples:
    |Reason|
    |Wrong Provider|

  @BDDTEST-EPP-4305
  @Authentication
  @Automation
  @Pr3
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-114_STORY_EPP-1720-Verify if admin see the reason for rejection in the comments column to the publisher
    Given admin Launch the Provider Portal URL
    When admin enter valid Email or phone number and Password 
    And admin clicks on login button
    Then admin lands onto the provider portal home page
    And admin should see View Document menu and navigate to screen 
    Then admin should see remove option for the information published
    And admin mouse over to & click on remove button
    Then admin should see Remove document popup screen in the same page.
    Then admin enter the comments upto max 50 characters in Reason field 
    And admin click on Remove button 
    And admin should see the success message "Documents Has Been Removed Successfully!"
    Then admin should see the Status of the removed information as Inactive in the View Page
    And admin should see Reason for Rejection comments to the publisher 
    Examples:
    |Reason|
    |Wrong Provider|
