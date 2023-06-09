package ProviderPortal.eyecare.stepdef;

import org.junit.Assert;
import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.ForgotPassword;

public class Forgot_Password_Stepdef extends Ui_Base {

	ForgotPassword password = new ForgotPassword(DriverManager.getDriver());

	@Then("user sees  the Forgot Password link")
	public void user_sees_the_forgot_password_link() {
		Assert.assertTrue(password.getLink_ForgotPass().isDisplayed());
	}

	@Then("user sees Email or Username field")
	public void user_sees_email_or_username_field() {
		Assert.assertTrue(password.getTxtbox_username().isDisplayed());

	}

	@When("user provides {string} field")
	public void user_provides_field(String username) {
		password.enter_Username(username);
	}

	@When("user clicks on Submit button")
	public void user_clicks_on_submit_button() {
		password.click_Submit();

	}

	@Then("user should see heading A link has been sent to your registered email")
	public void user_should_see_heading_a_link_has_been_sent_to_your_registered_email() {
		password.find_MessageInternal();
	}

	@Then("user lands on Reset Password page")
	public void user_lands_on_reset_password_page() {
		Assert.assertTrue(password.getTxt_ResetPass().isDisplayed());

	}

	@Then("user sees Email or Username textbox")
	public void user_sees_email_or_username_textbox() {
		Assert.assertTrue(password.getTxtbox_username().isEnabled());

	}

	@Then("user sees Submit button")
	public void user_sees_submit_button() {
		Assert.assertTrue(password.getBtn_Submit().isDisplayed());

	}

	@Then("user sees Back to Login button")
	public void user_sees_back_to_login_button() {
		Assert.assertTrue(password.getLink_BacktoLogin().isDisplayed());

	}

	@Then("user should see heading A link has been sent to your registered email to reset your password. Please check")
	public void user_should_see_heading_a_link_has_been_sent_to_your_registered_email_to_reset_your_password_please_check() {
		password.find_MessageExternal();
	}

	@Then("user sees error message This is a required field")
	public void user_sees_error_message_this_is_a_required_field() {
		Assert.assertEquals(GetText(password.getTxt_RequiredField()), "This is a required field");
	}

	@Then("user provides incorrect {string}")
	public void user_provides_incorrect(String email) {
		password.enter_Username(email);

	}

	@Then("user provides incorrect {string} field")
	public void user_provides_incorrect_field(String username) {
		password.enter_Username(username);

	}

	@Then("user prompted with error message Incorrect Username or Email")
	public void user_is_prompted_with_error_message_incorrect_username_or_email() {
		Assert.assertEquals(GetText(password.getTxt_Incorrectemailoruser()),
				"Incorrect email or username. Please Try again.");
	}

	@Then("user provides primary phone number as {string} field")
	public void user_provides_primary_phone_number_as_field(String phone) {
		password.enter_Username(phone);
	}

	@Then("system validates the username provided by user")
	public void system_validates_the_username_provided_by_user() {
		Assert.assertFalse(password.getTxt_Incorrectemailoruser().isDisplayed());

	}

	@Then("user sees message as Please check your email to reset your password")
	public void user_sees_message_as_please_check_your_email_to_reset_your_password() {
		password.find_MessageInternal();

	}

	@Then("user navigates to login screen")
	public void user_navigates_to_login_screen() {
		Assert.assertTrue(password.getTxt_loginpage().isDisplayed());
	}

	@Then("user clicks Back to Login button")
	public void user_clicks_back_to_login_button() {
		password.click_BacktoLogin();
	}

	@Then("Password Reset should be aborted")
	public void password_reset_should_be_aborted() {
		Assert.assertTrue(password.getLink_ForgotPass().isDisplayed());

	}

	@Then("page navigages back to login screen")
	public void page_navigages_back_to_login_screen() {
		Assert.assertTrue(password.getTxt_loginpage().isDisplayed());

	}

	@Then("user should not receive password reset link to their registered email")
	public void user_should_not_receive_password_reset_link_to_their_registered_email() {
		password.find_ErrorMessageExternal();
	}

	@When("user verifies the newpassword, confirmpassword, back to login, submit attributes in reset password page")
	public void user_verifies_the_newpassword_confirmpassword_back_to_login_submit_attributes_in_reset_password_page() {
		password.Create_NewPass();
	}

	@Then("user is prompted with an error message as Password does not match try again")
	public void user_is_prompted_with_an_error_message_as_password_does_not_match_try_again() {
		Assert.assertEquals(GetText(password.getMsg_Passwordnotmatch()), "Passwords do not match. Try again");

	}

	@Then("user clicks on Create New Password page submit button")
	public void user_clicks_on_create_new_password_page_submit_button() {
		password.click_Password_Submit();

	}

	@Given("user is redirected to password reset page when clicks on the received link")
	public void user_is_redirected_to_password_reset_page_when_clicks_on_the_received_link() throws Exception {
		password.Forgot_Password_Url();

	}

	@When("user provides input on {string} and {string} textboxes")
	public void user_provides_input_on_and_textboxes(String password1, String password2) {
		password.enter_Passwords(password1, password2);

	}

	@When("user clicks on Back to login button")
	public void user_clicks_on_back_to_login_button() {
		password.click_BackLogin();

	}

	@Then("user redirects to login screen")
	public void user_redirects_to_login_screen() {
		Assert.assertTrue(password.getTxt_loginpage().isDisplayed());

	}

	@Then("user get success message overlay your password was reset successfully with a login page link")
	public void user_get_success_message_overlay_your_password_was_reset_successfully_with_a_login_page_link() {
		Assert.assertEquals(GetText(password.getMsg_ResetSuccess()), "Your password was reset successfully");
	}

	@When("user lands on Create New Passord screen")
	public void user_lands_on_create_new_passord_screen() {
		Assert.assertTrue(password.getTxt_titlenewpassword().isDisplayed());

	}

	@When("user should remain on the same page")
	public void user_should_remain_on_the_same_page() {
		password.Create_NewPass();

	}

}
