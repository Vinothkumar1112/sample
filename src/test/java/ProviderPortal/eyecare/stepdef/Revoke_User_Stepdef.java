package ProviderPortal.eyecare.stepdef;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.RevokeUser;

public class Revoke_User_Stepdef extends Ui_Base {

	RevokeUser revokeuser = new RevokeUser(DriverManager.getDriver());

	@Then("user clicks on Revoke User in dashboard")
	public void user_clicks_on_revoke_user_in_dashboard() {
		revokeuser.click_RevokeUser();

	}

	@Then("user sees list of referring providers with details of Name, Email, Phone, Account Status, Last Modified, Modified By, Action")
	public void user_sees_list_of_referring_providers_with_details_of_name_email_phone_account_status_last_modified_modified_by_action() {
		revokeuser.table_Header_Data();

	}

	@Then("user sees sort options All, Active, Inactive")
	public void user_sees_sort_options_all_active_inactive() {
		revokeuser.radio_Account_Status();

	}

	@Then("user sees list sorted by Name in alphabetical order")
	public void user_sees_list_sorted_by_name_in_alphabetical_order() {
		revokeuser.username_List();

	}

	@When("user clicks Account Status")
	public void user_clicks_account_status() {
		revokeuser.click_AccountStatus();

	}

	@Then("user sees list sorted by Account Status in alphabetical order")
	public void user_sees_list_sorted_by_account_status_in_alphabetical_order() {
		revokeuser.accountStatus_List();

	}

	@Then("user clicks radio button All in Account Status")
	public void user_clicks_radio_button_all_in_account_status() {
		revokeuser.click_AllRadio();

	}

	@When("user clicks Name")
	public void user_clicks_name() {
		revokeuser.click_Name();

	}

	@When("user clicks Last Modified")
	public void user_clicks_last_modified() {
		revokeuser.click_LastModified();

	}

	@Then("user sees list sorted by Last Modified in decending date order")
	public void user_sees_list_sorted_by_last_modified_in_decending_date_order() {
		revokeuser.lastModified_List();

	}

	@Then("user sees Activate or Deactivate button under Action category")
	public void user_sees_activate_or_deactivate_button_under_action_category() {
		revokeuser.tdata_Active_Deactive();

	}

	@Then("user sees the First Name or Last Name, Email, Phone Number text boxes to search referring providers")
	public void user_sees_the_first_name_or_last_name_email_phone_number_text_boxes_to_search_referring_providers() {
		revokeuser.search_Boxes();
	}

	@Then("admin sees list of referring providers relates to entered Name")
	public void admin_sees_list_of_referring_providers_relates_to_entered_name() {
		revokeuser.sorting_Name();

	}

	@Then("user can see the all the list of referring providers")
	public void user_can_see_the_all_the_list_of_referring_providers() {
		revokeuser.disply_Table();
	}

	@When("user clicks radio button Active in Account Status")
	public void user_clicks_radio_button_active_in_account_status() {
		revokeuser.click_ActiveRadio();
		revokeuser.get_Uname();

	}

	@Then("user can see the all the referring providers in Active status")
	public void user_can_see_the_all_the_referring_providers_in_active_status() {
		revokeuser.account_Status_Active_List();

	}

	@When("user clicks radio button Inactive in Account Status")
	public void user_clicks_radio_button_inactive_in_account_status() {
		revokeuser.click_InactiveRadio();
		revokeuser.get_Uname();

	}

	@Then("user can see the all the referring providers in Inactive status")
	public void user_can_see_the_all_the_referring_providers_in_inactive_status() {
		revokeuser.account_Status_Inactive_List();

	}

	@Then("user clears all the entered data in search field")
	public void user_clears_all_the_entered_data_in_search_field() {
		revokeuser.clear_SearchBoxes();

	}

	@Then("admin sees list of referring providers relates to entered Email")
	public void admin_sees_list_of_referring_providers_relates_to_entered_email() {
		revokeuser.sorting_Email();

	}

	@Then("admin sees list of referring providers relates to entered Phone Number")
	public void admin_sees_list_of_referring_providers_relates_to_entered_phone_number() {
		revokeuser.sorting_Phone();

	}

	@Then("user enters the Name {string} of the referring provider in the search field")
	public void user_enters_the_name_of_the_referring_provider_in_the_search_field(String Name) {
		revokeuser.enter_Name(Name);

	}

	@Then("user enters the Email {string} of the referring provider in the search field")
	public void user_enters_the_email_of_the_referring_provider_in_the_search_field(String Email) {
		revokeuser.enter_Email(Email);

	}

	@Then("user enters the Phone Number {string} of the referring provider in the search field")
	public void user_enters_the_phone_number_of_the_referring_provider_in_the_search_field(String Phone) {
		revokeuser.enter_PhoneNumber(Phone);
	}

	@When("user clicks Activate button to activate a selected referring provider")
	public void user_clicks_activate_button_to_activate_a_selected_referring_provider() {
		//revokeuser.get_Uname();
		revokeuser.click_Activate_Deactivate();

	}

	@Then("user sees Comfirm Activate? and Cancel in a popup message")
	public void user_sees_comfirm_activate_and_cancel_in_a_popup_message() {
		revokeuser.popup_Activate();

	}

	@When("user clicks Confirm Activate? option on popup message")
	public void user_clicks_confirm_activate_option_on_popup_message() {
		revokeuser.click_Confirm_Activate();

	}

	@When("user sees a success message Username Activated Successfully")
	public void user_sees_a_success_message_username_activated_successfully() {
		revokeuser.popup_Sucess();

	}

	@Then("user sees the updated status of the referring providers account as Active")
	public void user_sees_the_updated_status_of_the_referring_providers_account_as_active() {
		revokeuser.check_ActiveUserList();

	}

	@When("user clicks Deativate button to dectivate a selected referring provider")
	public void user_clicks_Deativate_button_to_activate_a_selected_referring_provider() {
		revokeuser.get_Uname();
		revokeuser.click_Activate_Deactivate();
	}

	@When("user clicks Confirm Deactivate? option on popup message")
	public void user_clicks_confirm_deactivate_option_on_popup_message() {
		revokeuser.click_Confirm_Deactivate();

	}

	@When("user sees a success message Username Deactivated Successfully")
	public void user_sees_a_success_message_username_deactivated_successfully() {
		revokeuser.popup_Sucess_Deactivation();

	}

	@Then("user sees the updated status of the referring providers account as Inactive")
	public void user_sees_the_updated_status_of_the_referring_providers_account_as_inactive() {
		revokeuser.check_DeactiveUserList();

	}

	@Then("user sees Comfirm Deactivate? and Cancel in a popup message")
	public void user_sees_comfirm_deactivate_and_cancel_in_a_popup_message() {
		revokeuser.popup_Deactivate();

	}

	@When("user clicks Cancel option on popup message")
	public void user_clicks_cancel_option_on_popup_message() {
		revokeuser.click_Cncl_Deactivate();

	}

	@Then("user aborted the deactivate process and respective referring provider should not get Deactivate")
	public void user_aborted_the_deactivate_process_and_respective_referring_provider_should_not_get_deactivate() {
		revokeuser.check_Cncl_deactiveUserList();
	}
	
	@When("user clicks Cancel option on activate popup message")
	public void user_clicks_cancel_option_on_activate_popup_message() {
		revokeuser.click_Cncl_Activate();

	}

	@Then("user aborted the activate process and respective referring provider should not get activate")
	public void user_aborted_the_activate_process_and_respective_referring_provider_should_not_get_activate() {
		revokeuser.check_Cncl_ActiveUserList();
	}
	





}
