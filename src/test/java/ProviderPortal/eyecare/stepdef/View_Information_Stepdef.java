package ProviderPortal.eyecare.stepdef;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.ViewInformation;

public class View_Information_Stepdef extends Ui_Base {

	ViewInformation viewinformation = new ViewInformation(DriverManager.getDriver());

	@When("user clicks Settings button")
	public void user_clicks_settings_button() {
		viewinformation.click_Settings();

	}

	@When("user clicks on Categories and Subspecialities option under Admin Settings")
	public void user_clicks_on_categories_and_subspecialities_option_under_admin_settings() {
		viewinformation.click_Categories_Subspecialities();

	}

	@When("User selects Category master page")
	public void user_selects_category_master_page() {
		viewinformation.click_Categories();

	}

	@Then("User lands on the Category master page")
	public void user_lands_on_the_category_master_page() {
		viewinformation.category_Page();

	}

	@When("user clicks on Create Category button")
	public void user_clicks_on_create_category_button() {
		viewinformation.click_Create_Category();

	}

	@When("user sees the attributes for creating a new  Category Name, Accessible to, Save, and Cancel button")
	public void user_sees_the_attributes_for_creating_a_new_category_name_accessible_to_save_and_cancel_button() {
		viewinformation.attributes_Create_Category();

	}

	@When("user selects All radio button under Accessible to")
	public void user_selects_all_radio_button_under_accessible_to() {
		viewinformation.click_chkbox_All();

	}

	@When("user clicks Save button")
	public void user_clicks_save_button() {
		viewinformation.click_Save_CreateCategory();

	}

	@Then("uses sees new category name under the Category Name")
	public void uses_sees_new_category_name_under_the_category_name() {
		viewinformation.compare_CategoryName();

	}

	@When("user enters a new {string} category name")
	public void user_enters_a_new_category_name(String categoryname) {
		viewinformation.enter_Category_Name(categoryname);
		viewinformation.get_Attribute_CategoryName();

	}

	@Then("user validates all the roles are selected by default")
	public void user_validates_all_the_roles_are_selected_by_default() {
		viewinformation.isselected_Accessibleto();
	}

	@When("user validates all the options are deselected under Accessible to")
	public void user_validates_all_the_options_are_deselected_under_accessible_to() {
		viewinformation.deselect_Accessibleto();

	}

	@Then("This is a required field is displayed under Accessible To field")
	public void this_is_a_required_field_is_displayed_under_accessible_to_field() {
		viewinformation.errormsg_RequiredField();

	}

	@When("user deselects All radio button under Accessible to")
	public void user_deselects_all_radio_button_under_accessible_to() {
		viewinformation.deselect_Accessibleto();
	}

	@Then("user sees This is a required field error message")
	public void user_sees_this_is_a_required_field_error_message() {
		viewinformation.errormsg_RequiredFields();

	}

	@Then("user validates the Status as Active for added category")
	public void user_validates_the_status_as_active_for_added_category() {
		viewinformation.check_Status();
	}

	@Then("user validates Last Modified date is today")
	public void user_validates_last_modified_date_is_today() {
		viewinformation.get_Today_Date();

	}

	@Then("user validates the Created by name matches with creator")
	public void user_validates_the_created_by_name_matches_with_creator() {
		viewinformation.compare_Usernames();

	}

	@Then("User should be able to view the list of all category names")
	public void user_should_be_able_to_view_the_list_of_all_category_names() {
		viewinformation.category_TableHeaders();

	}

	@Then("Admin should be able to sort the category")
	public void admin_should_be_able_to_sort_the_category() {
		viewinformation.categoryname_List();
		viewinformation.lastmodified_List();
		viewinformation.status_List();

	}

	@Then("user able to view Edit button")
	public void user_able_to_view_edit_button() {
		viewinformation.table_Edit_Button();

	}

	@When("user clicks on Edit button against a category name")
	public void user_clicks_on_edit_button_against_a_category_name() {
		viewinformation.click_Edit_Btn();

	}

	@Then("user able to modify the category name {string} and Accessible to user roles")
	public void user_able_to_modify_the_category_name_and_accessible_to_user_roles(String newcategoryname) {
		viewinformation.enter_Update_Category_Name(newcategoryname);
		viewinformation.get_Attribute_EditCategory_SubspecialName();
		viewinformation.Select_chkbox_Accessible();

	}

	@Then("uses sees updated category name under the Category Name")
	public void uses_sees_updated_category_name_under_the_category_name() {
		viewinformation.check_Category_Subspecial_Name();
	}

	@When("user clicks edit Save button")
	public void user_clicks_edit_save_button() {
		viewinformation.click_Edit_Save();
	}

	@When("user clicks edit Cancel button")
	public void user_clicks_edit_cancel_button() {
		viewinformation.click_Edit_Cancel();
	}

	@Then("user validates Catogory Name and Accessible to which should remain unchanged")
	public void user_validates_catogory_name_and_accessible_to_which_should_remain_unchanged() {
		viewinformation.check_Category_Subspeciality_NameNotChanged();

	}

	@Then("uses sees updated category name and accessible user roles details")
	public void uses_sees_updated_category_name_and_accessible_user_roles_details() {
		viewinformation.check_Category_Subspecial_Name();
		viewinformation.check_Accessible_Edit();

	}

	@Then("user will see inline error message as The Category name already exist!")
	public void user_will_see_inline_error_message_as_the_category_name_already_exist() {
		viewinformation.errormsg_NewNameExists();
	}

	@Then("user will see inline error message as The Category name already exist! for edit")
	public void user_will_see_inline_error_message_as_the_category_name_already_exist_for_edit() {
		viewinformation.errormsg_EditNameExists();
	}

	@When("user enters a updated {string} category name")
	public void user_enters_a_updated_category_name(String updatedname) {
		viewinformation.enter_Update_Category_Name(updatedname);
		viewinformation.get_Attribute_EditCategory_SubspecialName();

	}

	@Then("user selects Category Name which is in Inactive status")
	public void user_selects_category_name_which_is_in_inactive_status() {
		viewinformation.button_Activate_Deactivate();
	}

	@Then("user clicks on Activate button")
	public void user_clicks_on_activate_button() {
		viewinformation.select_Category_Subspcial_Name();

	}

	@Then("user clicks on Confirm Activate?")
	public void user_clicks_on_confirm_activate() {
		viewinformation.click_Confirm_Activate();

	}

	@Then("user gets sucess message Activated")
	public void user_gets_sucess_message_activated() {
		viewinformation.successmsg_Category_Subspecial_Activated();

	}

	@Then("user can see Confirm activate? and Cancel buttons")
	public void user_can_see_confirm_activate_and_cancel_buttons() {
		viewinformation.popup_ConfirmActivate_Cancel();

	}

	@When("user clicks on Cancel button")
	public void user_clicks_on_cancel_button() {
		viewinformation.click_Cancel_Activate();

	}

	@Then("Inactive category name should not activated")
	public void inactive_category_name_should_not_activated() {
		viewinformation.check_Status_Inactive();

	}

	@Then("user sees the updated status of the Category Name as Active")
	public void user_sees_the_updated_status_of_the_category_name_as_active() {
		viewinformation.check_Status_Active();

	}

	@Then("user selects Category Name which is in Active status")
	public void user_selects_category_name_which_is_in_active_status() {
		viewinformation.button_Activate_Deactivate();

	}

	@Then("user clicks on Deactivate button")
	public void user_clicks_on_deactivate_button() {
		viewinformation.deactivate_CategoryName();

	}

	@Then("user clicks on Confirm Deactivate?")
	public void user_clicks_on_confirm_deactivate() {
		viewinformation.click_Confirm_Dectivate();

	}

	@Then("user gets sucess message Deactivated")
	public void user_gets_sucess_message_deactivated() {
		viewinformation.successmsg_CategoryDeactivated();

	}

	@Then("user can see Confirm deactivate? and Cancel buttons")
	public void user_can_see_confirm_deactivate_and_cancel_buttons() {
		viewinformation.popup_ConfirmDeactivate_Cancel();

	}

	@Then("Inactive category name should not deactivated")
	public void inactive_category_name_should_not_deactivated() {
		viewinformation.check_Status_Active();

	}

	@Then("user sees the updated status of the Category Name as Inactive")
	public void user_sees_the_updated_status_of_the_category_name_as_inactive() {
		viewinformation.check_Status_Inactive();

	}

	@When("user clicks on Deactive Cancel button")
	public void user_clicks_on_deactive_cancel_button() {
		viewinformation.click_Cancel_Deactivate();

	}

	@When("User selects Subspeciality master page")
	public void user_selects_subspeciality_master_page() {
		viewinformation.click_Subspeciality();

	}

	@Then("User lands on the Subspeciality master page")
	public void user_lands_on_the_subspeciality_master_page() {
		viewinformation.subspeciality_page();

	}

	@When("user clicks on Create Subspeciality button")
	public void user_clicks_on_create_subspeciality_button() {
		viewinformation.click_Create_Subspeciality();

	}

	@When("user sees the attributes for creating a new Subspeciality Name, Accessible to, Save, and Cancel button")
	public void user_sees_the_attributes_for_creating_a_new_subspeciality_name_accessible_to_save_and_cancel_button() {
		viewinformation.attributes_Create_Subspeciality();
	}

	@When("user enters a new Subspeciality Name {string} category name")
	public void user_enters_a_new_subspeciality_name_category_name(String subspecial) {
		viewinformation.enter_Subspecial_Name(subspecial);
		viewinformation.get_Attribute_SubspecialName();

	}

	@When("user selects Subspeciality All radio button under Accessible to")
	public void user_selects_subspeciality_all_radio_button_under_accessible_to() {
		viewinformation.click_All_Subspecial();

	}

	@When("user clicks Subspeciality Save button")
	public void user_clicks_subspeciality_save_button() {
		viewinformation.click_Save_Subspecial();

	}

	@Then("uses sees new subspeciality name under the Subspeciality Name")
	public void uses_sees_new_subspeciality_name_under_the_subspeciality_name() {
		viewinformation.compare_SubspecialName();

	}

	@Then("user sees the appropriate validation message This is a required Field")
	public void user_sees_the_appropriate_validation_message_this_is_a_required_field() {
		viewinformation.errormsg_Subspeciality_Required();

	}

	@When("user will see inline error message as The subspeciality name already exists!")
	public void user_will_see_inline_error_message_as_the_subspeciality_name_already_exists() {
		viewinformation.errormsg_Subspeciality_name_exists();
	}

	@Then("user sees the appropriate validation message This is a required Field under Accessible to")
	public void user_sees_the_appropriate_validation_message_this_is_a_required_field_under_accessible_to() {
		viewinformation.errormsg_Accessible_Required();
	}

	@When("user deselects Subspeciality All radio button under Accessible to")
	public void user_deselects_subspeciality_all_radio_button_under_accessible_to() {
		viewinformation.click_Deselectsall_Subspecial();

	}

	@When("user clicks Subspeciality Cancel button")
	public void user_clicks_subspeciality_cancel_button() {
		viewinformation.click_Cancel_Subspecial();

	}

	@Then("user cannot see create subspeciality overlay")
	public void user_cannot_see_create_subspeciality_overlay() {
		viewinformation.subspeciality_page();

	}

	@Then("User should be able to view the list of all subspeciality names")
	public void user_should_be_able_to_view_the_list_of_all_subspeciality_names() {
		viewinformation.subspecial_TableHeaders();
	}

	@Then("Admin should be able to sort the subspeciality")
	public void admin_should_be_able_to_sort_the_subspeciality() {

		viewinformation.subspecialname_List();
		viewinformation.lastmodified_List();
		viewinformation.status_List();

	}

	@Then("user selects Subspeciality Name which is in Inactive status")
	public void user_selects_subspeciality_name_which_is_in_inactive_status() {
		viewinformation.subspecialbutton_Activate_Deactivate();
	}

	@When("user clicks on Edit button against a subspeciality name")
	public void user_clicks_on_edit_button_against_a_subspeciality_name() {
		viewinformation.click_Edit_Btn();

	}

	@Then("user able to modify the subspeciality name {string} and Accessible to user roles")
	public void user_able_to_modify_the_subspeciality_name_and_accessible_to_user_roles(String newsubspecialname) {

		viewinformation.enter_Update_Category_Name(newsubspecialname);
		viewinformation.get_Attribute_EditCategory_SubspecialName();
		viewinformation.Select_chkbox_Accessible();

	}

	@When("user clicks edit Save button subspeciality")
	public void user_clicks_edit_save_button_subspeciality() {
		viewinformation.click_Edit_Save();

	}

	@Then("uses sees updated subspeciality name under the Subspeciality Name")
	public void uses_sees_updated_subspeciality_name_under_the_subspeciality_name() {
		viewinformation.check_Category_Subspecial_Name();

	}

	@Then("user validates Subspeciality Name and Accessible to which should remain unchanged")
	public void user_validates_subspeciality_name_and_accessible_to_which_should_remain_unchanged() {
		viewinformation.check_Category_Subspeciality_NameNotChanged();

	}

	@Then("user sees This is a required field error message under subspeciality name field")
	public void user_sees_this_is_a_required_field_error_message_under_subspeciality_name_field() {
		viewinformation.errormsg_Subspeciality_nameedit_empty();
	}

	@Then("user will see edit inline error message as The subspeciality name already exists!")
	public void user_will_see_edit_inline_error_message_as_the_subspeciality_name_already_exists() {
		viewinformation.errormsg_Subspecialityedit_name_exists();

	}

	@Then("User should be able to view the list of all subspecialities names")
	public void user_should_be_able_to_view_the_list_of_all_subspecialities_names() {
		viewinformation.subspecial_TableHeaders();

	}

	@Then("user selects Subspecialities Name which is in Inactive status")
	public void user_selects_subspecialities_name_which_is_in_inactive_status() {
		viewinformation.button_Activate_Deactivate();

	}

	@Then("user sees Confirm Activate? popup")
	public void user_sees_confirm_activate_popup() {
		viewinformation.popup_ConfirmActivate_Cancel();

	}

	@Then("user sees the updated status of the Subspeciality Name as Active")
	public void user_sees_the_updated_status_of_the_subspeciality_name_as_active() {
		viewinformation.check_Status_Active();
	}
	
	@Then("user selects Subspeciality Name which is in Active status")
	public void user_selects_subspeciality_name_which_is_in_active_status() {
		viewinformation.button_Activate_Deactivate();
		
	}
	
	@Then("user sees Confirm Deactivate? popup")
	public void user_sees_confirm_deactivate_popup() {
		viewinformation.button_Activate_Deactivate();	
		
	}



	// viewinformation.errormsg_RequiredField();

}
