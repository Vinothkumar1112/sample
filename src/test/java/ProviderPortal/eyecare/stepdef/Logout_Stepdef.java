package ProviderPortal.eyecare.stepdef;

import org.junit.Assert;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pom.providerportal.Logout;

public class Logout_Stepdef extends Ui_Base {
	Logout logout=new Logout(DriverManager.getDriver());
	
	@When("user clicks on {string} button")
	public void user_clicks_on_button(String string) {
		logout.click_logout();
	   
	}




	@Then("user should see Login screen")
	public void user_should_see_login_screen() {
		Assert.assertTrue(logout.getTxt_loginpage().isDisplayed());
	  
	}

	

}
