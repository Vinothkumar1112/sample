Feature: Provider Portal - Referring Provider registration Way 1 - via Invitation link

  @BDDTEST-EPP-1032
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-191-Verify if the external provider Registration  Page consists of all attributes.
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    Then user sees the NPI, Description, Last Name, Middle Name, First Name, Birth Day, Gender, Specialzation, Back to login attributes in Register Account page
    
 
  @BDDTEST-EPP-1033
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if the external provider is in E360+ and enters NPI on the NPI field then mentioned fields are auto-populated based on NPI number
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And NPI text field accepts inputs
    Then uses gets auto populated values Description, Last Name, Middle Name, First Name, Birth Day, Gender
    
    Examples:
    |NPI Number|
    |1234567890|


  @BDDTEST-EPP-1036
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if a Proper error message is displayed when the external provider Enter Special characters, Numbers, and combinations of special characters and numbers in the first name text field.
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user enters combinations of special characters and numbers in first name "<First Name>" field
    Then Invalid format is displayed under the First name field
       
    Examples:
    |NPI Number|First Name|
    |9999999999|!@123|

  
  @BDDTEST-EPP-1041
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if a Proper error message is displayed when the external provider Enter Special characters, Numbers, and combinations of special characters and numbers in the Last name text field.
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user enters combinations of special characters and numbers in "<Last Name>" field
    Then Invalid format is displayed under the Last Name field
    Examples:
    |NPI Number|Last Name|
    |8888888888|#$#$$4354|

  @BDDTEST-EPP-1046
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if the "Taxonomy code" field is enabled for the external provider.
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    Then Taxonomy Code field is enabled and inputs are accepted
    Examples:
    |NPI Number|Taxonomy Code|
    |0123456789|123456|

  @BDDTEST-EPP-1047
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if the Taxonomy code is Auto-populated based on NPI number if external provier is in E360+
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user clicks on Next: Specialization button
    Then Taxonomy code is Auto-populated based on NPI number
    Examples:
    |NPI Number|
    |1234567890|


  @BDDTEST-EPP-1054
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if Address line-1 Type-ahead dropdown - text field is enabled and the External provider starts to type the address, dropdown should display the complete address options
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    When user checked the Primary Practice checkbox
    Then user provides input Practice Name "<Practice Name>" field
    And user enters uppercase and lowercase alphabets on "<Address line-1>" field 
    
    Examples:
    |NPI Number|Taxonomy Code|Practice Name|Address line-1|
    |1234567890|123456|Opthalmologynsssss|no 21 Renolds road photon Infotech|


  @BDDTEST-EPP-1067
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-  Verify if Fax Text field is Auto-populated and editable
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Fax "<Fax Number>" Number field
    Examples:
    |NPI Number|Taxonomy Code|Fax Number|
    |1234567890|123456|1234567890|

  @BDDTEST-EPP-1070
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if Cell Text field is Auto-populated and editable
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Cell "<Cell>" Number field
    Examples:
    |NPI Number|Taxonomy Code|Cell|
    |1234567890|123456|1234567890|


  @BDDTEST-EPP-1073
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if Email address Text field is Auto-populated and editable
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides Email "<Email>" field
    
    Examples:
    |NPI Number|Taxonomy Code|Email|
    |1234567890|123456|photon@gmail.com|


  @BDDTEST-EPP-1075
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if the external provider can add secondary practice by clicking Add Practice Link
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user clicks on +Add Practice link
    Then user sees Practice Name, Address Line1, Address Line2, State, City, Zip, Office, Fax, Cell, E-mail, +Add Practise, -Remove Practice
    
    Examples:
    |NPI Number|Taxonomy Code|
    |1234567890|123456|

  @BDDTEST-EPP-1076
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if the external provider can be able to remove Practise by clicking Remove Practice Link
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field  
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user clicks on +Add Practice link
    And user provides input "<Practice Name>" two field
    When user clicks on -Remove Practice link
    Then filled practice is removed
    Examples:
    |NPI Number|Taxonomy Code|Practice Name|
    |1234567890|123456|Opthalmology|

  @BDDTEST-EPP-1077
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-Verify if Register button is enabled for external provider
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field  
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input "<Practice Name>", "<Address Line1>", "<Address Line2>", "<State>", "<City>", "<Zip>", "<Office>", "<Fax>", "<Cell>", "<E-mail>" fields
    And user clicks on Register button
    Then user gets Your registration has been completed successfully! message
     Examples:
    |NPI Number|Taxonomy Code|Practice Name|Address Line1|Address Line2|State|City|Zip|Office|Fax|Cell|E-mail|
    |1234567890|123456|Opthalmology|Flat 123 Block 45 Down street|nagar|California|Los Angeles|123456|Abcd|1234567890|1111122222|user123@xyz.com|

  @BDDTEST-EPP-1078
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if the proper error message is displayed when the external provider kept all fields blank and clicks on Register button
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field  
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    When user clear all mandatory fields
    And user clicks on Register button
    Then user sees error message This is a required field is displayed under that field
   
    Examples:
    |NPI Number|Taxonomy Code|
    |1234567890|123456|

  @BDDTEST-EPP-1517
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-  Verify if the first name text field accepts 1 to 250 alphabet
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user provides input on "<First Name>" First Name field 
    And user provides input on "<Last Name>" First Name field 
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    
    Examples:
    |NPI Number|First Name|Last Name|
    |1234567890|a|Smith|
    |1234567890|abcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyz|Smith|

  @BDDTEST-EPP-1518
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-  Verify if the first name text field should not accept less than 1 and more than 251 alphabets.
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user provides input on "<First Name>" First Name field 
    And user provides input on "<Last Name>" First Name field 
    And user clicks on Next: Specialization button
    Then user gets This is a required field message
   Examples:
      |NPI Number|First Name|Last Name|
      |1234567890||Smith|
      |1234567890|abcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyz|Smith|
       
  @BDDTEST-EPP-1520
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191-  Verify if the last name text field should not accept less than 1 and more than 251 alphabets.
 Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user provides input on "<First Name>" First Name field 
    And user provides input on "<Last Name>" Last Name field 
    And user clicks on Next: Specialization button
    Then user gets This is a required field message
    Examples:
      |NPI Number|First Name|Last Name|
      |1234567890|Smith||
      |1234567890|Smith|abcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyzabcdefghiklmnopqrstuvwxyz|
      
      
  @BDDTEST-EPP-1521
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if Cell Text field should not accept less than 10 numbers
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Cell "<Cell>" Number field
    And user clicks on Register button
    Then user gets error message Please enter a valid Cell Number
    
    Examples:
    |NPI Number|Taxonomy Code|Cell|
    |1234567890|123456|123456789|
   

  @BDDTEST-EPP-1522
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify if Fax Text field should not accept less than 10 numbers
  
    Given user is redirected to Register Account page when clicks on the received link
    When user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Fax "<Fax>" Number field
    And user clicks on Register button
    Then user gets error message Please enter a valid Fax Number
    
    Examples:
    |NPI Number|Taxonomy Code|Fax|
     |1234567890|123456|123456789|


  @BDDTEST-EPP-1525
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-191- Verify that if the proper error message is displayed when  the external provider enters a less than 10 digit  on the NPI field,
   Given user is redirected to Register Account page when clicks on the received link
   When user lands on Register Account page
   And user provides input "<NPI Number>" field
   Then user sees NPI is invalid message
   Examples:
   |NPI|
   |123456789|

