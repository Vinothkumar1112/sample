package pom.providerportal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.junit.Assert;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class RevokeUser extends Ui_Base {
	
	

	public RevokeUser(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	// private String s=get_Uname();
	public static String disply_Uname;

	@FindBy(xpath = "//div[@class='sidebar_linksContainer__hry2b']//a[text()='Revoke User']")
	private WebElement btn_RevokeUser;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[1]")
	private WebElement header_AccountStatus;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[2]")
	private WebElement header_Name;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[3]")
	private WebElement header_Email;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[4]")
	private WebElement header_Phone;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[5]")
	private WebElement header_LastModified;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[6]")
	private WebElement header_ModifiedBy;

	@FindBy(xpath = "(//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr[1])[1]//th[7]")
	private WebElement header_Action;

	@FindBy(xpath = "//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[7]")
	private WebElement tdata_actdeact;

	@FindBy(xpath = "//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[2]")
	private WebElement tdata_GetUsername;

	@FindBy(xpath = "//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[3]")
	private WebElement tdata_GetEmail;

	@FindBy(xpath = "//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[4]")
	private WebElement tdata_GetPhone;

	@FindBy(xpath = "//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[2]")
	private WebElement tdata_GetName;

	@FindBy(xpath = "//table")
	private WebElement disply_Table;

	@FindBy(id = "allRadio")
	private WebElement radio_All;

	@FindBy(id = "actRadio")
	private WebElement radio_Active;

	@FindBy(id = "inActRadio")
	private WebElement radio_Inactive;

	@FindBy(xpath = "//input[@id='username']")
	private WebElement txtbox_Username;

	@FindBy(xpath = "//input[@id='email']")
	private WebElement txtbox_Email;

	@FindBy(xpath = "//input[@id='phonenumber']")
	private WebElement txtbox_Phone;

	@FindBy(xpath = "(//table//tr)[2]//td[7]")
	private WebElement btn_Activate_Deactivate;

	@FindBy(xpath = "(//table//tr)[2]//td[2]")
	private WebElement get_Username;

	@FindBy(xpath = "(//div[@class='Style_activate___GTo6']//div[text()='Confirm Activate?'])[1]")
	private WebElement popup_Confirm_Activate;
	
	@FindBy(xpath="(//div[@class='Style_deActivate__Vg9hZ']//div[text()='Confirm Deactivate?'])[1]")
	private WebElement popup_Confirm_Deactivate;

	@FindBy(xpath = "(//div[@class='Style_activate___GTo6']//div[text()='Cancel'])[1]")
	private WebElement popup_Activate_Cancel;
	
	@FindBy(xpath = "(//div[@class='Style_deActivate__Vg9hZ']//div[text()='Cancel'])[1]")
	private WebElement popup_Deactivate_Cancel;

	@FindBy(xpath = "(//div[@class='Style_activate___GTo6']//div[text()=' Activated Successfully'])[1]")
	private WebElement popup_Sucess_Activate;
	
	@FindBy(xpath = "(//div[@class='Style_deActivate__Vg9hZ']//div[text()=' Deactivated Successfully'])[1]")
	private WebElement popup_Sucess_Deactivate;

	public void click_RevokeUser() {
		ClickOnWebElement(btn_RevokeUser);
	}

	public void click_AccountStatus() {
		ClickOnWebElement(header_AccountStatus);
	}

	public void click_AllRadio() {
		ClickOnWebElement(radio_All);
	}

	public void click_Name() {
		ClickOnWebElement(header_Name);
	}

	public void click_LastModified() {
		ClickOnWebElement(header_LastModified);
	}

	public void click_ActiveRadio() {
		ClickOnWebElement(radio_Active);
	}

	public void click_InactiveRadio() {
		ClickOnWebElement(radio_Inactive);
	}

	public void click_Activate_Deactivate() {

		ClickOnWebElement(btn_Activate_Deactivate);

	}

	public  String get_Uname() {
		WaitForWebElement(get_Username);
		waitFor(3000);
		 disply_Uname = GetText(get_Username);
		return disply_Uname;

	}
	


	public void click_Confirm_Activate() {
		
		WaitForWebElement(popup_Confirm_Activate);
		waitFor(3000);
		//ClickOnWebElement(popup_Confirm_Activate);
		jsClick(popup_Confirm_Activate);
	}
	
	public void click_Confirm_Deactivate() {
		WaitForWebElement(popup_Confirm_Deactivate);
		waitFor(3000);
		jsClick(popup_Confirm_Deactivate);
	}

	public void click_Cncl_Activate() {
		jsClick(popup_Activate_Cancel);
		
	}
	
	public void click_Cncl_Deactivate() {
		jsClick(popup_Deactivate_Cancel);
	
	}


	public void enter_Name(String name) {
		waitFor(2000);
		clear_field(txtbox_Username);
		SendKeysOnWebElement(txtbox_Username, name);
	}

	public void enter_Email(String email) {
		waitFor(2000);
		clear_field(txtbox_Email);
		SendKeysOnWebElement(txtbox_Email, email);
	}

	public void enter_PhoneNumber(String phone) {
		waitFor(2000);
		clear_field(txtbox_Phone);
		SendKeysOnWebElement(txtbox_Phone, phone);
	}

	public void username_List() {
		try {

			List<WebElement> unameList = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[2]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : unameList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);

		} catch (Exception e) {
			System.out.println("error occured inside username_List function" + e.getMessage());

		}

	}

	public void accountStatus_List() {
		try {

			List<WebElement> statusList = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[1]"));

			// Select se = new Select((WebElement) statusList);
			List<String> originalList = new ArrayList<>();
			for (WebElement e : statusList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);

		} catch (Exception e) {
			System.out.println("error occured inside accountStatus_List function" + e.getMessage());

		}

	}

	public void lastModified_List() {
		try {

			List<WebElement> modifiedDateList = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[5]"));

//			Select se = new Select((WebElement) modifiedDateList);
			List<String> originalList = new ArrayList<>();
			for (WebElement e : modifiedDateList) {
				originalList.add(e.getText());
			}

			List<String> tempList = originalList;
			Collections.sort(tempList);
			Assert.assertEquals(tempList, originalList);

		} catch (Exception e) {
			System.out.println("error occured inside lastModified_List function" + e.getMessage());

		}

	}

	public void account_Status_Active_List() {
		try {

			List<WebElement> AccountStatus = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[1]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : AccountStatus) {
				originalList.add(e.getText());
				System.out.println(originalList);
			}
			for (String s : originalList) {
				Assert.assertEquals(s, "Active");
			}
		} catch (Exception e) {
			System.out.println("error occured inside account_Status_Active_List function" + e.getMessage());

		}

	}

	public void account_Status_Inactive_List() {
		try {

			List<WebElement> AccountStatus = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[1]"));

			// Select se = new Select((WebElement) AccountStatus);
			List<String> originalList = new ArrayList<>();
			for (WebElement e : AccountStatus) {
				originalList.add(e.getText());
				System.out.println(originalList);
			}
			for (String s : originalList) {
				Assert.assertEquals(s, "Inactive");
			}

		} catch (Exception e) {
			System.out.println("error occured inside account_Status_Inactive_List function" + e.getMessage());

		}

	}

	public void sorting_Name() {
		try {
			String disply_Name = GetAttribute(txtbox_Username);

			List<WebElement> Name = DriverManager.getDriver()
					.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[2]"));

			List<String> originalList = new ArrayList<>();
			for (WebElement e : Name) {
				originalList.add(e.getText());
			}
			for (String s : originalList) {
				Assert.assertEquals(disply_Name, s);
			}

		} catch (Exception e) {
			System.out.println("error occured inside sorting_Name function" + e.getMessage());

		}

	}

	public void sorting_Email() {
		try {

			String get_Email = tdata_GetEmail.getText();

			waitFor(3000);
			String disply_Email = GetAttribute(txtbox_Email);
			System.out.println(disply_Email);
			Assert.assertEquals(get_Email, disply_Email);

		} catch (Exception e) {
			System.out.println("error occured inside sorting_Email_List function" + e.getMessage());

		}

	}

	public void sorting_Phone() {
		try {

			String get_Phone = tdata_GetPhone.getText();
			waitFor(3000);
			String disply_Phone = GetAttribute(txtbox_Phone);
			System.out.println(disply_Phone);
			System.out.println(get_Phone);
			Assert.assertEquals(get_Phone, disply_Phone);

		} catch (Exception e) {
			System.out.println("error occured inside sorting_Phone function" + e.getMessage());

		}

	}

	public void check_ActiveUserList() {
		waitFor(5000);
		ClickOnWebElement(radio_Active);

		List<WebElement> unameList = DriverManager.getDriver()
				.findElements(By.xpath("//table[@class='MuiTable-root Style_tbl__XPiJa css-aj3sh9']//tr//td[2]"));

		List<String> originalList = new ArrayList<>();
		for (WebElement e : unameList) {
			originalList.add(e.getText());
		}
		System.out.println(originalList);
		System.out.println(disply_Uname);
		for (String s : originalList) {
			if (disply_Uname == s) {
				Assert.assertEquals(disply_Uname, s);
			} 
			
			//else {
//				Assert.assertNotEquals(disply_Uname, s);
//				// System.out.println("List is not contain:"+ get_Uname());
//				System.out.println(s);
//			}
		}

	}
	
	public void check_Cncl_ActiveUserList() {
		waitFor(5000);
		ClickOnWebElement(radio_All);

		List<WebElement> unameList = DriverManager.getDriver()
				.findElements(By.xpath("//table//tr//td[2]"));		

		List<String> originalList = new ArrayList<>();
		for (WebElement e : unameList) {
			originalList.add(e.getText());
		}
		System.out.println(originalList);
		System.out.println(disply_Uname);
		for (String s : originalList) {
			if (disply_Uname == s) {
				Assert.assertEquals(disply_Uname, s);
				
				
			} else {
				Assert.assertNotEquals(disply_Uname, s);
				// System.out.println("List is not contain:"+ get_Uname());
				System.out.println(s);
			}
		}

	}
	
	
	
	public void check_DeactiveUserList() {
		waitFor(5000);
		ClickOnWebElement(radio_Inactive);

		List<WebElement> unameList = DriverManager.getDriver()
				.findElements(By.xpath("//table//tr//td[2]"));		

		List<String> originalList = new ArrayList<>();
		for (WebElement e : unameList) {
			originalList.add(e.getText());
		}
		System.out.println(originalList);
		System.out.println(disply_Uname);
		for (String s : originalList) {
			if (disply_Uname == s) {
				Assert.assertEquals(disply_Uname, s);
				
				
			} else {
				Assert.assertNotEquals(disply_Uname, s);
				// System.out.println("List is not contain:"+ get_Uname());
				System.out.println(s);
			}
		}

	}
	
	public void check_Cncl_deactiveUserList() {
		waitFor(5000);
		ClickOnWebElement(radio_All);

		List<WebElement> unameList = DriverManager.getDriver()
				.findElements(By.xpath("//table//tr//td[2]"));		

		List<String> originalList = new ArrayList<>();
		for (WebElement e : unameList) {
			originalList.add(e.getText());
		}
		System.out.println(originalList);
		System.out.println(disply_Uname);
		for (String s : originalList) {
			if (disply_Uname == s) {
				Assert.assertEquals(disply_Uname, s);
				
				
			} else {
				Assert.assertNotEquals(disply_Uname, s);
				// System.out.println("List is not contain:"+ get_Uname());
				System.out.println(s);
			}
		}

	}

	public void table_Header_Data() {
		try {

			Assert.assertTrue(header_AccountStatus.isDisplayed());
			Assert.assertTrue(header_Name.isDisplayed());
			Assert.assertTrue(header_Email.isDisplayed());
			Assert.assertTrue(header_Phone.isDisplayed());
			Assert.assertTrue(header_LastModified.isDisplayed());
			Assert.assertTrue(header_ModifiedBy.isDisplayed());
			Assert.assertTrue(header_Action.isDisplayed());

		} catch (Exception e) {
			System.out.println("error occured inside table_Header_Data" + e.getMessage());

		}
	}

	public void radio_Account_Status() {
		try {
			Assert.assertTrue(radio_All.isDisplayed());
			Assert.assertTrue(radio_Active.isDisplayed());
			Assert.assertTrue(radio_Inactive.isDisplayed());
		} catch (Exception e) {
			System.out.println("error occured inside radio_Account_Status" + e.getMessage());
		}
	}

	public void tdata_Active_Deactive() {
		waitFor(3000);
		Assert.assertTrue(tdata_actdeact.isEnabled());
	}

	public void search_Boxes() {
		try {

			Assert.assertTrue(txtbox_Username.isEnabled());
			Assert.assertTrue(txtbox_Email.isEnabled());
			Assert.assertTrue(txtbox_Phone.isEnabled());
		} catch (Exception e) {
			System.out.println("error occured inside search_Boxes" + e.getMessage());
		}
	}

	public void clear_SearchBoxes() {
		waitFor(3000);

		clear_field(txtbox_Username);
		clear_field(txtbox_Email);
		clear_field(txtbox_Phone);

	}

	public void disply_Table() {
		Assert.assertTrue(disply_Table.isDisplayed());
	}

	public void popup_Activate() {
		WaitForWebElement(popup_Confirm_Activate);
		WaitForWebElement(popup_Activate_Cancel);
		Assert.assertTrue(popup_Confirm_Activate.isDisplayed());
		Assert.assertTrue(popup_Confirm_Activate.isEnabled());

		Assert.assertTrue(popup_Activate_Cancel.isDisplayed());
		Assert.assertTrue(popup_Activate_Cancel.isEnabled());
	}

	public void popup_Sucess() {
		WaitForWebElement(popup_Sucess_Activate);
		Assert.assertTrue(popup_Sucess_Activate.isDisplayed());
		
		Actions action = new Actions(DriverManager.getDriver());
		action.sendKeys(Keys.ESCAPE).build().perform();
		waitFor(3000);
		ClickOnWebElement(radio_Active);

	}
	
	public void popup_Sucess_Deactivation() {
		WaitForWebElement(popup_Sucess_Deactivate);
		Assert.assertTrue(popup_Sucess_Deactivate.isDisplayed());
		
		Actions action = new Actions(DriverManager.getDriver());
		action.sendKeys(Keys.ESCAPE).build().perform();
		waitFor(3000);
		ClickOnWebElement(radio_Inactive);

	}

	public void popup_Deactivate() {
		WaitForWebElement(popup_Confirm_Deactivate);
		WaitForWebElement(popup_Deactivate_Cancel);
		Assert.assertTrue(popup_Confirm_Deactivate.isDisplayed());
		Assert.assertTrue(popup_Confirm_Deactivate.isEnabled());
		
		Assert.assertTrue(popup_Deactivate_Cancel.isDisplayed());
		Assert.assertTrue(popup_Deactivate_Cancel.isEnabled());
	}
}
