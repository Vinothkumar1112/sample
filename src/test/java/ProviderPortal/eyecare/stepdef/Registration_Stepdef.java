package ProviderPortal.eyecare.stepdef;

import org.junit.Assert;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.Registration;

public class Registration_Stepdef extends Ui_Base {

	Registration registration = new Registration(DriverManager.getDriver());

	@Given("user is redirected to Register Account page when clicks on the received link")
	public void user_is_redirected_to_register_account_page_when_clicks_on_the_received_link() throws Exception {
		registration.launchRegistrationUrl();

	}

	@Then("user sees the NPI, Description, Last Name, Middle Name, First Name, Birth Day, Gender, Specialzation, Back to login attributes in Register Account page")
	public void user_sees_the_npi_description_last_name_middle_name_first_name_birth_day_gender_specialzation_back_to_login_attributes_in_register_account_page() {
		registration.regisgerPageElements();
	}

	@When("NPI text field accepts inputs")
	public void npi_text_field_accepts_inputs() {
		registration.valid_Npi();

	}

	@Then("uses gets auto populated values Description, Last Name, Middle Name, First Name, Birth Day, Gender")
	public void uses_gets_auto_populated_values_description_last_name_middle_name_first_name_birth_day_gender() {
		registration.get_Auto_Populatedvalues();

	}

	@Then("Invalid format is displayed under the First name field")
	public void invalid_format_is_displayed_under_the_first_name_field() {
		Assert.assertEquals(GetAttribute(registration.getTxtbox_firstname()), "");

	}

	@When("user enters combinations of special characters and numbers in {string} field")
	public void user_enters_combinations_of_special_characters_and_numbers_in_field(String lastname) {
		registration.enter_LastName(lastname);

	}

	@Then("Invalid format is displayed under the Last Name field")
	public void invalid_format_is_displayed_under_the_last_name_field() {
		Assert.assertEquals(GetAttribute(registration.getTxtbox_lastname()), "");

	}

	@Then("Taxonomy Code field is enabled and inputs are accepted")
	public void taxonomy_code_field_is_enabled_and_inputs_are_accepted() {
		registration.specialization_PageElements();

	}

	@Then("Taxonomy code is Auto-populated based on NPI number")
	public void taxonomy_code_is_auto_populated_based_on_npi_number() {
		registration.get_Auto_PopulatedvaluesSpecializaiton();

	}

	@When("user checked the Primary Practice checkbox")
	public void user_checked_the_primary_practice_checkbox() {
		registration.clickradio_Primarypractice();

	}

	@Then("user enters uppercase and lowercase alphabets on {string} field")
	public void user_enters_uppercase_and_lowercase_alphabets_on_field(String address1) {
		registration.enter_Addess1(address1);

	}

	@Then("user provides Email {string} field")
	public void user_provides_email_field(String email) {
		registration.enter_Email(email);

	}

	@Then("user sees Practice Name, Address Line1, Address Line2, State, City, Zip, Office, Fax, Cell, E-mail, +Add Practise, -Remove Practice")
	public void user_sees_practice_name_address_line1_address_line2_state_city_zip_office_fax_cell_e_mail_add_practise_remove_practice() {
		registration.officeDetailsPageElements();
	}

	@Then("user clicks on +Add Practice link")
	public void user_clicks_on_add_practice_link() {
		registration.click_Addpractice();

	}

	@Then("user provides input {string} two field")
	public void user_provides_input_two_field(String practice2) {
		registration.enter_Practicename2(practice2);

	}

	@When("user clicks on -Remove Practice link")
	public void user_clicks_on_remove_practice_link() {
		registration.click_Removepractice2();

	}

	@Then("filled practice is removed")
	public void filled_practice_is_removed() {
		try {

			Assert.assertFalse(registration.getTxtbox_Practicename2().isDisplayed());
		} catch (Exception e) {
			System.out.println("error occured inside findElementById  function" + e.getMessage());

		}

	}

	@Then("user provides input {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string}, {string} fields")
	public void user_provides_input_fields(String PracticeName, String AddressLine1, String AddressLine2, String State,
			String City, String Zip, String Office, String Fax, String Cell, String Email) {
		registration.enter_Details_OfficeDetailspage(PracticeName, AddressLine1, AddressLine2, State, City, Zip, Office,
				Fax, Cell, Email);

	}

	@Then("user clicks on Register button")
	public void user_clicks_on_register_button() {
		registration.click_Registerbtn();
	}

	@Then("user gets Your registration has been completed successfully! message")
	public void user_gets_your_registration_has_been_completed_successfully_message() {
		registration.getmessage_Success();

	}

	@When("user clear all mandatory fields")
	public void user_clear_all_mandatory_fields() {
		registration.clear_OfficeDetails();

	}

	@Then("user sees error message This is a required field is displayed under that field")
	public void user_sees_error_message_this_is_a_required_field_is_displayed_under_that_field() {
		registration.getmessage_Officepageerrors();
	}

	@When("user provides input on {string} First Name field")
	public void user_provides_input_on_first_name_field(String firstname) {
		registration.enter_FirstName(firstname);

	}

	@Then("user gets This is a required field message")
	public void user_gets_this_is_a_required_field_message() {
		registration.errormsg_FirstName();
		registration.errormsg_LastName();

	}

	@Then("user provides input Cell {string} Number field")
	public void user_provides_input_cell_number_field(String cell) {
		registration.enter_CellNum(cell);

	}

	@Then("user gets error message Please enter a valid Cell Number")
	public void user_gets_error_message_please_enter_a_valid_cell_number() {
		registration.errormsg_Cell();

	}

	@When("user clicks on Next: Specialization button")
	public void user_clicks_on_next_specialization_button() {
		registration.click_SplButton();

	}

	@Then("user can see Specialization page")
	public void user_can_see_specialization_page() {

		Assert.assertTrue(registration.getTxt_Specialization().isDisplayed());

	}

	@When("user clicks on Next: Office Details button")
	public void user_clicks_on_next_office_details_button() {
		registration.click_OfficeDetailsbtn();

	}

	@Then("user sees the Office Details page")
	public void user_sees_the_office_details_page() {
		Assert.assertTrue(registration.getTxt_OfficeDetailsPage().isDisplayed());

	}

	@Then("user provides input Fax {string} Number field")
	public void user_provides_input_fax_number_field(String faxnum) {
		registration.enter_FaxNum(faxnum);

	}

	@Then("clicks on Register button")
	public void clicks_on_register_button() {
		registration.click_Registerbtn();

	}

	@Then("user gets error message Please enter a valid Fax Number")
	public void user_gets_error_message_please_enter_a_valid_fax_number() {
		registration.errormsg_Fax();
	}

	@When("user lands on Register Account page")
	public void user_lands_on_register_account_page() {
		Assert.assertTrue(registration.getTxt_registeraccount().isDisplayed());

	}

	@When("user provides input {string} field")
	public void user_provides_input_field(String NPInumber) {
		registration.enter_NPInumber(NPInumber);

	}

	@Then("user sees NPI is invalid message")
	public void user_sees_npi_is_invalid_message() {
		registration.errormsg_Npi();

	}

	@When("user enters combinations of special characters and numbers in first name {string} field")
	public void user_enters_combinations_of_special_characters_and_numbers_in_first_name_field(String firstname) {
		registration.enter_FirstName(firstname);
	}

	@When("user provides input Taxonomy {string} field")
	public void user_provides_input_taxonomy_field(String taxonomy) {
		registration.enter_Taxonomy(taxonomy);

	}

	@Then("user provides input Practice Name {string} field")
	public void user_provides_input_practice_name_field(String practice) {
		registration.enter_PracticeName(practice);
	}

	@Given("user is redirected to Set Password page when clicks on the received link")
	public void user_is_redirected_to_set_password_page_when_clicks_on_the_received_link() throws Exception {
		registration.Set_Password_Url();

	}

	@Then("Set password page is displayed with a Username, Password text field, Confirm password text field, create account button and Back to login link")
	public void set_password_page_is_displayed_with_a_username_password_text_field_confirm_password_text_field_create_account_button_and_back_to_login_link() {
		registration.set_PasswordPageElements();
	}

	@Then("Set password page is displayed with a Username")
	public void set_password_page_is_displayed_with_a_username() {
		Assert.assertTrue(registration.getTxt_Username().isDisplayed());

	}

	@When("the user provides input password {string} field")
	public void the_user_provides_input_password_field(String password) {
		registration.enter_password(password);
	}

	@Then("page should not prompted any error message")
	public void page_should_not_prompted_any_error_message() {
		Assert.assertFalse(registration.getMsg_PasswordNotMatcherror().isDisplayed());

	}

	@Then("user sees the error message This is a required field")
	public void user_sees_the_error_message_this_is_a_required_field() {
		registration.errormsg_Passwords();

	}

	@Then("user gets success meassage Password has been set")
	public void user_gets_success_meassage_password_has_been_set() {
		registration.getmessage_PasswordSuccess();

	}

	@When("user provides input on {string} and {string} textboxes in Set Password page")
	public void user_provides_input_on_and_textboxes_in_set_password_page(String password, String confirmpassword) {
		registration.enter_Passwords(password, confirmpassword);
	}

	@When("user clicks on Create Account button")
	public void user_clicks_on_create_account_button() {
		registration.click_CreateAccount();

	}

	@Then("user should remain same page and success message would not display")
	public void user_should_remain_same_page_and_success_message_would_not_display() {
		Assert.assertTrue(registration.getTxt_SetPassword().isDisplayed());
	}

	@Then("user gets error message for Cell Invalid format")
	public void user_gets_error_message_for_cell_invalid_format() {
		registration.errormsg_Cell();
	}

	@Then("user clicks on +Add Practice link one")
	public void user_clicks_on_add_practice_link_one() {
		registration.click_Addpractice();

	}

	@Then("user clicks on +Add Practice link two")
	public void user_clicks_on_add_practice_link_two() {
		registration.click_Addpractice();

	}

	@Then("user clicks on +Add Practice link three")
	public void user_clicks_on_add_practice_link_three() {
		registration.click_Addpractice();

	}

	@Then("user clicks on +Add Practice link four")
	public void user_clicks_on_add_practice_link_four() {
		registration.click_Addpractice();

	}

	@Then("Add Practice link is disabled")
	public void add_practice_link_is_disabled() {
		try {
		Assert.assertFalse(registration.getBtn_AddPractice().isDisplayed());
		}
		catch (Exception e) {
			System.out.println("error occured inside findElementById  function" + e.getMessage());

		}

	}

	@Then("user gets error message for Fax Invalid format")
	public void user_gets_error_message_for_fax_invalid_format() {
		registration.errormsg_Fax();

	}

	@Then("user sees the fields Taxonomy Code, Classification, Specialisation")
	public void user_sees_the_fields_taxonomy_code_classification_specialisation() {
		registration.specialization_PageElements();

	}

	@Then("user sees Practice Name, Address Line1, Address Line2, State, City, Zip, Office, Fax, Cell, E-mail, +Add Practise")
	public void user_sees_practice_name_address_line1_address_line2_state_city_zip_office_fax_cell_e_mail_add_practise() {
		registration.officeDetailsPageElements();
	}

	@Then("user provides input on {string} Last Name field")
	public void user_provides_input_on_last_name_field(String lastname) {
		registration.enter_LastName(lastname);

	}

}
