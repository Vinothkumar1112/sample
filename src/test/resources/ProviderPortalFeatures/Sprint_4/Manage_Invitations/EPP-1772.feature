
Feature: Provider Portal: Manage Invitation - Resend invitation to referring provider
 
  @BDDTEST-EPP-4443
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite to a referring provider, who has already been invited
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4444
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite to the Expired status
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Expired’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4445
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite to the Pending status.
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4446
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite to  invite which is in Requested status
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Requested’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4447
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite and exisiting invitate become invalid to the Pending status
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Expired’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And the exisiting invitate become invalid
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4448
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite and exisiting invitate become invalid to the Requested status
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Requested ’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And the exisiting invitate become invalid
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4449
  @Authentication
  @Pr2
  @Provider_Portal
  @Regression
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite and the invitate valid for 7 business days
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Requested ’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And the invitate valid for 7 business days.
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4450
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite when page is refreshed
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    And admin refresh the page and it should not break
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4451
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite the page should load with in 3sec
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    And the page should loads in 3sec
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4452
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite when the service is unavailable
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    And admin see the error message when Service is unavailable
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4453
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite when internet is unavailable
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    And admin see the error message when Service is unavailable
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|

  @BDDTEST-EPP-4454
  @Authentication
  @Pr2
  @Provider_Portal
  @Sprint4
  Scenario Outline: EPIC_EPP-160_STORY_EPP-1772 - Verify the admin able to resend an invite and admin should not see any error when click on the F12
    Given user launches ProviderPortal URL 'XXX'
    When admin A enter valid "<adminname or phone number>" and "<password>" 
    And click on the login button
    Then admin lands on the provider portal home page
    When the admin clicks on the Referral Portal menu on left
    Then admin lands on to Referral Portal screen 
    And admin should see all the invitations list
    And admin  see the invitation which is in ‘Pending’ status
    And admin see the option to resend the invite
    And click on the resend the invite button
    And admin see the success message as ‘Invitation sent’ 
    Then the invite sends to the primary practice email id
    And admin see the staus as Pending
    And admin see the who send the invite and invited date
    And admin clicks on the F12
    Then admin lands on the console sereen
    And admin should not see any error
    
    Examples:
    |adminname or Phone number|Password|
    |Admin1 | ******|
    |Admin 2| ******|
