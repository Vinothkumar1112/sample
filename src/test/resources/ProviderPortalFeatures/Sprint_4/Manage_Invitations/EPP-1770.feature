
Feature: Provider Portal: View invitations sent to referring provider
  

  @BDDTEST-EPP-4410
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations with the below information Provider Name, NPI #, Practice Name, Practice Address, Practice Email, Practice Phone, Invited Date, Status, Cancel Invite, Cancelled by, Cancelled on, Resend Invite 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4411
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin is able to sort the list by referring to the provider name
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitation list
    And admin clicks on the sorting icon to sort the provider name
    And admin able to see the sorting order of provider name
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4412
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin is able to sort the list by referring to the status.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitation list
    And admin clicks on the sorting icon to sort the status
    And admin able to see the sorting order of the status
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4413
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin is able to sort the list by referring to the invited date
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitation list
    And admin clicks on the sorting icon to sort the below column provider name, status and invited date
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4414
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring provider name
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enters the "<provider_name>"
    And admin able to see the provider name search results
    Examples:
    |adminname or Phone number|Password|provider_name|
    |Admin1|******|Abcde|
    |Admin2|******|Abcdef|

  @BDDTEST-EPP-4415
  @Authentication
  @Pr1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring email.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enters the "<email>" to search
    And admin able to see the search results
    Examples:
    |adminname or Phone number|Password|email|
    |Admin1|******|xxxxxxx@gmail.com|
    |Admin2|******|yyyyyyy@gmail.com|

  @BDDTEST-EPP-4416
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring phone number
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enter the "<phone_number>" to search
    And admin able to see the search results
    Examples:
    |adminname or Phone number|Password|phone_number|
    |Admin1|******|1234567890|
    |Admin2|******|0987654321|

  @BDDTEST-EPP-4417
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring invalid provider name and get the error message
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enters the invalid provider name
    And admin able to see the error message
    Examples:
    |adminname or Phone number|Password|provider_name|
    |Admin1|******|Abcde|
    |Admin2|******|Abcdef|

  @BDDTEST-EPP-4418
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring to the not registered email and get the error message
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enters the not registered "<email>" to search
    And admin able to see the error message
    Examples:
    |adminname or Phone number|Password|email|
    |Admin1|******|xxxxxxx@gmail.com|
    |Admin2|******|yyyyyyy@gmail.com|

  @BDDTEST-EPP-4419
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to search the list by referring to the not registered phone number and get the error message.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin clicks on the search field
    And admin enter the not registered "<phone_number>" to search
    And admin able to see the error message
    Examples:
    |adminname or Phone number|Password|phone_number|
    |Admin1|******|1234567890|
    |Admin2|******|0987654321|

  @BDDTEST-EPP-4420
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin shouid not see the cancel option to cancel an invite which is in Requested status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Requested’ status
    And admin should not see any cancel option
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4421
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to see the cancel option to cancel an invite which is in Pending status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the cancel option to cancel the invite
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4422
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to track the invitation as a Pending status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin sees the status of the invitation as Pending status 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4423
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to track the invitation as a Expired status.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin sees the status of the invitation as Expired status 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4424
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to track the invitation as a Requested status.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin sees the status of the invitation as the Requested status 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4425
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to track the invitation as a Cancelled status.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin sees the status of the invitation as Cancelled status 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4426
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to track the invitation as a Registered status.
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin sees the status of the invitation as Registered status 
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4427
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to see the resend the invite which is in Pending status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4428
  @Authentication
  @Pr1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal  when page is refreshed
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin refresh the page and it should not break
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4429
  @Authentication
  @Pr1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal page should load with in 3sec
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And the Referral Portal should loads in 3sec
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4430
  @Authentication
  @Pr1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal and get the error message when service is unavailable
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin see the error message when service unavailable
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4431
  @Authentication
  @Pr1
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal and get the error message when internet is unavailable
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin see the error message when internet is unavailable
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4432
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin able to view all the invitations sent to referring providers through provider portal and admin should not see any error when click on the F12
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations
    And admin click on the F12
    Then admin lands on the console sereen
    And admin should not see any error
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|

  @BDDTEST-EPP-4544
  @Authentication
  @Pr1
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1770 - Verify the admin shouid not see the cancel option to cancel an invite which is in Requested status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Requested’ status
    And admin should not see any cancel option
    Examples:
    |adminname or Phone number|Password|
    |Admin1|******|
    |Admin2|******|
