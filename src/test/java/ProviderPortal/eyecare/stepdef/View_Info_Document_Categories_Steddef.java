package ProviderPortal.eyecare.stepdef;

import java.awt.AWTException;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.ViewInfoDocumentCategories;

public class View_Info_Document_Categories_Steddef extends Ui_Base {

	ViewInfoDocumentCategories document = new ViewInfoDocumentCategories(DriverManager.getDriver());

	@When("user clicks on View Information button")
	public void user_clicks_on_view_information_button() {
		document.click_ViewInformation();
	}

	@When("user can see Upload Document button")
	public void user_can_see_upload_document_button() {
		document.check_UploadDocument();

	}

	@When("user clicks on Upload Document button")
	public void user_clicks_on_upload_document_button() {
		document.click_UploadDocument();

	}

	@Then("user can able to view the attributes to create and publish an information")
	public void user_can_able_to_view_the_attributes_to_create_and_publish_an_information() {
		document.check_attributes_UploadDocument();

	}

	@Then("user can see the Title, Subspeciality, Category, Link, Document, Publish and Cancel fields in the Upload Document screen")
	public void user_can_see_the_title_subspeciality_category_link_document_publish_and_cancel_fields_in_the_upload_document_screen() {
		document.check_attributes_UploadDocument();
	}

	@Then("user can see the list of Category names created by admin")
	public void user_can_see_the_list_of_category_names_created_by_admin() {
		document.getlist_Category();
	}

	@Then("user can select the appropriate category name from the Select Category {string} list")
	public void user_can_select_the_appropriate_category_name_from_the_select_category_list(String selectcategory) {
		document.drop_Category(selectcategory);

	}

	@When("user clicks on Publish button")
	public void user_clicks_on_publish_button() {
		document.click_Publish();

	}

	@Then("user can see This is a required field under the Category Field")
	public void user_can_see_this_is_a_required_field_under_the_category_field() {
		document.check_CategoryRequiredField();

	}

	@Then("user selects the inactive category name {string} in the Select Category field")
	public void user_selects_the_inactive_category_name_in_the_select_category_field(String inactivecategory) {
		document.drop_Inactive_Category(inactivecategory);

	}

	@Then("user selects the active category name {string} in the Select Category field")
	public void user_selects_the_active_category_name_in_the_select_category_field(String activecategory) {
		document.drop_Category(activecategory);

	}

	@Then("user can provide URL {string} of a web page in the Link Field")
	public void user_can_provide_url_of_a_web_page_in_the_link_field(String url) {
		document.enter_URL(url);

	}

	@Then("user can see the Link, Document or Image Required to Publish error message")
	public void user_can_see_the_link_document_or_image_required_to_publish_error_message() {
		document.check_Document_Link_RequiredField();
	}

	@Then("user removes entered URL")
	public void user_removes_entered_url() {
		document.clear_URL();
	}

	@Then("user enters another URL {string} to the Link Field")
	public void user_enters_another_url_to_the_link_field(String anotherurl) {
		document.enter_URL(anotherurl);

	}

	@Then("user can upload a document in pdf or doc or image file \\(jpg, jpeg, png) formats")
	public void user_can_upload_a_document_in_pdf_or_doc_or_image_file_jpg_jpeg_png_formats() throws AWTException {
		document.send_Documents();

	}

	@Then("user can see the list of Subspeciality names created by admin")
	public void user_can_see_the_list_of_subspeciality_names_created_by_admin() {
		document.getlist_Subspecial();

	}

	@Then("user can select the appropriate Subspeciality {string} name present in the list")
	public void user_can_select_the_appropriate_subspeciality_name_present_in_the_list(String activesubspeciality) {
		document.drop_Subspeciality(activesubspeciality);
	}

	@Then("user selects the inactive subspeciality name {string} in the Select Subspeciality field")
	public void user_selects_the_inactive_subspeciality_name_in_the_select_subspeciality_field(
			String inactivesubspeciality) {
		document.drop_Inactive_Subspeciality(inactivesubspeciality);
	}

	@Then("user selects the active subspeciality name {string} in the Select Subspeciality field")
	public void user_selects_the_active_subspeciality_name_in_the_select_subspeciality_field(
			String activesubspeciality) {
		document.drop_Inactive_Subspeciality(activesubspeciality);
	}

	@Then("user can select all subspecialties to the information being created")
	public void user_can_select_all_subspecialties_to_the_information_being_created() {
		document.click_All_Subspecial();
	}

	@Then("user can enters the title in the Title {string} Field")
	public void user_can_enters_the_title_in_the_title_field(String title) {
		document.enter_Title(title);
	}

	@Then("user clicks on upload document Cancel button")
	public void user_clicks_on_upload_document_cancel_button() {
		document.click_Cancel();

	}

	@Then("user can see self-published information")
	public void user_can_see_self_published_information() {
		document.click_All_MyDocuments();
	}

	@Then("user can see This is a required field under the Title Field")
	public void user_can_see_this_is_a_required_field_under_the_title_field() {
		document.check_Title_RequiredField();

	}

	@Then("user can remove the uploaded document")
	public void user_can_remove_the_uploaded_document() {
		document.click_RemoveDocument();
	}

	@Then("user can upload a document more than 30MB file size in pdf or doc or image file \\(jpg, jpeg, png) formats")
	public void user_can_upload_a_document_more_than_30mb_file_size_in_pdf_or_doc_or_image_file_jpg_jpeg_png_formats()
			throws AWTException {
		document.send_Document_More_MB();
	}

	@Then("user can see the error message File size exceeds the maximum limit of 30MB")
	public void user_can_see_the_error_message_file_size_exceeds_the_maximum_limit_of_30mb() {
		document.check_Errormsg_Uploaddoc();

	}

	@Then("user remains on the same Information creation page")
	public void user_remains_on_the_same_information_creation_page() {
		document.check_attributes_UploadDocument();
	}

	@When("user clicks on View Documents button under Document")
	public void user_clicks_on_view_documents_button_under_document() {
		document.click_Table_Document_Link();
	}

	@When("uer clicks on document link in overlay")
	public void uer_clicks_on_document_link_in_overlay() {
		document.click_Document_Popup();

	}

	@Then("user can view the document in another window in same format")
	public void user_can_view_the_document_in_another_window_in_same_format() {

	}

	@Then("user sees Title search box")
	public void user_sees_title_search_box() {
		document.check_Search_Box();

	}

	@Then("user sees Subspeciality search box")
	public void user_sees_subspeciality_search_box() {
		document.check_Search_Box();

	}

	@Then("user sees Publisher Name search box")
	public void user_sees_publisher_name_search_box() {
		document.check_Search_Box();

	}

	@Then("user sees list of information with component")
	public void user_sees_list_of_information_with_component() {
		document.check_View_Information();

	}

	@When("user enters the {string} to Title search box")
	public void user_enters_the_to_title_search_box(String title) {
		document.enter_Title_Search(title);
		document.get_Attribute_Title_Search();

	}

	@Then("user able to see the search result according search title")
	public void user_able_to_see_the_search_result_according_search_title() {
		document.search_Result_Title();

	}

	@When("user enters the {string} to Subspeciality search box")
	public void user_enters_the_to_subspeciality_search_box(String subspecial) {
		document.enter_Subspeciality_Search(subspecial);
		document.get_Attribute_Subspecial_Search();

	}

	@Then("user able to see the search result according search subspeciality")
	public void user_able_to_see_the_search_result_according_search_subspeciality() {
		document.search_Result_Subspeciality();

	}

	@When("user enters the {string} to Publisher Name search box")
	public void user_enters_the_to_publisher_name_search_box(String publishername) {
		document.enter_PuplisherName_Search(publishername);
		document.get_Attribute_PublisherName_Search();

	}

	@Then("user able to see the search result according search publisher name")
	public void user_able_to_see_the_search_result_according_search_publisher_name() {
		document.search_Result_Publisher_Name();

	}
	
	@When("user clicks on View Links on particular Title or Category")
	public void user_clicks_on_view_links_on_particular_title_or_category() {
		document.click_View_Links();

	}

	@When("user clicks on the URL provided in the overlay")
	public void user_clicks_on_the_url_provided_in_the_overlay() {
		document.click_Overlay_Doc_Link();

	}
	@Then("user navigated to the webpage in the separate tab")
	public void user_navigated_to_the_webpage_in_the_separate_tab() {
		document.document_Link();

	}



}
