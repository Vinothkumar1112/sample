#Feature: Provider Portal: Referring provider registration - Invitation link expiration reminder/ Invitation link expiration/ approve or reject reminder
  #USER STORY - As a Referring Provider, I should be informed when invitation link is about to expire
#
#
  #@BDDTEST-EPP-1232
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Regression
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if the ECP provider can  send a reminder through email to the external provider before the registration Invitation link expires.
    #Given user launches the email 'XXX' URL
    #When user provides "<Email id>" and "<Password>"
    #And click on login "button"
    #Then user Lands on the Main ECP 360+ Dashboard Page.
    #And user wants to send the Registration link to the External provider
    #When the user is not registered to the provider portal
    #Then the user sends a  reminder to the registered email address registration Invitation link expires within 'X' days/hrs.
    #When  user opens the email 
    #Then user can see the reminder email.
    #Examples:
    #|E-mail|
    #|Email Subject - Provider Portal invitation about to expire|
    #
    #|Email body |
    #
    #|Hi {user},|
    #
    #|The Provider Portal invitation about to expire. To access it, click {here}.|
    #
    #|Thanks,|
    #|Admin|
#
  #@BDDTEST-EPP-1233
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Regression
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258-Varify if proper error message displays when external provider clicks on expired registration  link.
    #Given user launches the email 'XXX' URL
    #When user provides "<Email id>" and "<Password>"
    #Then user sees the Registration invitation email sent by ECP.
    #When user clicks on the  Registration link after 'X' days/hrs
    #Then user sees error meassage '     '
    #Examples:
    #|Link|
#
  #@BDDTEST-EPP-1234
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Regression
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if the Admin can send a new registration invitation link to the requested external provider.
    #Given user launches the email 'XXX' URL
    #When user provides "<Email id>" and "<Password>"
    #And user lands on email home page screen
    #And click on Inbox
    #Then user sees the Registration invitation email
    #When user clicks on the Registration link after 24hrs
    #Then user sees the message Sorry! The invitation is not valid and has expired. Request a new link below and you will be notified when your new link is ready
    #When user clicks on the link.
    #Then the request is sent to the ECP admin.
    #And Admin Login to the ECP 360+ with a valid user name and password.
    #Then Admin sees the new registration request sent by an external provider.
    #And Admin sends the new registration link to the requested external provider.
    #Then user receives a new registration link to the registered mail id.
    #
    #Examples:
    #
    #Examples:
    #|old registration link|new registration link|
    #|www.xxxyyyzz.com|www.yyyzzzxxx.com|
#
    #Examples:
#
  #@BDDTEST-EPP-1236
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Regression
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if Admin receives a reminder will be a single mail consolidating all the referring provider after 24 hours to approve or reject a Referring Provider’s registration if he/she registers using the Marketing website'
    #Given user launches the email 'XXX' URL
    #When Navigate to Marketing Website
    #And click the Provider Portal button
    #And click the Not a member? Create an Account link
    #And fill in all the required details.
    #And clicks on the register button
    #And ECP 360+ receives a registration request.
    #When Admin does not approve or reject an external provider
    #Then after 24 hours, Admin receives single mail consolidating all the referring provider to approve or reject a Referring Provider’s 
    #
    #Examples:
    #|Subject - Reminder email to approve/reject Referring Provider’s registration|
    #|Body - |
    #|Hi Admin,|
    #|Please log in and approve/reject this {Referring Provider - Practise name}|
    #
    #|Thanks,|
    #|Admin|
#
  #@BDDTEST-EPP-1237
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Regression
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if Admin receives a Reminder every day 2 times at morning 8 am and afternoon 3 pm after 24 hours to approve or reject a Referring Provider’s registration if he/she registers using the Marketing website'
    #Given user launches the 'XXX' URL
    #When Navigate to Marketing Website
    #And click the Provider Portal button
    #And click the Not a member? Create an Account link
    #And fill in all the required details.
    #And clicks on the register button
    #And ECP 360+ receives a registration request.
    #When Admin does not approve or reject an user
    #Then after 24 hours, every day except for holidays, Admin receives a reminder to approve or reject an external provider at morning 8 am and afternoon 3 pm.
    #Examples:
    #|Subject - Reminder email to approve/reject Referring Provider’s registration|
    #|Body -| 
    #|Hi Admin,|
    #|Please log in and approve/reject this {Referring Provider - Practise name}|
    #
    #|Thanks,|
    #|Admin|
#
  #@BDDTEST-EPP-1244
  #@Regression
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if the Sorry! The invitation is not valid and has expired. Request a new link below and you will be notified when your new link is ready clicks on the expired Registration invitation link.
    #Given user launches the email 'XXX' URL
    #When user provides "<Email id>" and "<Password>"
    #Then External provider sees the Email Home page.
    #And click on Inbox
    #Then External provider sees the Registration invitation email
    #When user clicks on the Registration link after 24hrs
    #Then user sees the message Sorry! The invitation is not valid and has expired. Request a new link below and you will be notified when your new link is ready
    #Examples:
    #|username|password|

    
    
  #@BDDTEST-EPP-1235
  #@Authentication
  #@Automation
  #@Provider_Portal
  #@Sprint2
  #Scenario Outline: EPIC_EPP-121_STORY_EPP-258- Verify if  Admin can approve or reject a Referring Provider’s registration if he/she registers using the Marketing website'
    #Given external prover Launch  the Browser Enter 'XXX' URL
    #When Navigate to Marketing Website
    #And click the Provider Portal button
    #And click the 'Not a member? Create an Account link
    #And fill in all the required details.
    #And clicks on the register button
    #And ECP 360+ receives a registration request
    #Then an Admin can approve or reject an external provider. 
    