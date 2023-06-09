
Feature: Provider Portal: Cancel an invitation


  @BDDTEST-EPP-4433
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite which is in Pending status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4434
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin should to cancel an invite, when clicks on the Deny button and the status is in Pending
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Deny button
    And the invite should not Cancel
    And admin see the same details displaying
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4435
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin shouid not see the cancel option to cancel an invite which is in Expired status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Expired’ status
    And admin should not see any cancel option
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4436
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin shouid not see the cancel option to cancel an invite which is in Cancelled status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Cancelled’ status
    And admin should not see any cancel option
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4437
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin shouid not see the cancel option to cancel an invite which is in Registered status
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Registered’ status
    And admin should not see any cancel option
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4438
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite at the time page is refreshed
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    And admin refresh the page and it should not break
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4439
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite and page should load with in 3sec
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    And the page should loads in 3sec
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4440
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite at the time the service is unavailable
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    And admin see the error message when service is unavailable
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4441
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite at the time the internet is unavailable
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    And admin see the error message when internet is unavailable
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4442
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin able to cancel an invite and admin should not see any error when click on the F12
    Given admin Launch the Browser Enter 'XXX' URL
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin clicks on the cancel button
    Then admin get the confirmation dialog box
    And admin clicks on the Confirm button to cancel
    Then admin see the success message as 'Invitation is cancelled'
    And admin see the staus as Canceled
    And admin see the who cancelled the invite and canceled date
    And admin clicks on the F12
    Then admin lands on the console sereen
    And admin should not see any error
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4548
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1771 - Verify the admin should not see the cancel option to cancel an invite which is in Requested status."

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
    |Admin1 | ******|
    |Admin 2| ******|
