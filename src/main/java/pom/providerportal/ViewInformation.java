package pom.providerportal;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class ViewInformation extends Ui_Base {

	public ViewInformation(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	public static String disply_Name;

	@FindBy(xpath = "//div[@class='sidebar_linksContainer__hry2b']//a[text()='Settings']")
	private WebElement btn_Settings;

	@FindBy(xpath = "//div[contains(@class,'MuiCardContent-root css')]//p[text()='Categories and Subspecialities']")
	private WebElement btn_Categories_Subspecialities;

	@FindBy(xpath = "//div[contains(@class,'MuiTabs-scroller MuiTabs-fixed')]//button[text()='Categories']")
	private WebElement btn_Categories;

	@FindBy(xpath = "//div[contains(@class,'Style_createSubspeciality')]//button[text()='Create Category']")
	private WebElement btn_Create_Category;

	@FindBy(xpath = "//div[contains(@class,'MuiPaper-root MuiPaper-elevation MuiPaper-rounded')]//input[@id='createSubSpeciality']")
	private WebElement txtbox_Category_Name;

	@FindBy(xpath = "//input[@name='allSelect']")
	private WebElement chkbox_All;

	@FindBy(xpath = "//input[@name='Centralized Scheduling']")
	private WebElement chkbox_Centralized_Scheduling;

	@FindBy(xpath = "//input[@name='Default']")
	private WebElement chkbox_Default;

	@FindBy(xpath = "//input[@name='Doctors']")
	private WebElement chkbox_Doctors;

	@FindBy(xpath = "//input[@name='Front Desk']")
	private WebElement chkbox_Front_Desk;

	@FindBy(xpath = "//input[@name='Front Desk Clerk']")
	private WebElement chkbox_Front_DeskClerk;

	@FindBy(xpath = "//input[@name='Helpdesk']")
	private WebElement chkbox_Helpdesk;

	@FindBy(xpath = "//input[@name='PEC Admin']")
	private WebElement chkbox_Pec_Admin;

	@FindBy(xpath = "//input[@name='Provider']")
	private WebElement chkbox_Provider;

	@FindBy(xpath = "//input[@name='RMO']")
	private WebElement chkbox_Rmo;

	@FindBy(xpath = "//input[@name='Super Admin']")
	private WebElement chkbox_Super_Admin;

	@FindBy(xpath = "//input[@name='Super System Admin']")
	private WebElement chkbox_Super_SystemAdmin;

	@FindBy(xpath = "//input[@name='Technician']")
	private WebElement chkbox_Technician;

	@FindBy(xpath = "testday")
	private WebElement chkbox_Testday;

	@FindBy(xpath = "//button[@data-testid='saveCategoryBtn']")
	private WebElement btn_Save_CreateCategory;

	@FindBy(xpath = "//button[@data-testid='cancelAddCat']")
	private WebElement btn_Cancel_CreateCategory;

	@FindBy(xpath = "//div[contains(@class,'Style_roleErrorMessage')]//div[text()='This is a required field.']")
	private WebElement msg_RequiredField_Error;

	@FindBy(xpath = "//p[contains(@class,'MuiFormHelperText-root')][text()='This is a required field']")
	private WebElement msg_RequiredFieldtxt_Error;

	@FindBy(xpath = "(//table//tr//td[4])[1]")
	private WebElement tableclm_Status;

	@FindBy(xpath = "(//table//tr)[2]//td[2]")
	private WebElement tableclm_Date;

	@FindBy(xpath = "//div[contains(@class,'style_desktopLogo')]//p[contains(@class,'MuiTypography-root MuiTypography')]")
	private WebElement get_Username;

	@FindBy(xpath = "(//table//tr)[2]//td[3]")
	private WebElement tableclm_ModifiedBy;

	@FindBy(xpath = "//table//th[1]")
	private WebElement tableth_CategoryName;

	@FindBy(xpath = "//table//th[2]")
	private WebElement tableth_LastModified;

	@FindBy(xpath = "//table//th[3]")
	private WebElement tableth_ModifiedBy;

	@FindBy(xpath = "//table//th[4]")
	private WebElement tableth_Status;

	@FindBy(xpath = "//table//th[5]")
	private WebElement tableth_AccessibleTo;

	@FindBy(xpath = "//table//th[6]")
	private WebElement tableth_Action;

	@FindBy(xpath = "//table//td[6]//button[text()='Edit']")
	private WebElement tableth_Edit_btn;

	@FindBy(xpath = "(//table//td[6])[1]//button[text()='Edit']")
	private WebElement tableth_Edit;

	@FindBy(id = "editSubSpeciality")
	private WebElement txtbox_EditCategoryName;

	@FindBy(xpath = "//button[@data-testid='saveEditCategoryBtn']")
	private WebElement btn_Save_Edit;

	@FindBy(xpath = "//button[@data-testid='cancelEditCategoryBtn']")
	private WebElement btn_Cancel_Edit;

	@FindBy(id = "editSubSpeciality-helper-text")
	private WebElement txt_Helperedit_NameExist;

	@FindBy(xpath = "//p[@id='createSubSpeciality-helper-text']")
	private WebElement txt_Helpercreate_NameExist;

	@FindBy(xpath = "//div[contains(@class,'Style_successResponseMessage')]")
	private WebElement msgsucess_Activated_Deactivated;

	@FindBy(xpath = "(//table//tr//td[6]//button)[1]")
	private WebElement tabletd_Action_Activate_Deactivate;

	@FindBy(xpath = "(//div[contains(@class,'Style_activateCancel')])[1]")
	private WebElement popupbtn_Cancel;

	@FindBy(xpath = "(//div[contains(@class,'Style_deActivateCancel')])[1]")
	private WebElement popupbtn_deactivateCancel;

	@FindBy(xpath = "(//div[text()='Confirm Activate?'])[1]")
	private WebElement popupbtn_ConfirmActivate;

	@FindBy(xpath = "(//div[text()='Confirm Deactivate?'])[1]")
	private WebElement popupbtn_ConfirmDeactivate;

	@FindBy(xpath = "(//table//td[4])[1]")
	private WebElement tabletd_Status;

	@FindBy(xpath = "//button[text()='Subspecialities']")
	private WebElement btn_Subspecialities;

	@FindBy(xpath = "(//button[text()='Create Subspeciality'])[1]")
	private WebElement btn_Create_Subspecialities;

	@FindBy(xpath = "//input[@name='createSubSpecialityName']")
	private WebElement txtbox_Create_SubSpeciality;

	@FindBy(xpath = "//button[@data-testid='saveSpecBtn']")
	private WebElement btn_Save_CreateSubSpecial;

	@FindBy(xpath = "//button[@data-testid='cancelAddSpec']")
	private WebElement btn_Cancel_CreateSubSpecial;

	@FindBy(xpath = "//p[@id='createSubSpeciality-helper-text'][text()='This is a required field']")
	private WebElement msgerror_RequiredField;

	@FindBy(xpath = "//p[@id='createSubSpeciality-helper-text'][text()='The subspeciality name already exists!']")
	private WebElement msgerror_Subspecial_name_exists;
	
	@FindBy(xpath = "//p[@id='editSubSpeciality-helper-text'][text()='The subspeciality name already exists!']")
	private WebElement msgerror_SubspecialEdit_name_exists;

	@FindBy(xpath = "//div[contains(@class,'Style_roleErrorMessage')]//div[text()='This is a required field.']")
	private WebElement msgerror_Subspecial_RequiredField;

	@FindBy(xpath = "//button[@data-testid='cancelAddSpec']")
	private WebElement btn_CancelCreateSubspecial;
	
	@FindBy(xpath = "//table//th[1]")
	private WebElement tableth_SubspecialName;

	@FindBy(xpath = "//table//th[2]")
	private WebElement tableth_Subspecial_LastModified;

	@FindBy(xpath = "//table//th[3]")
	private WebElement tableth_Subspecial_ModifiedBy;

	@FindBy(xpath = "//table//th[4]")
	private WebElement tableth_Subspecial_Status;

	@FindBy(xpath = "//table//th[5]")
	private WebElement tableth_Subspecial_AccessibleTo;

	@FindBy(xpath = "//table//th[6]")
	private WebElement tableth_Subspecial_Action;


	public void click_Settings() {
		ClickOnWebElement(btn_Settings);
	}

	public void click_Categories_Subspecialities() {
		ClickOnWebElement(btn_Categories_Subspecialities);
	}

	public void click_Categories() {
		ClickOnWebElement(btn_Categories);
	}

	public void click_Create_Category() {
		ClickOnWebElement(btn_Create_Category);
	}

	public void click_chkbox_All() {
		WaitForWebElement(chkbox_All);
		ClickOnWebElement(chkbox_All);
		waitFor(3000);
		WaitForWebElement(chkbox_All);
		ClickOnWebElement(chkbox_All);
	}

	public void click_Save_CreateCategory() {
		ClickOnWebElement(btn_Save_CreateCategory);
	}

	public void click_Cancel_CreateCategory() {
		ClickOnWebElement(btn_Cancel_CreateCategory);
	}

	public void click_Edit_Btn() {
		ClickOnWebElement(tableth_Edit);

	}

	public void click_Edit_Save() {
		ClickOnWebElement(btn_Save_Edit);
	}

	public void click_Edit_Cancel() {
		ClickOnWebElement(btn_Cancel_Edit);
	}

	public void click_Confirm_Activate() {
		try {
			WaitForWebElement(popupbtn_ConfirmActivate);
			jsClick(popupbtn_ConfirmActivate);
		}

		catch (Exception e) {
			System.out.println("error occured inside click_Confirm_Activate" + e.getMessage());

		}
	}

	public void click_Confirm_Dectivate() {
		try {
			WaitForWebElement(popupbtn_ConfirmDeactivate);
			jsClick(popupbtn_ConfirmDeactivate);
		}

		catch (Exception e) {
			System.out.println("error occured inside click_Confirm_Dectivate" + e.getMessage());

		}
	}

	public void click_Cancel_Activate() {
		WaitForWebElement(popupbtn_Cancel);
		jsClick(popupbtn_Cancel);
	}

	public void click_Cancel_Deactivate() {
		WaitForWebElement(popupbtn_deactivateCancel);
		jsClick(popupbtn_deactivateCancel);
	}

	public void select_Category_Subspcial_Name() {

		String s = tabletd_Action_Activate_Deactivate.getText();
		
		
		switch (s) {
		case "Activate":
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			break;
		case "Deactivate":
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			WaitForWebElement(popupbtn_ConfirmDeactivate);
			jsClick(popupbtn_ConfirmDeactivate);
			waitFor(2000);

			Actions action = new Actions(DriverManager.getDriver());
			action.sendKeys(Keys.ESCAPE).build().perform();
			waitFor(3000);
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			break;
			}
		}
		
	
	public void click_Subspeciality() {
		ClickOnWebElement(btn_Subspecialities);
	}

	public void click_Create_Subspeciality() {
		ClickOnWebElement(btn_Create_Subspecialities);
	}

	public void deactivate_CategoryName() {
		String s = tabletd_Action_Activate_Deactivate.getText();
		
		switch (s) {
		case "Deactivate":
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			break;
		case "Activate":
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			WaitForWebElement(popupbtn_ConfirmActivate);
			jsClick(popupbtn_ConfirmActivate);
			waitFor(2000);

			Actions action = new Actions(DriverManager.getDriver());
			action.sendKeys(Keys.ESCAPE).build().perform();
			waitFor(3000);
			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
			break;}
		
//		if (s.equalsIgnoreCase("Deactivate")) {
//			ClickOnWebElement(tabletd_Action_Activate_Deactivate);
//		} else {
//			System.out.println("Catetory name already in Deactivate status");
//		}

	}

	public void click_Save_Subspecial() {
		ClickOnWebElement(btn_Save_CreateSubSpecial);
	}

	public void click_All_Subspecial() {
		WaitForWebElement(chkbox_All);
		ClickOnWebElement(chkbox_All);
		waitFor(3000);
		WaitForWebElement(chkbox_All);
		ClickOnWebElement(chkbox_All);
	}

	public void click_Deselectsall_Subspecial() {
		WaitForWebElement(chkbox_All);
		waitFor(2000);

		if (chkbox_All.isSelected() == true) {
			ClickOnWebElement(chkbox_All);

		} else {
			ClickOnWebElement(chkbox_All);
			waitFor(2000);
			ClickOnWebElement(chkbox_All);
		}
	}

	public void click_Cancel_Subspecial() {
		ClickOnWebElement(btn_CancelCreateSubspecial);
	}

	public void popup_ConfirmActivate_Cancel() {
		Assert.assertTrue(popupbtn_ConfirmActivate.isDisplayed());
		Assert.assertTrue(popupbtn_Cancel.isDisplayed());
	}

	public void popup_ConfirmDeactivate_Cancel() {
		Assert.assertTrue(popupbtn_ConfirmDeactivate.isDisplayed());
		Assert.assertTrue(popupbtn_deactivateCancel.isDisplayed());
	}

	public void button_Activate_Deactivate() {
		Assert.assertTrue(tabletd_Action_Activate_Deactivate.isDisplayed());
		Assert.assertTrue(tabletd_Action_Activate_Deactivate.isEnabled());
	}
	
	public void subspecialbutton_Activate_Deactivate() {
		Assert.assertTrue(tabletd_Action_Activate_Deactivate.isDisplayed());
		Assert.assertTrue(tabletd_Action_Activate_Deactivate.isEnabled());
	}

	public void category_Page() {
		Assert.assertTrue(btn_Create_Category.isDisplayed());
		Assert.assertTrue(btn_Create_Category.isEnabled());
	}

	public void check_Status_Inactive() {
		String s = tabletd_Status.getText();
		Assert.assertEquals(s, "Inactive");
		waitFor(3000);
	}

	public void check_Status_Active() {
		String s = tabletd_Status.getText();
		Assert.assertEquals(s, "Active");
	}

	public void errormsg_RequiredField() {
		Assert.assertTrue(msg_RequiredField_Error.isDisplayed());
	}

	public void errormsg_RequiredFields() {
		Assert.assertTrue(msg_RequiredFieldtxt_Error.isDisplayed());
		Assert.assertTrue(msg_RequiredField_Error.isDisplayed());
	}

	public void errormsg_EditNameExists() {
		Assert.assertTrue(txt_Helperedit_NameExist.isDisplayed());
	}

	public void errormsg_NewNameExists() {
		Assert.assertTrue(txt_Helpercreate_NameExist.isDisplayed());
	}

	public void successmsg_Category_Subspecial_Activated() {
		WaitForWebElement(msgsucess_Activated_Deactivated);
		Assert.assertTrue(msgsucess_Activated_Deactivated.isDisplayed());

		waitFor(3000);

		Actions action = new Actions(DriverManager.getDriver());
		action.sendKeys(Keys.ESCAPE).build().perform();
	}

	public void successmsg_CategoryDeactivated() {
		WaitForWebElement(msgsucess_Activated_Deactivated);
		Assert.assertTrue(msgsucess_Activated_Deactivated.isDisplayed());

		waitFor(3000);

		Actions action = new Actions(DriverManager.getDriver());
		action.sendKeys(Keys.ESCAPE).build().perform();
	}

	public void attributes_Create_Category() {
		waitFor(5000);
		Assert.assertTrue(txtbox_Category_Name.isDisplayed());
		Assert.assertTrue(txtbox_Category_Name.isEnabled());

		Assert.assertTrue(chkbox_All.isDisplayed());
		Assert.assertTrue(chkbox_Centralized_Scheduling.isDisplayed());
		Assert.assertTrue(chkbox_Default.isDisplayed());
		Assert.assertTrue(chkbox_Doctors.isDisplayed());
		Assert.assertTrue(chkbox_Front_Desk.isDisplayed());
		Assert.assertTrue(chkbox_Front_DeskClerk.isDisplayed());
		Assert.assertTrue(chkbox_Helpdesk.isDisplayed());
		Assert.assertTrue(chkbox_Pec_Admin.isDisplayed());
		Assert.assertTrue(chkbox_Provider.isDisplayed());
		Assert.assertTrue(chkbox_Rmo.isDisplayed());
		Assert.assertTrue(chkbox_Super_Admin.isDisplayed());
		Assert.assertTrue(chkbox_Super_SystemAdmin.isDisplayed());
		Assert.assertTrue(chkbox_Technician.isDisplayed());
		// Assert.assertTrue(chkbox_Testday.isDisplayed());

		Assert.assertTrue(btn_Save_CreateCategory.isDisplayed());
		Assert.assertTrue(btn_Save_CreateCategory.isEnabled());

		Assert.assertTrue(btn_Cancel_CreateCategory.isDisplayed());
		Assert.assertTrue(btn_Cancel_CreateCategory.isEnabled());

	}

	public void subspeciality_page() {
		Assert.assertTrue(btn_Create_Subspecialities.isDisplayed());
		Assert.assertTrue(btn_Create_Subspecialities.isEnabled());
	}

	public void attributes_Create_Subspeciality() {
		waitFor(5000);
		Assert.assertTrue(txtbox_Create_SubSpeciality.isDisplayed());
		Assert.assertTrue(txtbox_Create_SubSpeciality.isEnabled());

		Assert.assertTrue(chkbox_All.isDisplayed());
		Assert.assertTrue(chkbox_Centralized_Scheduling.isDisplayed());
		Assert.assertTrue(chkbox_Default.isDisplayed());
		Assert.assertTrue(chkbox_Doctors.isDisplayed());
		Assert.assertTrue(chkbox_Front_Desk.isDisplayed());
		Assert.assertTrue(chkbox_Front_DeskClerk.isDisplayed());
		Assert.assertTrue(chkbox_Helpdesk.isDisplayed());
		Assert.assertTrue(chkbox_Pec_Admin.isDisplayed());
		Assert.assertTrue(chkbox_Provider.isDisplayed());
		Assert.assertTrue(chkbox_Rmo.isDisplayed());
		Assert.assertTrue(chkbox_Super_Admin.isDisplayed());
		Assert.assertTrue(chkbox_Super_SystemAdmin.isDisplayed());
		Assert.assertTrue(chkbox_Technician.isDisplayed());
		// Assert.assertTrue(chkbox_Testday.isDisplayed());

		Assert.assertTrue(btn_Save_CreateSubSpecial.isDisplayed());
		Assert.assertTrue(btn_Save_CreateSubSpecial.isEnabled());

		Assert.assertTrue(btn_Cancel_CreateSubSpecial.isDisplayed());
		Assert.assertTrue(btn_Cancel_CreateSubSpecial.isEnabled());

	}

	public void errormsg_Subspeciality_Required() {
		WaitForWebElement(msgerror_RequiredField);
		Assert.assertTrue(msgerror_RequiredField.isDisplayed());
	}

	public void errormsg_Accessible_Required() {
		WaitForWebElement(msgerror_Subspecial_RequiredField);
		Assert.assertTrue(msgerror_Subspecial_RequiredField.isDisplayed());

	}

	public void errormsg_Subspeciality_name_exists() {
		WaitForWebElement(msgerror_Subspecial_name_exists);
		Assert.assertTrue(msgerror_Subspecial_name_exists.isDisplayed());
	}
	
	public void errormsg_Subspecialityedit_name_exists() {
		WaitForWebElement(msgerror_SubspecialEdit_name_exists);
		Assert.assertTrue(msgerror_SubspecialEdit_name_exists.isDisplayed());
	}

	
	public void errormsg_Subspeciality_nameedit_empty() {
		WaitForWebElement(msg_RequiredFieldtxt_Error);
		Assert.assertTrue(msg_RequiredFieldtxt_Error.isDisplayed());
		
	}
	public void enter_Category_Name(String category) {
		waitFor(2000);
		clear_field(txtbox_Category_Name);
		SendKeysOnWebElement(txtbox_Category_Name, category);
	}

	public void enter_Update_Category_Name(String category) {
		waitFor(2000);
		clear_field(txtbox_EditCategoryName);
		SendKeysOnWebElement(txtbox_EditCategoryName, category);
	}

	public void enter_Subspecial_Name(String subspecial) {
		waitFor(2000);
		clear_field(txtbox_Create_SubSpeciality);
		SendKeysOnWebElement(txtbox_Create_SubSpeciality, subspecial);
	}

	public String get_Attribute_CategoryName() {
		WaitForWebElement(txtbox_Category_Name);
		waitFor(3000);
		disply_Name = GetAttribute(txtbox_Category_Name);
		return disply_Name;
	}

	public String get_Attribute_EditCategory_SubspecialName() {
		WaitForWebElement(txtbox_EditCategoryName);
		waitFor(3000);
		disply_Name = GetAttribute(txtbox_EditCategoryName);
		return disply_Name;
	}

	public String get_Attribute_SubspecialName() {
		WaitForWebElement(txtbox_Create_SubSpeciality);
		waitFor(3000);
		disply_Name = GetAttribute(txtbox_Create_SubSpeciality);
		return disply_Name;
	}

	public void compare_CategoryName() {
		waitFor(5000);

		List<WebElement> name_List = DriverManager.getDriver().findElements(By.xpath("//table//tr//td[1]"));

		List<String> originalList = new ArrayList<>();

		for (WebElement s : name_List) {
			originalList.add(s.getText());
		}

		for (String e : originalList) {
			System.out.println("List Iteration:" + e);
			System.out.println("Displyname:" + disply_Name);
			if (disply_Name.equalsIgnoreCase(e)) {
				Assert.assertEquals(disply_Name, e);
			} else {
				Assert.assertNotEquals(disply_Name, e);
			}
		}
	}

	public void compare_SubspecialName() {
		waitFor(5000);

		List<WebElement> name_List = DriverManager.getDriver().findElements(By.xpath("//table//tr//td[1]"));

		List<String> originalList = new ArrayList<>();

		for (WebElement s : name_List) {
			originalList.add(s.getText());
		}

		for (String e : originalList) {
			System.out.println("List Iteration:" + e);
			System.out.println("Displyname:" + disply_Name);
			if (disply_Name.equalsIgnoreCase(e)) {
				Assert.assertEquals(disply_Name, e);
			} else {
				Assert.assertNotEquals(disply_Name, e);
			}
		}
	}

	public void check_Status() {
		waitFor(2000);
		WaitForWebElement(tableclm_Status);
		String s=tableclm_Status.getText();
		Assert.assertEquals(s, "Active");

	}

	public void categoryname_List() {
		try {

			ClickOnWebElement(tableth_CategoryName);
			waitFor(3000);
			ClickOnWebElement(tableth_CategoryName);

			List<WebElement> unameList = DriverManager.getDriver().findElements(By.xpath("//table//td[1]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : unameList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);
			System.out.println(originalList);
			System.out.println(tempList);
		} catch (Exception e) {
			System.out.println("error occured inside categoryname_List function" + e.getMessage());
		}
	}
	
	public void subspecialname_List() {
		try {

			ClickOnWebElement(tableth_CategoryName);
			waitFor(3000);
			ClickOnWebElement(tableth_CategoryName);

			List<WebElement> unameList = DriverManager.getDriver().findElements(By.xpath("//table//td[1]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : unameList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);
			System.out.println(originalList);
			System.out.println(tempList);
		} catch (Exception e) {
			System.out.println("error occured inside subspecialname_List function" + e.getMessage());
		}
	}

	public void lastmodified_List() {
		try {

			ClickOnWebElement(tableth_LastModified);
			waitFor(3000);
			ClickOnWebElement(tableth_LastModified);

			List<WebElement> unameList = DriverManager.getDriver().findElements(By.xpath("//table//td[2]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : unameList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);
			System.out.println(originalList);
			System.out.println(tempList);
		} catch (Exception e) {
			System.out.println("error occured inside lastmodified_List function" + e.getMessage());
		}
	}

	public void status_List() {
		try {

			ClickOnWebElement(tableth_Status);
			waitFor(3000);
			ClickOnWebElement(tableth_Status);

			List<WebElement> unameList = DriverManager.getDriver().findElements(By.xpath("//table//td[4]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : unameList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);
			System.out.println(originalList);
			System.out.println(tempList);
		} catch (Exception e) {
			System.out.println("error occured inside status_List function" + e.getMessage());
		}
	}

	public void check_Category_Subspecial_Name() {
		waitFor(5000);

		List<WebElement> name_List = DriverManager.getDriver().findElements(By.xpath("//table//tr//td[1]"));

		List<String> originalList = new ArrayList<>();

		for (WebElement s : name_List) {
			originalList.add(s.getText());
		}
		System.out.print(originalList);
		for (String e : originalList) {
			if (disply_Name.equalsIgnoreCase(e)) {
				Assert.assertEquals(disply_Name, e);
			} else if (disply_Name != e) {
				Assert.assertNotEquals(disply_Name, e);
			}

		}
	}

	public void check_Category_Subspeciality_NameNotChanged() {
		waitFor(5000);

		List<WebElement> name_List = DriverManager.getDriver().findElements(By.xpath("//table//tr//td[1]"));

		List<String> originalList = new ArrayList<>();

		for (WebElement s : name_List) {
			originalList.add(s.getText());
		}
		System.out.print(originalList);
		System.out.print(disply_Name);
		for (String e : originalList) {
			Assert.assertNotEquals(disply_Name, e);
		}
	}

	public void check_Accessible_Edit() {
		waitFor(5000);

		List<WebElement> name_List = DriverManager.getDriver().findElements(By.xpath("(//table//td[5])[1]"));

		List<String> originalList = new ArrayList<>();

		for (WebElement s : name_List) {
			originalList.add(s.getText());
		}
		System.out.print(originalList);

		for (String e : originalList) {
			if ("Default,".equalsIgnoreCase(e)) {
				Assert.assertEquals("Default,", e);
			}
			if ("Doctors,".equalsIgnoreCase(e)) {
				Assert.assertEquals("Doctors,", e);
			} else {
				Assert.assertNotEquals("XXX", e);

			}

		}
	}

	public void isselected_Accessibleto() {
		isElementSelected(chkbox_All);
		isElementSelected(chkbox_Centralized_Scheduling);
		isElementSelected(chkbox_Default);
		isElementSelected(chkbox_Doctors);
		isElementSelected(chkbox_Front_Desk);
		isElementSelected(chkbox_Front_DeskClerk);
		isElementSelected(chkbox_Helpdesk);
		isElementSelected(chkbox_Pec_Admin);
		isElementSelected(chkbox_Provider);
		isElementSelected(chkbox_Rmo);
		isElementSelected(chkbox_Super_Admin);
		isElementSelected(chkbox_Super_SystemAdmin);
		isElementSelected(chkbox_Technician);
	}

	public void category_TableHeaders() {
		Assert.assertTrue(tableth_CategoryName.isDisplayed());
		Assert.assertTrue(tableth_LastModified.isDisplayed());
		Assert.assertTrue(tableth_ModifiedBy.isDisplayed());
		Assert.assertTrue(tableth_Status.isDisplayed());
		Assert.assertTrue(tableth_AccessibleTo.isDisplayed());
		Assert.assertTrue(tableth_Action.isDisplayed());

	}
	
	
	public void subspecial_TableHeaders() {
		Assert.assertTrue(tableth_CategoryName.isDisplayed());
		Assert.assertTrue(tableth_LastModified.isDisplayed());
		Assert.assertTrue(tableth_ModifiedBy.isDisplayed());
		Assert.assertTrue(tableth_Status.isDisplayed());
		Assert.assertTrue(tableth_AccessibleTo.isDisplayed());
		Assert.assertTrue(tableth_Action.isDisplayed());

	}

	public void table_Edit_Button() {
		Assert.assertTrue(tableth_Edit_btn.isDisplayed());
		Assert.assertTrue(tableth_Edit_btn.isEnabled());
	}

	public void deselect_Accessibleto() {
		WaitForWebElement(chkbox_All);
		waitFor(2000);

		if (chkbox_All.isSelected() == true) {
			ClickOnWebElement(chkbox_All);

		} else {
			ClickOnWebElement(chkbox_All);
			waitFor(2000);
			ClickOnWebElement(chkbox_All);
		}

	}

	public void get_Today_Date() {
		DateFormat date = new SimpleDateFormat("MM/DD/YYYY");
		Date sys_Date = new Date();
		String date_Sys = date.format(sys_Date);
		String s=tableclm_Date.getText();

		System.out.println(date_Sys);
		Assert.assertEquals(date_Sys, s);
		System.out.println(s);

	}

	public void compare_Usernames() {
		WaitForWebElement(get_Username);
		WaitForWebElement(tableclm_ModifiedBy);
		String name1 = get_Username.getText();
		String name2 = tableclm_ModifiedBy.getText();
		System.out.println(name1);
		System.out.println(name2);

		Assert.assertEquals(name1, name2);
	}

	public void Select_chkbox_Accessible() {

		WaitForWebElement(chkbox_All);

		if (chkbox_All.isSelected() == true) {
			ClickOnWebElement(chkbox_All);
			waitFor(2000);

			ClickOnWebElement(chkbox_Default);
//			ClickOnWebElement(chkbox_Rmo);

		} else {
			ClickOnWebElement(chkbox_All);
			waitFor(3000);
			ClickOnWebElement(chkbox_All);

			waitFor(2000);
			ClickOnWebElement(chkbox_Doctors);
			// ClickOnWebElement(chkbox_Helpdesk);
//			ClickOnWebElement(chkbox_Provider);

		}

	}

}
