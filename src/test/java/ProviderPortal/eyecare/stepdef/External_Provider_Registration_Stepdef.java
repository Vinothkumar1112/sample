package ProviderPortal.eyecare.stepdef;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.ExternalProviderRegistration;

public class External_Provider_Registration_Stepdef extends Ui_Base {

	ExternalProviderRegistration providerRegistration = new ExternalProviderRegistration(DriverManager.getDriver());

	@Then("user clicks on Referral Portal button")
	public void user_clicks_on_referral_portal_button() {
		providerRegistration.click_Referral_Portal();
	}

	@Then("user sees the list of referring providers with his or her Name, PracticeName, Email, Phone, date of registration")
	public void user_sees_the_list_of_referring_providers_with_his_or_her_name_practice_name_email_phone_date_of_registration() {
		providerRegistration.Pending_Approvals_Table();
	}

	@Then("user sees the list of referring providers with his or her First Name and Last Name")
	public void user_sees_the_list_of_referring_providers_with_his_or_her_first_name_and_last_name() {
		providerRegistration.pending_Approval_name_List();
	}

	@Then("user sees the list of referring providers with his or her Primary Practice Name")
	public void user_sees_the_list_of_referring_providers_with_his_or_her_primary_practice_name() {
		providerRegistration.pending_Approval_PracticeName();
	}

	@Then("user sees the list of referring providers with his or her Email")
	public void user_sees_the_list_of_referring_providers_with_his_or_her_email() {
		providerRegistration.pending_Approval_Email();
	}

	@Then("user sees the list of referring providers with his or her Phone Number")
	public void user_sees_the_list_of_referring_providers_with_his_or_her_phone_number() {
		providerRegistration.pending_Approval_List();
	}

	@Then("user can see the list of Referring providers with Approve button and Reject button")
	public void user_can_see_the_list_of_referring_providers_with_approve_button_and_reject_button() {
		providerRegistration.pending_Approvals_Approve_Reject();
	}

	@Then("user clicks on selected name in Pending Approvals list")
	public void user_clicks_on_selected_name_in_pending_approvals_list() {
		providerRegistration.click_FirstLastName();

	}

	@Then("user sees the all details of provider Personal information, Specialization and Office details provided during self registration")
	public void user_sees_the_all_details_of_provider_personal_information_specialization_and_office_details_provided_during_self_registration() {
		providerRegistration.check_Provider_Details();
	}

	@Then("user sees the all details of provider all the practice information provided during self registration")
	public void user_sees_the_all_details_of_provider_all_the_practice_information_provided_during_self_registration() {
		providerRegistration.check_Provider_Details();
	}

	@Then("user sees the comment field in referring provider details page")
	public void user_sees_the_comment_field_in_referring_provider_details_page() {
		providerRegistration.pending_Approvals_Comments();

	}

	@Then("user sees the Save button in referring provider details page")
	public void user_sees_the_save_button_in_referring_provider_details_page() {
		providerRegistration.pending_Approvals_Save();

	}

	@Then("user enters comment in the comment {string} field in referring provider details page")
	public void user_enters_comment_in_the_comment_field_in_referring_provider_details_page(String comment) {
		providerRegistration.enter_Comments(comment);

	}

	@Then("user clicks on comments Save button")
	public void user_clicks_on_comments_save_button() {
		providerRegistration.click_Save();
	}

	@Then("user sees the all details of provider Personal information and primary email provided during self registration")
	public void user_sees_the_all_details_of_provider_personal_information_and_primary_email_provided_during_self_registration() {
		providerRegistration.personal_Info_Email();
	}

	@Then("user sees the all details of provider Personal information and phone provided during self registration")
	public void user_sees_the_all_details_of_provider_personal_information_and_phone_provided_during_self_registration() {
		providerRegistration.personal_Info_Phone();
	}

	@Then("user clicks Approve button")
	public void user_clicks_approve_button() {
		providerRegistration.get_Uname();
		providerRegistration.click_Approve();

	}

	@Then("user gets popup box with Approve and Cancel buttons")
	public void user_gets_popup_box_with_approve_and_cancel_buttons() {
		providerRegistration.check_Popup_Approve_Cancel();

	}

	@Then("user clicks on popup Cancel button")
	public void user_clicks_on_popup_cancel_button() {
		providerRegistration.click_Cancel();

	}

	@Then("user should remains on same page")
	public void user_should_remains_on_same_page() {
		providerRegistration.Pending_Approvals_Table();
	}

	@Then("user sees the request status not changed")
	public void user_sees_the_request_status_not_changed() {
		providerRegistration.check_name_List();

	}

	@When("user clicks on popup Approve button")
	public void user_clicks_on_popup_approve_button() {
		providerRegistration.click_Popup_Approve_Reject();

	}

	@Then("user sees success message Invite Approved")
	public void user_sees_success_message_invite_approved() {
		providerRegistration.check_Sucess_msg();

	}

	@Then("user should not see the request name from the list which has been approved")
	public void user_should_not_see_the_request_name_from_the_list_which_has_been_approved() {
		providerRegistration.pending_Approval_Current_NameList();
	}

	@Then("user clicks Reject button")
	public void user_clicks_reject_button() {
		providerRegistration.click_Reject();

	}

	@Then("user gets popup box with Reason text box, Reject and Cancel buttons")
	public void user_gets_popup_box_with_reason_text_box_reject_and_cancel_buttons() {
		providerRegistration.popup_Elements_Reject();

	}

	@Then("user enters reject reason {string} in the text box")
	public void user_enters_reject_reason_in_the_text_box(String reject) {
		providerRegistration.enter_Reject_Reason(reject);

	}

	@Then("user clicks on popup Reject button")
	public void user_clicks_on_popup_reject_button() {
		providerRegistration.click_Popup_Approve_Reject();

	}

	@Then("user gets error message This is a required field")
	public void user_gets_error_message_this_is_a_required_field() {
		providerRegistration.check_Helpertext_Reject_Reason();

	}

	@Then("admin should see message Invite Rejected")
	public void admin_should_see_message_invite_rejected() {
		providerRegistration.check_Reject_Sucessmsg();
		
	}

}
