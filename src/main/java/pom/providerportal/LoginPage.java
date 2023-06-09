package pom.providerportal;

import java.io.IOException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.github.dockerjava.api.model.Driver;
import com.resuableMethods.Ui_Base;

public class LoginPage extends Ui_Base {
	
	public LoginPage(WebDriver driver) {
		PageFactory.initElements(driver, this);		
	}
	
	@FindBy(id = "username")
	private WebElement usernameTxt;
	
	@FindBy(id="password")
	private WebElement passwordTxt;
	
	@FindBy(xpath="//button[@type='submit']")
	private WebElement loginBtn;
	

	@FindBy(xpath="//h1[text()='Sign In']")
	private WebElement txt_loginpage;
	
	@FindBy(xpath="//a[text()='Create An Account']")
	private WebElement link_CreateAcc;
	
	
	@FindBy(xpath="//a[text()='Forgot Password']")
	private WebElement link_ForgotPass;
	
	@FindBy(xpath="//a[text()='Username?']")
	private WebElement link_Username;
	
	@FindBy(xpath="(//button[@type='button'])[1]")
	private WebElement homeBtn;
		
	
	@FindBy(xpath="//div[contains(text(),'For External provider - Your primary practice email is your username')]")
	private WebElement msg_Forgotusername;
	
	
	@FindBy(xpath="//label[contains(text(),'Please enter your email or username')]")
	private WebElement txt_ForgotpassPage;
	
	
	@FindBy(xpath="//div[contains(text(),'Register Account')]")
	private WebElement txt_RegisteraccPage;
	
	
	@FindBy(id="password-helper-text")
	private WebElement txt_PasswordHelper;
	
	@FindBy(id="username-helper-text")
	private WebElement txt_UsernameHelper;
	
	@FindBy(xpath="//div[contains(text(),'Invalid Username or Password')]")
	private WebElement msg_InvalidUserorPaswrd;
	
	@FindBy(xpath="//div[contains(text(),'Invalid Username or Password')]")
	private WebElement msg_AccountLocked;
	
	
	
	public WebElement getMsg_AccountLocked() {
		WaitForWebElement(msg_AccountLocked);
		return msg_AccountLocked;
	}

	public WebElement getMsg_InvalidUserorPaswrd() {
		return msg_InvalidUserorPaswrd;
	}

	public WebElement getTxt_UsernameHelper() {
		return txt_UsernameHelper;
	}

	public WebElement getTxt_RegisteraccPage() {
		WaitForWebElement(txt_RegisteraccPage);
		return txt_RegisteraccPage;
	}

	public WebElement getTxt_PasswordHelper() {
		return txt_PasswordHelper;
	}

	public WebElement getTxt_ForgotpassPage() {
		return txt_ForgotpassPage;
	}

	public WebElement getMsg_Forgotusername() {
		WaitForWebElement(msg_Forgotusername);
		return msg_Forgotusername;
	}
	
	public WebElement getLink_ForgotPass() {
		return link_ForgotPass;
	}

	public WebElement getLink_Username() {
		return link_Username;
	}

	public WebElement getTxt_loginpage(){
		return txt_loginpage;
	}
	
	public WebElement getLink_CreateAcc() {
		return link_CreateAcc;
	}

	public WebElement getUsernameTxt() {
		return usernameTxt;
	}

	public WebElement getPasswordTxt() {
		return passwordTxt;
	}

	public WebElement getLoginBtn() {
		return loginBtn;
	}

	public WebElement getHomeBtn() {
		return homeBtn;
	}
//********************************************************
	
	public void launchUrl() throws Exception {
		//String URL = System.getProperty("DESKTOP_URL");
		DriverManager.getDriver().get(getData("Provider_Url"));
	}
		
	public void enter_Uname_Password(String username, String password) {
		
		SendKeysOnWebElement(usernameTxt,username);
		SendKeysOnWebElement(passwordTxt, password);
}
	public void click_LoginBtn() {
		ClickOnWebElement(loginBtn);
}
	
	public void click_ForgotUsername() {
		ClickOnWebElement(link_Username);
}
	
	public void click_ForgotPass() {
		ClickOnWebElement(link_ForgotPass);
}
	public void click_CreateAcc() {
		ClickOnWebElement(link_CreateAcc);
}
	
	public void message_AccountLocked(){
		GetText(msg_AccountLocked);
		
	}
	
}
