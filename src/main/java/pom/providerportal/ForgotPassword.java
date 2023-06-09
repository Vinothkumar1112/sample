package pom.providerportal;

import org.junit.Assert;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class ForgotPassword extends Ui_Base{
	
	public ForgotPassword(WebDriver driver) {
		PageFactory.initElements(driver, this);		
	}
	
	@FindBy(xpath="//a[text()='Forgot Password']")
	private WebElement link_ForgotPass;
	
	@FindBy(id = "userName")
	private WebElement txtbox_username;

	@FindBy(xpath="//button[@type='submit']")
	private WebElement btn_Submit;
	
	@FindBy(xpath="//h1[text()='Reset Password']")
	private WebElement txt_ResetPass;
	
	@FindBy(xpath="//a[text()='Back To Login']")
	private WebElement link_BacktoLogin;
	
	@FindBy(xpath="//p[text()='This is a required field']")
    private WebElement txt_RequiredField;
	
	@FindBy(xpath="//p[text()='Incorrect email or username. Please Try again.']")
	private WebElement txt_Incorrectemailoruser;
	
	@FindBy(xpath="//h1[text()='Sign In']")
	private WebElement txt_loginpage;
	
	@FindBy(id="password")
	private WebElement txtbox_passoword;
	
	@FindBy(id="confirmPassword")
	private WebElement txtbox_Confirmpass;
	
	@FindBy(xpath="//button[normalize-space()='Submit']")
	private WebElement btn_Paswordsubmit;
	
	@FindBy(xpath="//a[text()='Back To Login']")
	private WebElement link_backlogin;
	
	@FindBy(xpath="//p[text()='Passwords do not match. Try again.']")
	private WebElement msg_Passwordnotmatch;
	
	@FindBy(xpath="//div[contains(text(),'Your password was reset successfully')]")
	private WebElement msg_ResetSuccess;
	
	@FindBy(xpath="//h2[text()='Create New Password']")
	private WebElement txt_titlenewpassword;


	public WebElement getTxt_titlenewpassword() {
		return txt_titlenewpassword;
	}

	public WebElement getMsg_ResetSuccess() {
		WaitForWebElement(msg_ResetSuccess);
		return msg_ResetSuccess;
	}

	public WebElement getMsg_Passwordnotmatch() {
		WaitForWebElement(msg_Passwordnotmatch);
		return msg_Passwordnotmatch;
	}

	public WebElement getTxt_loginpage() {
		return txt_loginpage;
	}

	public WebElement getTxt_Incorrectemailoruser() {
		return txt_Incorrectemailoruser;
	}

	public WebElement getTxt_RequiredField() {
		return txt_RequiredField;
	}

	public WebElement getLink_BacktoLogin() {
		return link_BacktoLogin;
	}

	public WebElement getBtn_Submit() {
		return btn_Submit;
	}
	
	public WebElement getTxtbox_username() {
		return txtbox_username;
	}


	public WebElement getTxt_ResetPass() {
		WaitForWebElement(txt_ResetPass);
		return txt_ResetPass;
	}


	public WebElement getLink_ForgotPass() {
		return link_ForgotPass;
	}
	
	
	/**********************************************/

	
	public void enter_Username(String username){
		WaitForWebElement(getTxtbox_username());
		SendKeysOnWebElement(getTxtbox_username(), username);
		}
	
	public void click_Submit() {
		ClickOnWebElement(btn_Submit);
}
	public void find_MessageInternal() {
		waitFor(20);
		Assert.assertTrue(DriverManager.getDriver().getPageSource().contains("Please check your email to reset your password"));
		 
	}
	public void find_MessageExternal() {
		waitFor(20);
		Assert.assertTrue(DriverManager.getDriver().getPageSource().contains("A link has been sent to your registered email to reset your password. Please check"));
	}
	
	public void click_BacktoLogin() {
		WaitForWebElement(link_BacktoLogin);
		ClickOnWebElement(link_BacktoLogin);
}
	public void find_ErrorMessageExternal() {
		waitFor(20);
		Assert.assertFalse(DriverManager.getDriver().getPageSource().contains("A link has been sent to your registered email to reset your password. Please check"));
	}
	
	public void Forgot_Password_Url() throws Exception {
		//String URL = System.getProperty("Forgot_Password_Email_Link");
		DriverManager.getDriver().get(getData("Forgot_Password_Email_Link"));
		}
	
	public void Create_NewPass() {
		Assert.assertTrue(isElementPresent(txtbox_passoword));
		Assert.assertTrue(isElementPresent(txtbox_Confirmpass));
		Assert.assertTrue(isElementPresent(btn_Paswordsubmit));
		Assert.assertTrue(isElementPresent(link_backlogin));
		
	}
	
	public void click_Password_Submit() {
		ClickOnWebElement(btn_Paswordsubmit);
}
	
	public void enter_Passwords(String password1,String password2){
		WaitForWebElement(txtbox_passoword);
		WaitForWebElement(txtbox_Confirmpass);
		SendKeysOnWebElement(txtbox_passoword, password1);
		SendKeysOnWebElement(txtbox_Confirmpass, password2);
		}
	
	public void click_BackLogin() {
		ClickOnWebElement(link_backlogin);
}
	
	
}
