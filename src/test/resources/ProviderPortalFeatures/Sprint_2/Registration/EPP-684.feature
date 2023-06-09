Feature: Provider Portal - Referring Provider registration Way 2 - via Marketing website (Provider Portal link)
  As a referring provider, I should be able to register to the Provider portal with required details via Provider Portal link in the Marketing website


  @BDDTEST-EPP-1785
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario: EPIC_EPP-121_STORY_EPP-684-Verify if an external provider is registered to the provider portal by visiting the market website.
    Given user launches the ProviderPortal url
    When user lands on providerportal
    When user sees Not a member? Create an account link in login page
    Then user clicks on Not a member? Create an account link
    And user lands on Registration screen
        
   @BDDTEST-EPP-1847
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if Cell field should not accept less than 10 numbers
  
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Cell "<Cell>" Number field
    Then user gets error message for Cell Invalid format
    Examples:
    |NPI Number|Taxonomy Code|Cell|
    |0123456789|12345689|9|
    
   

  @BDDTEST-EPP-1848
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if Fax should not accept less than 10 numbers
  
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Fax "<Fax>" Number field
    Then user gets error message for Fax Invalid format

    Examples:
    |NPI Number|Taxonomy Code|Fax|
     |1234567890|123456|123456789|


  @BDDTEST-EPP-1849
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify that if the proper error message is displayed when  the external provider enters a less than 9 digit  on the NPI field,
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    Then user sees NPI is invalid message
    Examples:
    |NPI Number|
    |1234567890|
      
   @BDDTEST-EPP-1813
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if Address line-1 is enabled and the External provider starts to type the address, dropdown should display the complete address options
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    |0123456789|123456|Opthalmology|Flat 123 Block 45 Down street|nagar|California|Los Angeles|123456|Abcd|1234567890|1111122222|user123@xyz.com|
      
      
   @BDDTEST-EPP-1826
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-  Verify if Fax is Auto-populated and editable
        
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    
      
      @BDDTEST-EPP-1799
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if a Proper error message is displayed when the external provider Enter Special characters, Numbers, and combinations of special characters and numbers in the Last name text field.
        
		Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI number>" field
    When user enters combinations of special characters and numbers in "<Last Name>" field
    Then Invalid format is displayed under the Last Name field
    Examples:
    |NPI Number|Last Name|
    |1234567890|#$#$$4354|
    
  @BDDTEST-EPP-1787
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if the external provider Registration  Page consists of all attributes.
    
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    And user lands on Registration screen
    Then user sees the NPI, Description, Last Name, Middle Name, First Name, Birth Day, Gender, Specialzation, Back to login attributes in Register Account page
    And user provides input "<NPI Number>" field
    And user provides input on "<Last Name>" Last Name field
    And user provides input on "<First Name>" First Name field 
    And user clicks on Next: Specialization button
    Then user sees the fields Taxonomy Code, Classification, Specialisation
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
   Then user sees Practice Name, Address Line1, Address Line2, State, City, Zip, Office, Fax, Cell, E-mail, +Add Practise
    
    Examples:
    |NPI Number|First Name|Last Name|Taxonomy Code|
    |8888888888|Vignesh|Balaji|123456|

  @BDDTEST-EPP-1788
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if the NPI number field is enabled for the external provider
    
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    Then NPI text field accepts inputs
        
    Examples:
    |NPI Number|
    |123456780|

  @BDDTEST-EPP-1789
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if the external provider enters 9-digit NPI on the NPI field then mentioned fields are auto-populated based on NPI #.
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
   	And user provides input "<NPI Number>" field
   	Then user sees NPI is invalid message
   Examples:
   |NPI Number|
   |123456789|
    
    
    
  @BDDTEST-EPP-1794
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if a Proper error message is displayed when the external provider Enter Special characters, Numbers, and combinations of special characters and numbers in the first name text field.
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user enters combinations of special characters and numbers in first name "<First Name>" field
    Then Invalid format is displayed under the First name field
       
    Examples:
    |NPI Number|First Name|
    |8888888888|!@123|
    
     
    @BDDTEST-EPP-1805
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if the Taxonomy code field is enabled for the external provider
   Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page

    Examples:
    |NPI Number|Taxonomy Code|
    |0123456789|123456|
    

  @BDDTEST-EPP-1806
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if the Taxonomy code is Auto-populated based on NPI number
    
		Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    When user clicks on Next: Specialization button
    Then Taxonomy code is Auto-populated based on NPI number
    Examples:
    |NPI Number|
    |1234567890|
    
 

 
  @BDDTEST-EPP-1829
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if Cell is Auto-populated and editable
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user provides input Cell "<Cell>" Number field
    
    Examples:
    |NPI Number|Taxonomy Code|Cell|
    |0123456789|123456|1234567890|
    
    
   @BDDTEST-EPP-1832
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if Email address is Auto-populated and editable
    
       
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user enters uppercase and lowercase alphabets on "<Address line-1>" field 
    
    Examples:
    |NPI Number|Taxonomy Code|Address line-1|
    |3456789012|123456|no 21 Renolds road photon Infotech|
    
    
     @BDDTEST-EPP-1834
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if the external provider can add maximum 5 practices by clicking Add Practice<Link> 
    
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    |0123456789|123456|

  @BDDTEST-EPP-1835
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if the Add Practice is disabled after adding 5 successful practices.
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
    And user provides input "<NPI Number>" field
    And user clicks on Next: Specialization button
    Then user can see Specialization page
    When user provides input Taxonomy "<Taxonomy Code>" field 
    And user clicks on Next: Office Details button
    Then user sees the Office Details page
    And user clicks on +Add Practice link one
    And user clicks on +Add Practice link two
    And user clicks on +Add Practice link three
    And user clicks on +Add Practice link four
    Then  Add Practice link is disabled 
    
		 Examples:
    |NPI Number|Taxonomy Code|
    |2345678901|123456|

  @BDDTEST-EPP-1836
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if the external provider can be able to remove Practise by clicking Remove Practice link
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    
 
  @BDDTEST-EPP-1837
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684-Verify if Register button is enabled for external provider


    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    |0123456789|123456|Opthalmology|Flat 123 Block 45 Down street|nagar|California|Los Angeles|123456|Abcd|1234567890|1111122222|user123@xyz.com|


  @BDDTEST-EPP-1838
  @Authentication
  @Automation
  @Provider_Portal
  @Regression
  @Sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if the proper error message is displayed when the external provider kept all fields blank and clicks on Register button
    
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    
    

  @BDDTEST-EPP-1853
  @Regression
  @Authentication
  @Automation
  @Provider_Portal
  @sprint2
  Scenario Outline: EPIC_EPP-121_STORY_EPP-684- Verify if after successful registration external provider receives a message Your registration has been completed successfully! A link has been sent to your registered email to create your login password. Please check 
    
    Given user launches the ProviderPortal url
    When user clicks on Not a member? Create an account link
    Then user lands on Register Account page
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
    |0123456789|123456|Opthalmology|Flat 123 Block 45 Down street|nagar|California|Los Angeles|123456|Abcd|1234567890|1111122222|user123@xyz.com|
