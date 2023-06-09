package ProviderPortal.eyecare.stepdef;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.InviteExternalProvider;

public class Invite_External_Provider_Stepdef extends Ui_Base{
	
	InviteExternalProvider invite=new InviteExternalProvider(DriverManager.getDriver());
	
	
	
	@Then("user can see NPI, First Name Last Name, Phone Number, Email ID text boxes")
	public void user_can_see_npi_first_name_last_name_phone_number_email_id_text_boxes() {
		invite.check_Input_Attributes();
	
	}
	@Then("user can enter NPI {string} number in the NPI search box")
	public void user_can_enter_npi_number_in_the_npi_search_box(String npi) {
		invite.enter_NPI(npi);
		invite.get_NPI();
	
	}
	@Then("user gets search results NPI matches with NexGen Database")
	public void user_gets_search_results_npi_matches_with_nex_gen_database() {
		invite.check_Search_Result_NPI();
	
	}
	@Then("user can enter First or Last Name {string} number in the First or Last Name search box")
	public void user_can_enter_first_or_last_name_number_in_the_first_or_last_name_search_box(String name) {
		invite.enter_Name(name);
		invite.get_Name();
	}
	@Then("user gets search results First or Last Name matches with NexGen Database")
	public void user_gets_search_results_first_or_last_name_matches_with_nex_gen_database() {
		invite.check_Search_Result_Name();

	}
	
	@Then("user can enter Email {string} number in the Email search box")
	public void user_can_enter_email_number_in_the_email_search_box(String email) {
		invite.enter_Email(email);
		invite.get_Email();		
	
	}
	@Then("user gets search results Email matches with NexGen Database")
	public void user_gets_search_results_email_matches_with_nex_gen_database() {
		invite.check_Search_Result_Email();
	
	}
	
	@Then("Provider Details should display with NPI, First Name, Last Name, Practice Name and Practice Email")
	public void provider_details_should_display_with_npi_first_name_last_name_practice_name_and_practice_email() {
	  invite.invite_Providers_Results();
	}
	@Then("user verify the Send Invite button is enabled")
	public void user_verify_the_send_invite_button_is_enabled() {
		invite.check_Result_Action();
	 
	}
	@When("user clicks on Send Invite button")
	public void user_clicks_on_send_invite_button() {
		invite.click_Result_Action();
	   
	}
	@Then("user gets success messgage Invite Sent")
	public void user_gets_success_messgage_invite_sent() {
		invite.check_Success_Result();

	}
	
	@Then("user verify the Resend Invite button is enabled")
	public void user_verify_the_resend_invite_button_is_enabled() {
		invite.check_Result_Resend_Invite();
	  
	}
	@When("user clicks on Resend Invite button")
	public void user_clicks_on_resend_invite_button() {
		invite.click_Result_Resent_Invite();

	}
	
	@When("user clicks on NPI number in search results")
	public void user_clicks_on_npi_number_in_search_results() {
		invite.click_Result_NPI();
	   
	}
	@Then("Provider Details should display with NPI, Provider Name, Practice Name, Practice Address, Practice Phone, Practice Fax, Practice URL and Practice Email")
	public void provider_details_should_display_with_npi_provider_name_practice_name_practice_address_practice_phone_practice_fax_practice_url_and_practice_email() {
	   
	}
	@Then("user clicks on Provider Details Close button")
	public void user_clicks_on_provider_details_close_button() {
		invite.click_Close();
	 
	}









}
