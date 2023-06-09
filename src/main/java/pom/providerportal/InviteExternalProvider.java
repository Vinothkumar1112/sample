package pom.providerportal;

import java.util.ArrayList;
import java.util.List;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class InviteExternalProvider extends Ui_Base {
	
	public InviteExternalProvider(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}
	public static String disply_NPI;
	public static String disply_Name;
	public static String disply_Email;
	
	@FindBy(xpath="//input[@id='npi']")
	private WebElement txtbox_NPI;
	
	@FindBy(xpath="//input[@id='username']")
	private WebElement txtbox_Name;
	
	@FindBy(xpath="//input[@id='phonenumber']")
	private WebElement txtbox_Phone;
	
	@FindBy(xpath="//input[@id='email']")
	private WebElement txtbox_Email;
	
	@FindBy(xpath="//table//td[1]//a")
	private WebElement link_Npi_Result;
	
	@FindBy(xpath="//table//td[2]")
	private WebElement tabletd_Result_FName;
	
	@FindBy(xpath="//table//td[3]")
	private WebElement tabletd_Result_SName;
	
	@FindBy(xpath="//table//td[5]")
	private WebElement tabletd_Result_Email;
	
	@FindBy(xpath="(//table//tr)[1]")
	private WebElement tabletr_Result;
	
	@FindBy(xpath="(//table//td[6])[1]//button")
	private WebElement tabletd_Result_Actionbtn;
	
	@FindBy(xpath="//div[contains(@class,'MuiAlert-message css')][text()='Invite Sent']")
	private WebElement msg_Success_Invite_Sent;
	
	@FindBy(xpath="(//table//td[6])[1]//button[text()='Resend Invite']")
	private WebElement tabletd_Resend_Intive_Btn;
	
	@FindBy(xpath="(//table//td[1])//a")
	private WebElement tabletd_Result_NPI_Link;
	
	@FindBy(xpath="//button[text()='Close']")
	private WebElement btn_Close;
	
	
	
	
	
	public void check_Input_Attributes() {
		waitFor(3000);
		Assert.assertTrue(txtbox_NPI.isEnabled());
		Assert.assertTrue(txtbox_Name.isEnabled());
		Assert.assertTrue(txtbox_Phone.isEnabled());
		Assert.assertTrue(txtbox_Email.isEnabled());
	}
	
	public void check_Result_Action() {
		Assert.assertTrue(tabletd_Result_Actionbtn.isEnabled());
	}
	public void check_Result_Resend_Invite() {
		Assert.assertTrue(tabletd_Resend_Intive_Btn.isEnabled());
	}
	public void check_Success_Result() {
		waitFor(3000);
		Assert.assertTrue(msg_Success_Invite_Sent.isDisplayed());
		
	}
	
	public void click_Result_Action() {
		ClickOnWebElement(tabletd_Result_Actionbtn);
	}
	
	public void click_Result_Resent_Invite() {
		ClickOnWebElement(tabletd_Resend_Intive_Btn);
	}
	
	public void click_Result_NPI() {
		ClickOnWebElement(tabletd_Result_NPI_Link);
	}
	
	public void click_Close() {
		ClickOnWebElement(btn_Close);
	}
	
	public void enter_NPI(String npi) {
		SendKeysOnWebElement(txtbox_NPI, npi);
	}
	
	public void enter_Name(String name) {
		SendKeysOnWebElement(txtbox_Name, name);
	}
	
	public void enter_Email(String email) {
		SendKeysOnWebElement(txtbox_Email, email);
	}
	
	public String get_NPI() {
		WaitForWebElement(txtbox_NPI);
		waitFor(3000);
		disply_NPI = GetText(txtbox_NPI);
		return disply_NPI;

	}
	
	public String get_Name() {
		WaitForWebElement(txtbox_Name);
		waitFor(3000);
		disply_Name = GetText(txtbox_Name);
		return disply_Name;

	}
	
	public String get_Email() {
		WaitForWebElement(txtbox_Email);
		waitFor(3000);
		disply_Email = GetText(txtbox_Email);
		return disply_Email;

	}
	public void check_Search_Result_NPI() {
		
		String s=link_Npi_Result.getText();
		Assert.assertEquals(s, disply_NPI);
		
	}
	
	public void check_Search_Result_Name() {
				
		String s=tabletd_Result_FName.getText();
		if(s.equalsIgnoreCase(disply_Name)) {
		Assert.assertEquals(s, disply_Name);
		}
		
		String g=tabletd_Result_SName.getText();
		if(g.equalsIgnoreCase(disply_Name)) {
		Assert.assertEquals(g, disply_Name);
		}
		
	}
	
	public void check_Search_Result_Email() {
		String s=tabletd_Result_Email.getText();
		Assert.assertEquals(s, disply_Email);
			
	}
	
	public void invite_Providers_Results() {
		try {
			List<WebElement> searchresult = DriverManager.getDriver().findElements(By.xpath("//table//tr)[1]"));
			List<String> List = new ArrayList<>();
			for (WebElement e : searchresult) {
				List.add(e.getText());
			}
			System.out.println(List);
		
		} catch (Exception e) {
			System.out.println("error occured inside invite_Providers_Results function" + e.getMessage());

		}

	}
	

	
	

}
