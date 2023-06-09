package pom.providerportal;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.junit.Assert;

import com.resuableMethods.Ui_Base;

public class Logout extends Ui_Base {
	
	public  Logout(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}
		
		@FindBy(xpath="//a[text()='LOGOUT']") 
		private WebElement btn_Logout;
		
		@FindBy(xpath="//h1[text()='Sign In']")
		private WebElement txt_loginpage;

		public WebElement getBtn_Logout() {
			return btn_Logout;
		}
		
		public WebElement getTxt_loginpage(){
			return txt_loginpage;
		}
		
	public void click_logout() {
		ClickOnWebElement(btn_Logout);
		
		
		
	}
		
	}


