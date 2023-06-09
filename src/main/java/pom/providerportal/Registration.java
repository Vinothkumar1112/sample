package pom.providerportal;

import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class Registration extends Ui_Base {

	public Registration(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	@FindBy(id = "npi")
	private WebElement txtbox_npi;

	@FindBy(id = "designation")
	private WebElement txtbox_designation;

	@FindBy(id = "lastName")
	private WebElement txtbox_lastname;

	@FindBy(id = "middleName")
	private WebElement txtbox_middlename;

	@FindBy(id = "firstName")
	private WebElement txtbox_firstname;

	@FindBy(id = "birthday")
	private WebElement txtbox_birthday;

	@FindBy(id = "gender")
	private WebElement drop_gender;

	@FindBy(xpath = "//button[contains(@type,'submit')]/span[contains(text(),'Specialization')]")
	private WebElement btn_Specialization;

	@FindBy(xpath = "//div[text()='Back To Login']")
	private WebElement link_backtologin1;

	@FindBy(id = "npi-helper-text")
	private WebElement msg_validnpi;

	@FindBy(xpath = "//div[contains(text(),'Specialization')]")
	private WebElement txt_Specialization;

	@FindBy(xpath = "//span[contains(text(),'Office Details')]")
	private WebElement btn_OfficeDetails;

	@FindBy(xpath = "//div[text()='Office Details']")
	private WebElement txt_OfficeDetailsPage;

	@FindBy(xpath = "//button[@type='submit']")
	private WebElement btn_Register;

	@FindBy(id = "fax-helper-text")
	private WebElement msg_faxerror;

	@FindBy(xpath = " //div[text()='Register Account']")
	private WebElement txt_registeraccount;

	@FindBy(id = "npi-helper-text")
	private WebElement msg_NpiError;

	@FindBy(xpath = "//input[@name='taxonomy']")
	private WebElement txtbox_Taxonomy;

	@FindBy(id = "classification")
	private WebElement txtbox_Classification;

	@FindBy(id = "specialization")
	private WebElement txtbox_Specialization;

	@FindBy(xpath = "//div[contains(text(),'Add Practice')]")
	private WebElement btn_AddPractice;

	@FindBy(id = "practiceName")
	private WebElement txtbox_PracticeName;

	@FindBy(xpath = "(//input[@name='practiceName'])[2]")
	private WebElement txtbox_Practicename2;

	@FindBy(xpath = "(//div[contains(text(),'Remove Practice')])[2]")
	private WebElement btn_Removepractice2;

	@FindBy(xpath = "//div[contains(text(),'Your registration has been completed successfully!')]")
	private WebElement msg_RegistrationSuccess;

	@FindBy(id = "cell-helper-text")
	private WebElement msg_Cellnumerror;

	@FindBy(id = "firstName-helper-text")
	private WebElement msg_FirstNameError;

	@FindBy(id = "lastName-helper-text")
	private WebElement msg_LastNameError;

	@FindBy(xpath = "//input[@name='primaryPractice']")
	private WebElement radio_primarypractice;

	@FindBy(id = "practiceName")
	private WebElement txtbox_Practicename;

	@FindBy(id = "addressLine1")
	private WebElement txtbox_Address1;

	@FindBy(id = "addressLine2")
	private WebElement txtbox_Address2;

	@FindBy(id = "state")
	private WebElement txtbox_State;

	@FindBy(id = "city")
	private WebElement txtbox_City;

	@FindBy(id = "zip")
	private WebElement txtbox_Zip;

	@FindBy(id = "office")
	private WebElement txtbox_Office;

	@FindBy(id = "fax")
	private WebElement txtbox_Fax;

	@FindBy(id = "cell")
	private WebElement txtbox_Cell;

	@FindBy(id = "email")
	private WebElement txtbox_Email;

	// set password
	@FindBy(xpath = "//h3[text()='Set Password']")
	private WebElement txt_SetPassword;

	@FindBy(xpath = "//h5[2]")
	private WebElement txt_Username;

	@FindBy(id = "password")
	private WebElement txtbox_PasswordSet;

	@FindBy(id = "confirmPassword")
	private WebElement txtbox_ConfirmPassSet;

	@FindBy(xpath = "//button[text()='Create Account']")
	private WebElement btn_CreateAccount;

	@FindBy(xpath = "//a[text()='Back To Login']")
	private WebElement link_backtologinsetpass;

	@FindBy(id = "confirmPassword-helper-text")
	private WebElement msg_PasswordNotMatcherror;

	@FindBy(xpath = "(//p[text()='This is a required field'])[1]")
	private WebElement msg_RequiredFielderror;

	@FindBy(xpath = "(//p[text()='This is a required field'])[2]")
	private WebElement msg_ConfrmRequiredFielderror;

	@FindBy(id = "addressLine1-helper-text")
	private WebElement msg_AddressrequiredError;

	@FindBy(id = "zip-helper-text")
	private WebElement msg_ZiprequiredError;

	@FindBy(id = "email-helper-text")
	private WebElement msg_EmailrequiredError;

	// fabricated
	@FindBy(xpath = "(//p[text()='Password has been set")
	private WebElement msg_PasswordSuccess;

	public WebElement getBtn_AddPractice() {
		return btn_AddPractice;
	}

	public WebElement getTxt_SetPassword() {
		return txt_SetPassword;
	}

	public WebElement getMsg_PasswordNotMatcherror() {
		return msg_PasswordNotMatcherror;
	}

	public WebElement getTxt_Username() {
		return txt_Username;
	}

	public WebElement getTxtbox_Practicename2() {

		return txtbox_Practicename2;

	}

	public WebElement getTxt_registeraccount() {
		return txt_registeraccount;
	}

	public WebElement getTxt_OfficeDetailsPage() {
		return txt_OfficeDetailsPage;
	}

	public WebElement getTxt_Specialization() {
		waitFor(2000);
		// return txtbox_Taxonomy;
		return txt_Specialization;
	}

	public WebElement getTxtbox_designation() {
		return txtbox_designation;
	}

	public WebElement getTxtbox_firstname() {
		return txtbox_firstname;
	}

	public WebElement getTxtbox_lastname() {
		return txtbox_lastname;
	}

	public void launchRegistrationUrl() throws Exception {
		// String URL = System.getProperty("DESKTOP_URL");
		DriverManager.getDriver().get(getData("External_provider_Invitation_Link"));
	}

	public void Set_Password_Url() throws Exception {
		// String URL = System.getProperty("Forgot_Password_Email_Link");
		DriverManager.getDriver().get(getData("Registration_Set_Password_Link"));
	}

	public void regisgerPageElements() {
		waitFor(5000);

		Assert.assertTrue(txtbox_npi.isDisplayed());
		Assert.assertTrue(txtbox_npi.isEnabled());

		Assert.assertTrue(txtbox_designation.isDisplayed());
		Assert.assertTrue(txtbox_designation.isEnabled());

		Assert.assertTrue(txtbox_lastname.isDisplayed());
		Assert.assertTrue(txtbox_lastname.isEnabled());

		Assert.assertTrue(txtbox_middlename.isDisplayed());
		Assert.assertTrue(txtbox_middlename.isEnabled());

		Assert.assertTrue(txtbox_firstname.isDisplayed());
		// Assert.assertTrue(txtbox_firstname.isEnabled());

		Assert.assertTrue(txtbox_birthday.isDisplayed());
		Assert.assertTrue(txtbox_birthday.isEnabled());

		Assert.assertTrue(drop_gender.isDisplayed());
		Assert.assertTrue(drop_gender.isEnabled());

		Assert.assertTrue(btn_Specialization.isDisplayed());
		Assert.assertTrue(btn_Specialization.isEnabled());

		Assert.assertTrue(link_backtologin1.isDisplayed());
		Assert.assertTrue(link_backtologin1.isEnabled());
	}

	public void officeDetailsPageElements() {
		waitFor(2000);

		Assert.assertTrue(txtbox_Practicename.isDisplayed());

		Assert.assertTrue(txtbox_Address1.isDisplayed());

		Assert.assertTrue(txtbox_Address2.isDisplayed());

		Assert.assertTrue(txtbox_State.isDisplayed());

		Assert.assertTrue(txtbox_City.isDisplayed());

		Assert.assertTrue(txtbox_Zip.isDisplayed());

		Assert.assertTrue(txtbox_Office.isDisplayed());

		Assert.assertTrue(txtbox_Fax.isDisplayed());

		Assert.assertTrue(txtbox_Cell.isDisplayed());

		Assert.assertTrue(txtbox_Email.isDisplayed());

	}

	public void specialization_PageElements() {
		waitFor(2000);

		Assert.assertTrue(txtbox_Taxonomy.isDisplayed());
		Assert.assertTrue(txtbox_Taxonomy.isEnabled());

		Assert.assertTrue(txtbox_Classification.isDisplayed());
		Assert.assertTrue(txtbox_Classification.isEnabled());

		Assert.assertTrue(txtbox_Specialization.isDisplayed());
		Assert.assertTrue(txtbox_Specialization.isEnabled());

	}

	public void set_PasswordPageElements() {
		waitFor(2000);
		Assert.assertTrue(txt_Username.isDisplayed());

		Assert.assertTrue(txtbox_PasswordSet.isDisplayed());
		Assert.assertTrue(txtbox_PasswordSet.isEnabled());

		Assert.assertTrue(txtbox_ConfirmPassSet.isDisplayed());
		Assert.assertTrue(txtbox_ConfirmPassSet.isEnabled());

		Assert.assertTrue(btn_CreateAccount.isDisplayed());
		Assert.assertTrue(btn_CreateAccount.isEnabled());

		Assert.assertTrue(link_backtologinsetpass.isDisplayed());
		Assert.assertTrue(link_backtologinsetpass.isEnabled());

	}

	public void valid_Npi() {
		WaitForWebElement(msg_validnpi);
		Assert.assertTrue(msg_validnpi.isDisplayed());
	}

	public void get_Auto_Populatedvalues() {
		waitFor(3000);

		String designation = GetAttribute(txtbox_designation);
		System.out.println(designation);

		String lastname = GetAttribute(txtbox_lastname);
		System.out.println(lastname);

		String middlename = GetAttribute(txtbox_middlename);
		System.out.println(middlename);

		String firstname = GetAttribute(txtbox_firstname);
		System.out.println(firstname);

		String birthday = GetAttribute(txtbox_birthday);
		System.out.println(birthday);

		String gender = GetAttribute(drop_gender);
		System.out.println(gender);

	}

	public void get_Auto_PopulatedvaluesSpecializaiton() {
		waitFor(3000);

		String taxonomy = GetAttribute(txtbox_Taxonomy);
		System.out.println(taxonomy);

		String classification = GetAttribute(txtbox_Classification);
		System.out.println(classification);

		String specialization = GetAttribute(txtbox_Specialization);
		System.out.println(specialization);

	}

	public void enter_FirstName(String firstname) {
		waitFor(3000);
		clear_field(txtbox_firstname);

		SendKeysOnWebElement(txtbox_firstname, firstname);
	}

	public void enter_LastName(String lastname) {
		waitFor(3000);
		clear_field(txtbox_lastname);

		SendKeysOnWebElement(txtbox_lastname, lastname);
	}

	public void enter_Taxonomy(String taxonomy) {
		waitFor(2000);
		waitForElementToBeClickable(txtbox_Taxonomy);
		ClickOnWebElement(txtbox_Taxonomy);
		// SendKeysOnWebElement(txtbox_npi, "123456789");
		waitFor(2000);
		ClickOnWebElement(txtbox_Taxonomy);
		clear_field(txtbox_Taxonomy);

		SendKeysOnWebElement(txtbox_Taxonomy, taxonomy);

	}

	public void enter_NPInumber(String Npi) {
		ClickOnWebElement(txtbox_npi);
		SendKeysOnWebElement(txtbox_npi, "123456789");
		waitFor(3000);
		clear_field(txtbox_npi);
		SendKeysOnWebElement(txtbox_npi, Npi);

//		clear_field(txtbox_npi);
//		waitFor(3000);
//		SendKeysOnWebElement(txtbox_npi, Npi);
	}

	public void enter_Addess1(String address1) {
		ClickOnWebElement(txtbox_Address1);
		clear_field(txtbox_Address1);
		SendKeysOnWebElement(txtbox_Address1, address1);
	}

	public void enter_password(String password) {
		SendKeysOnWebElement(txtbox_PasswordSet, password);
	}

	public void enter_PracticeName(String practice) {
		waitFor(3000);
		ClickOnWebElement(txtbox_PracticeName);
		clear_field(txtbox_PracticeName);
		SendKeysOnWebElement(txtbox_PracticeName, practice);
	}

	public void enter_Email(String email) {
		ClickOnWebElement(txtbox_Email);
		clear_field(txtbox_Email);
		SendKeysOnWebElement(txtbox_Email, email);
	}

	public void enter_FaxNum(String faxnum) {
		waitFor(3000);
		ClickOnWebElement(txtbox_Fax);
		clear_field(txtbox_Fax);
		SendKeysOnWebElement(txtbox_Fax, faxnum);
	}

	public void enter_Practicename2(String practice2) {
		waitFor(3000);
		SendKeysOnWebElement(txtbox_Practicename2, practice2);
	}

	public void enter_CellNum(String cell) {
		waitFor(3000);
		ClickOnWebElement(txtbox_Cell);
		clear_field(txtbox_Cell);

		SendKeysOnWebElement(txtbox_Cell, cell);
	}

	public void drop(String ExpectedValue) {
		ClickOnWebElement(txtbox_State);
		List<WebElement> titleList = DriverManager.getDriver()
				.findElements(By.xpath("//ul[@class='MuiList-root MuiList-padding MuiMenu-list css-r8u8y9']/li"));
		for (WebElement element : titleList) {
			String listValue = element.getText();
			if (listValue.equals(ExpectedValue)) {
				ClickOnWebElement(element);
			}
		}
	}

	public void enter_Details_OfficeDetailspage(String PracticeName, String AddressLine1, String AddressLine2,
			String State, String City, String Zip, String Office, String Fax, String Cell, String Email) {

		ClickOnWebElement(txtbox_Practicename);
		clear_field(txtbox_Practicename);
		SendKeysOnWebElement(txtbox_Practicename, PracticeName);

		ClickOnWebElement(txtbox_Address1);
		clear_field(txtbox_Address1);
		SendKeysOnWebElement(txtbox_Address1, AddressLine1);

		ClickOnWebElement(txtbox_Address2);
		clear_field(txtbox_Address2);
		SendKeysOnWebElement(txtbox_Address2, AddressLine2);

		ClickOnWebElement(txtbox_State);
		clear_field(txtbox_State);
		drop(State);

		ClickOnWebElement(txtbox_City);
		clear_field(txtbox_City);
		SendKeysOnWebElement(txtbox_City, City);

		ClickOnWebElement(txtbox_Zip);
		clear_field(txtbox_Zip);
		SendKeysOnWebElement(txtbox_Zip, Zip);

		ClickOnWebElement(txtbox_Office);
		clear_field(txtbox_Office);
		SendKeysOnWebElement(txtbox_Office, Office);

		ClickOnWebElement(txtbox_Fax);
		clear_field(txtbox_Fax);
		SendKeysOnWebElement(txtbox_Fax, Fax);

		ClickOnWebElement(txtbox_Cell);
		clear_field(txtbox_Cell);
		SendKeysOnWebElement(txtbox_Cell, Cell);

		ClickOnWebElement(txtbox_Email);
		clear_field(txtbox_Email);
		SendKeysOnWebElement(txtbox_Email, Email);

//		SendKeysOnWebElement(txtbox_Practicename, PracticeName);
//		SendKeysOnWebElement(txtbox_Address1, AddressLine1);
//		SendKeysOnWebElement(txtbox_Address2, AddressLine2);
//		
//		drop(State);
//		SendKeysOnWebElement(txtbox_City, City);
//		SendKeysOnWebElement(txtbox_Zip, Zip);
//		SendKeysOnWebElement(txtbox_Office, Office);
//		SendKeysOnWebElement(txtbox_Fax, Fax);
//		SendKeysOnWebElement(txtbox_Cell, Cell);
//		SendKeysOnWebElement(txtbox_Email, Email);
	}

	public void enter_Passwords(String password, String password2) {

		SendKeysOnWebElement(txtbox_PasswordSet, password);
		SendKeysOnWebElement(txtbox_ConfirmPassSet, password2);
	}

	public void click_SplButton() {

		waitFor(5000);
		ClickOnWebElement(btn_Specialization);
	}

	public void click_OfficeDetailsbtn() {
		waitFor(10000);
		ClickOnWebElement(btn_OfficeDetails);
	}

	public void click_Registerbtn() {
		ClickOnWebElement(btn_Register);
	}

	public void clickradio_Primarypractice() {
		ClickOnWebElement(radio_primarypractice);
	}

	public void click_Addpractice() {
		waitFor(3000);
		ClickOnWebElement(btn_AddPractice);
	}

	public void click_Removepractice2() {
		waitFor(4000);
		ClickOnWebElement(btn_Removepractice2);
	}

	public void click_CreateAccount() {
		ClickOnWebElement(btn_CreateAccount);
	}

	public void errormsg_Fax() {
		Assert.assertTrue(msg_faxerror.isDisplayed());
		isElementPresent(msg_faxerror);
	}

	public void errormsg_Npi() {
		isElementPresent(msg_NpiError);

	}

	public void errormsg_Cell() {
		Assert.assertTrue(msg_Cellnumerror.isDisplayed());
		isElementPresent(msg_Cellnumerror);
	}

	public void errormsg_FirstName() {
		isElementPresent(msg_FirstNameError);
	}

	public void errormsg_LastName() {
		isElementPresent(msg_LastNameError);
	}

	public void errormsg_Passwords() {
		WaitForWebElement(msg_RequiredFielderror);
		WaitForWebElement(msg_ConfrmRequiredFielderror);
		isElementPresent(msg_RequiredFielderror);
		isElementPresent(msg_ConfrmRequiredFielderror);

	}

	public void getmessage_Success() {
		WaitForWebElement(msg_RegistrationSuccess);
		Assert.assertEquals(GetText(msg_RegistrationSuccess),
				"Your registration has been completed successfully! A link has been sent to your registered email to create your login password. Please check.");

	}

	public void getmessage_PasswordSuccess() {
		WaitForWebElement(msg_PasswordSuccess);
		Assert.assertEquals(GetText(msg_PasswordSuccess), "Password has been set");
	}

	public void clear_OfficeDetails() {
		ClickOnWebElement(txtbox_Practicename);
		clear_field(txtbox_Practicename);

		ClickOnWebElement(txtbox_Address2);
		clear_field(txtbox_Address2);

		ClickOnWebElement(txtbox_State);
		clear_field(txtbox_State);

		ClickOnWebElement(txtbox_City);
		clear_field(txtbox_City);

		ClickOnWebElement(txtbox_Zip);
		clear_field(txtbox_Zip);

		ClickOnWebElement(txtbox_Office);
		clear_field(txtbox_Office);

		ClickOnWebElement(txtbox_Fax);
		clear_field(txtbox_Fax);

		ClickOnWebElement(txtbox_Cell);
		clear_field(txtbox_Cell);

		ClickOnWebElement(txtbox_Email);
		clear_field(txtbox_Email);

		ClickOnWebElement(txtbox_Address1);
		clear_field(txtbox_Address1);

//		ClearText(txtbox_Practicename);
//		ClearText(txtbox_Address2);
//		ClearText(txtbox_State);
//		ClearText(txtbox_City);
//		ClearText(txtbox_Zip);
//		ClearText(txtbox_Office);
//		ClearText(txtbox_Fax);
//		ClearText(txtbox_Cell);
//		ClearText(txtbox_Email);
//		ClearText(txtbox_Address1);

	}

	public void getmessage_Officepageerrors() {
		waitFor(3000);
		Assert.assertTrue(msg_AddressrequiredError.isDisplayed());
		Assert.assertTrue(msg_ZiprequiredError.isDisplayed());
		Assert.assertTrue(msg_EmailrequiredError.isDisplayed());
	}

}
