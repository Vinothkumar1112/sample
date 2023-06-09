 package pom.providerportal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class ExternalProviderRegistration extends Ui_Base {

	public ExternalProviderRegistration(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	public static String disply_Uname;

	@FindBy(xpath = "//a[text()='Referral Portal']")
	private WebElement btn_Refferal_Portal;

	@FindBy(xpath = "(//table//th)[1]")
	private WebElement tableth_Name;

	@FindBy(xpath = "(//table//th)[2]")
	private WebElement tableth_Practice_Name;

	@FindBy(xpath = "(//table//th)[3]")
	private WebElement tableth_Email;

	@FindBy(xpath = "(//table//th)[4]")
	private WebElement tableth_Phone;

	@FindBy(xpath = "(//table//th)[5]")
	private WebElement tableth_Registered_On;

	@FindBy(xpath = "(//table/th)[6]")
	private WebElement tableth_Action;

	@FindBy(xpath = "//table//td[1]//a")
	private WebElement tabletd_Names;

	@FindBy(xpath = "(//table//td[6]//button)[1]")
	private WebElement tabletd_Button_Approve;

	@FindBy(xpath = "(//table//td[6]//button)[2]")
	private WebElement tabletd_Button_Reject;

	@FindBy(xpath = "(//table//td[1])[1]")
	private WebElement tabletd_Name;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[1]")
	private WebElement txt_Provider_NPI;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[2]")
	private WebElement txt_Provider_Designation;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[5]")
	private WebElement txt_Provider_Firstname;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[4]")
	private WebElement txt_Provider_Middlename;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[3]")
	private WebElement txt_Provider_Lastname;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[6]")
	private WebElement txt_Provider_Birthday;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[7]")
	private WebElement txt_Provider_Gender;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[8]")
	private WebElement txt_Provider_Registeredon;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[9]")
	private WebElement txt_Provider_Taxonomy;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[10]")
	private WebElement txt_Provider_Classification;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[11]")
	private WebElement txt_Provider_Specialization;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[12]")
	private WebElement txt_Provider_Primary_Practice_Name;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[13]")
	private WebElement txt_Provider_Practice_Address;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[14]")
	private WebElement txt_Provider_Practice_Phone;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[15]")
	private WebElement txt_Provider_Practice_Cell;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[16]")
	private WebElement txt_Provider_Practice_Fax;

	@FindBy(xpath = "(//p[contains(@class,'Style_providerDetailsValue')])[17]")
	private WebElement txt_Provider_Practice_Email;

	@FindBy(xpath = "//input[@type='text']")
	private WebElement txtbox_Comments;

	@FindBy(xpath = "//button[@data-testid='provDetailsSave']")
	private WebElement btn_Save;

	@FindBy(xpath = "((//table//td)[6]//button)[1]")
	private WebElement btn_Approve;
	
	@FindBy(xpath="((//table//td)[6]//button)[2]")
	private WebElement btn_Reject;

	@FindBy(xpath = "(//div[@role='dialog']//button)[1]")
	private WebElement popupbtn_Approve_Reject;

	@FindBy(xpath = "(//div[@role='dialog']//button)[2]")
	private WebElement popupbtn_Cancel;

	@FindBy(xpath = "(//table//td[1]//a)[1]")
	private WebElement tabletd_nameone;
	
	@FindBy(xpath="(//div[@class='MuiAlert-message css-1xsto0d'])[1]")
	private WebElement msg_Sucess;
	
	@FindBy(xpath="//div[@class='MuiAlert-message css-1xsto0d']")
	private WebElement msg_Reject_Sucess;
	
	@FindBy(xpath="//input[@data-testid='rejectReason']")
	private WebElement txtbox_Reject_Reason;
	
	@FindBy(xpath="//p[text()='This is a required field']")
	private WebElement txt_Reject_Reason;
	
	

	public void click_Referral_Portal() {
		ClickOnWebElement(btn_Refferal_Portal);
	}

	public void click_FirstLastName() {
		ClickOnWebElement(tabletd_Name);
	}

	public void click_Save() {
		ClickOnWebElement(btn_Save);
	}

	public void click_Approve() {
		ClickOnWebElement(btn_Approve);
	}
	
	public void click_Popup_Approve_Reject() {
		ClickOnWebElement(popupbtn_Approve_Reject);
	}
	
	public void click_Reject() {
		ClickOnWebElement(btn_Reject);
	}

	public void click_Cancel() {
		ClickOnWebElement(popupbtn_Cancel);
	}

	public void Pending_Approvals_Table() {
		waitFor(2000);
		Assert.assertTrue(tableth_Name.isDisplayed());
		Assert.assertTrue(tableth_Practice_Name.isDisplayed());
		Assert.assertTrue(tableth_Email.isDisplayed());
		Assert.assertTrue(tableth_Phone.isDisplayed());
		Assert.assertTrue(tableth_Registered_On.isDisplayed());
		Assert.assertTrue(tableth_Action.isDisplayed());

	}

	public void check_Provider_Details() {
		waitFor(3000);
		Assert.assertTrue(txt_Provider_NPI.isDisplayed());
		Assert.assertTrue(txt_Provider_Designation.isDisplayed());
		Assert.assertTrue(txt_Provider_Firstname.isDisplayed());
		Assert.assertTrue(txt_Provider_Middlename.isDisplayed());
		Assert.assertTrue(txt_Provider_Lastname.isDisplayed());
		Assert.assertTrue(txt_Provider_Birthday.isDisplayed());
		Assert.assertTrue(txt_Provider_Gender.isDisplayed());
		Assert.assertTrue(txt_Provider_Registeredon.isDisplayed());
		Assert.assertTrue(txt_Provider_Taxonomy.isDisplayed());
		Assert.assertTrue(txt_Provider_Classification.isDisplayed());
		Assert.assertTrue(txt_Provider_Specialization.isDisplayed());
		Assert.assertTrue(txt_Provider_Primary_Practice_Name.isDisplayed());
		Assert.assertTrue(txt_Provider_Practice_Address.isDisplayed());
		Assert.assertTrue(txt_Provider_Practice_Phone.isDisplayed());
		Assert.assertTrue(txt_Provider_Practice_Cell.isDisplayed());
		Assert.assertTrue(txt_Provider_Practice_Fax.isDisplayed());
		Assert.assertTrue(txt_Provider_Practice_Email.isDisplayed());

	}

	public void pending_Approvals_Approve_Reject() {
		waitFor(2000);
		Assert.assertTrue(tabletd_Button_Approve.isDisplayed());
		Assert.assertTrue(tabletd_Button_Reject.isDisplayed());
	}

	public void pending_Approvals_Comments() {
		Assert.assertTrue(txtbox_Comments.isDisplayed());
	}

	public void pending_Approvals_Save() {
		Assert.assertTrue(btn_Save.isDisplayed());
	}

	public void personal_Info_Email() {
		waitFor(2000);
		Assert.assertTrue(txt_Provider_Practice_Email.isDisplayed());
		Assert.assertTrue(txt_Provider_Firstname.isDisplayed());
		Assert.assertTrue(txt_Provider_Birthday.isDisplayed());
		Assert.assertTrue(txt_Provider_Gender.isDisplayed());
		Assert.assertTrue(txt_Provider_Taxonomy.isDisplayed());
		Assert.assertTrue(txt_Provider_Specialization.isDisplayed());

	}

	public void personal_Info_Phone() {
		waitFor(2000);
		Assert.assertTrue(txt_Provider_Practice_Phone.isDisplayed());
		Assert.assertTrue(txt_Provider_Firstname.isDisplayed());
		Assert.assertTrue(txt_Provider_Birthday.isDisplayed());
		Assert.assertTrue(txt_Provider_Gender.isDisplayed());
		Assert.assertTrue(txt_Provider_Taxonomy.isDisplayed());
		Assert.assertTrue(txt_Provider_Specialization.isDisplayed());

	}
	
	public void popup_Elements_Reject() {
		Assert.assertTrue(popupbtn_Approve_Reject.isEnabled());
		Assert.assertTrue(popupbtn_Cancel.isEnabled());
		Assert.assertTrue(txtbox_Reject_Reason.isEnabled());
	}

	public void check_Popup_Approve_Cancel() {
		waitFor(3000);
		Assert.assertTrue(popupbtn_Approve_Reject.isEnabled());
		Assert.assertTrue(popupbtn_Cancel.isEnabled());
	}
	
	public void check_Sucess_msg() {
		waitFor(3000);
		Assert.assertTrue(msg_Sucess.isDisplayed());
	}
	public void check_Reject_Sucessmsg() {
		waitFor(2000);
		Assert.assertTrue(msg_Reject_Sucess.isDisplayed());
	}
	
	public void check_Helpertext_Reject_Reason() {
		Assert.assertTrue(txt_Reject_Reason.isDisplayed());
	}

	public void enter_Comments(String comments) {
		SendKeysOnWebElement(btn_Refferal_Portal, comments);

	}
	public void enter_Reject_Reason(String reason) {
		SendKeysClear(txtbox_Reject_Reason, reason);
	}

	public String get_Uname() {
		WaitForWebElement(tabletd_Name);
		waitFor(3000);
		disply_Uname = GetText(tabletd_Name);
		return disply_Uname;

	}

	public void pending_Approval_name_List() {
		try {

			List<WebElement> nameList = DriverManager.getDriver().findElements(By.xpath("//table//td[1]//a"));

			List<String> List = new ArrayList<>();
			for (WebElement e : nameList) {
				List.add(e.getText());
			}
			System.out.println(List);

		} catch (Exception e) {
			System.out.println("error occured inside pending_Approval_name_List function" + e.getMessage());
		}
	}

	public void pending_Approval_PracticeName() {
		try {

			List<WebElement> practiceName = DriverManager.getDriver().findElements(By.xpath("//table//td[2]"));

			List<String> List = new ArrayList<>();
			for (WebElement e : practiceName) {
				List.add(e.getText());
			}
			System.out.println(List);

		} catch (Exception e) {
			System.out.println("error occured inside pending_Approval_PracticeName function" + e.getMessage());
		}
	}

	public void pending_Approval_Email() {
		try {

			List<WebElement> email = DriverManager.getDriver().findElements(By.xpath("//table//td[3]"));
			List<String> List = new ArrayList<>();
			for (WebElement e : email) {
				List.add(e.getText());
			}
			System.out.println(List);
		} catch (Exception e) {
			System.out.println("error occured inside pending_Approval_Email function" + e.getMessage());
		}
	}

	public void pending_Approval_List() {
		try {
			List<WebElement> phone = DriverManager.getDriver().findElements(By.xpath("//table//td[4]"));
			List<String> List = new ArrayList<>();
			for (WebElement e : phone) {
				List.add(e.getText());
			}
			System.out.println(List);
		} catch (Exception e) {
			System.out.println("error occured inside pending_Approval_List function" + e.getMessage());

		}

	}

	public void check_name_List() {
		try {

			String s = tabletd_nameone.getText();
			Assert.assertEquals(s, disply_Uname);

		} catch (Exception e) {
			System.out.println("error occured inside check_name_List function" + e.getMessage());
		}
	}
	
	public void pending_Approval_Current_NameList() {
		try {
			List<WebElement> name = DriverManager.getDriver().findElements(By.xpath("//table//td[1]"));
			List<String> List = new ArrayList<>();
			for (WebElement e : name) {
				List.add(e.getText());
			}
			for(String s:List) {
				Assert.assertNotEquals(disply_Uname, s);
				
			}
			
		} catch (Exception e) {
			System.out.println("error occured inside pending_Approval_Current_NameList function" + e.getMessage());

		}

	}

}
