package ProviderPortal.eyecare.stepdef;



import org.junit.Assert;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.LoginPage;

public class LoginPage_Stepdef extends Ui_Base {
	
	

	LoginPage providerLoginPage = new LoginPage(DriverManager.getDriver());
	
	@Given("user launches the ProviderPortal url")
	public void user_launches_the_provider_portal_url() throws Exception {
	  providerLoginPage.launchUrl();
	}

	@When("user lands on providerportal")
	public void user_lands_on_providerportal() {
		Assert.assertTrue(providerLoginPage.getTxt_loginpage().isDisplayed());
	   
	}
	
	@When("user provides {string} and {string}")
	public void user_provides_and(String username, String password) {
		providerLoginPage.enter_Uname_Password(username, password);
	
	}
	
	@When("user clicks on Login button")
	public void user_clicks_on_login_button() {
		providerLoginPage.click_LoginBtn();
		
	}
	
	@Then("user lands on home page")
	public void user_lands_on_home_page() {
		Assert.assertTrue(providerLoginPage.getHomeBtn().isDisplayed());

	}
	
	@When("user sees username, password text boxes, Not a member? Create an account link & login button in the Login page")
	public void user_sees_username_password_text_boxes_not_a_member_create_an_account_link_login_button_in_the_login_page() {
		Assert.assertTrue(providerLoginPage.getUsernameTxt().isDisplayed());
		Assert.assertTrue(providerLoginPage.getPasswordTxt().isDisplayed());
		Assert.assertTrue(providerLoginPage.getLoginBtn().isDisplayed());
		Assert.assertTrue(providerLoginPage.getTxt_loginpage().isDisplayed());
		Assert.assertTrue(providerLoginPage.getLink_CreateAcc().isDisplayed());
		
	}
	@Then("user verifies the attributes present on login screen")
	public void user_verifies_the_attributes_present_on_login_screen() {
		Assert.assertTrue(providerLoginPage.getUsernameTxt().isEnabled());
		Assert.assertTrue(providerLoginPage.getPasswordTxt().isEnabled());
		Assert.assertTrue(providerLoginPage.getLoginBtn().isDisplayed());
		Assert.assertTrue(providerLoginPage.getLink_Username().isDisplayed());
		Assert.assertTrue(providerLoginPage.getLink_ForgotPass().isDisplayed());

	}
	
	@When("user sees forgot username link in login page")
	public void user_sees_forgot_username_link_in_login_page() {
		Assert.assertTrue(providerLoginPage.getLink_Username().isDisplayed());

	}
	@When("user clicks on Forgot usename link")
	public void user_clicks_on_forgot_usename_link() {
		providerLoginPage.click_ForgotUsername();

	}
	@Then("user sees forgot username hint message")
	public void user_sees_forgot_username_hint_message() {
		
		Assert.assertEquals(providerLoginPage.getMsg_Forgotusername().isDisplayed(),true);
		//Assert.assertEquals("For External provider - Your primary practise email is your username", "For External provider - Your primary practice email is your username");
		
	}

	@When("user sees forgot password link in login page")
	public void user_sees_forgot_password_link_in_login_page() {
		Assert.assertTrue(providerLoginPage.getLink_ForgotPass().isDisplayed());

	}
	
	@When("user clicks on Forgot Password link")
	public void user_clicks_on_forgot_password_link() {
		providerLoginPage.click_ForgotPass();
	 
	}
	
	@Then("user lands on forgot password page")
	public void user_lands_on_forgot_password_page() {
		Assert.assertTrue(providerLoginPage.getTxt_ForgotpassPage().isDisplayed());

	}
	
	@When("user sees Not a member? Create an account link in login page")
	public void user_sees_not_a_member_create_an_account_link_in_login_page() {
		Assert.assertEquals(providerLoginPage.getLink_CreateAcc().isDisplayed(),true);

	}
	
	@Then("user clicks on Not a member? Create an account link")
	public void user_clicks_on_not_a_member_create_an_account_link() {
		providerLoginPage.click_CreateAcc();

	}
	
	@Then("user lands on Registration screen")
	public void user_lands_on_registration_screen() {
		Assert.assertTrue(providerLoginPage.getTxt_RegisteraccPage().isDisplayed());
	
	}
	
	
	@Then("user prompted with error message The Password is required")
	public void user_prompted_with_error_message_the_password_is_required() {
		Assert.assertTrue(providerLoginPage.getTxt_PasswordHelper().isDisplayed());
	  
	}


	@Then("user prompted with error message Enter a valid Email or Username")
	public void user_prompted_with_error_message_enter_a_valid_email_or_username() {
		Assert.assertTrue(providerLoginPage.getTxt_UsernameHelper().isDisplayed());
	   
	}


	@Then("user remains on login page itself")
	public void user_remains_on_login_page_itself() {
		Assert.assertEquals(providerLoginPage.getTxt_loginpage().isDisplayed(),true);
	   
	}

	@Then("user prompted with error message Invalid Username or Password")
	public void user_prompted_with_error_message_invalid_username_or_password() {
	    Assert.assertEquals(providerLoginPage.getMsg_InvalidUserorPaswrd().isDisplayed(), true);
	}
	
	@Then("user prompted with error message Your account is locked due to invalid login attempts. Please try again later")
	public void user_prompted_with_error_message_your_account_is_locked_due_to_invalid_login_attempts_please_try_again_later() {
	   Assert.assertEquals(GetText(providerLoginPage.getMsg_AccountLocked()), "Your account is locked due to invalid login attempts. Please try again later");
	}

	@Then("user verify the home page with unsuccessful login attempts before, when the attempt didnt reach maximum count")
	public void user_verify_the_home_page_with_unsuccessful_login_attempts_before_when_the_attempt_didnt_reach_maximum_count() {
		Assert.assertTrue(providerLoginPage.getHomeBtn().isDisplayed());
	}

	@Then("user prompted with error message Your account is locked due to invalid login attempts. Please check your email to unlock it")
	public void user_prompted_with_error_message_your_account_is_locked_due_to_invalid_login_attempts_please_check_your_email_to_unlock_it() {
		Assert.assertEquals(GetText(providerLoginPage.getMsg_AccountLocked()), "Your account is locked due to invalid login attempts. Please check your email to unlock it");
	}

}
