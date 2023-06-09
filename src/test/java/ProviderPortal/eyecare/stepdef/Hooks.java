package ProviderPortal.eyecare.stepdef;

import java.io.File;
import java.io.IOException;
import java.util.Properties;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;


import com.driverfactory.DriverFactory;
import com.driverfactory.DriverFactory.Target;
import com.driverfactory.DriverManager;
import com.utilities.ConfigReader;


//import eyesmanager.EyesManager;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;

public class Hooks {

	private DriverFactory driverFactory;
	private WebDriver driver;
	private ConfigReader configReader;
	Properties prop;
	Scenario scenario;

	@Before(order = 0)
	public void getProperty() {
		configReader = new ConfigReader();
		prop = configReader.init_prop();
	}

	@Before(order = 1)
	public void launchBrowser(Scenario scenario) {
		try {
			this.scenario = scenario;
			String target = prop.getProperty("target");
			driverFactory = new DriverFactory();
			driver = driverFactory.getDriver(Target.valueOf(target.toUpperCase()));
			driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
			DriverManager.setDriver(driver);
			
		
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@After(order = 0)
	public void quitBrowser() {
		DriverManager.quit();
		// MARK: Eyes quit
	
	}

	@After(order = 1)
	public void addScreenshot(Scenario scenario) throws IOException {
		
		scenario.attach(byteScreenshot(), "image/png", "MyscreenShot");
		
//		if (scenario.isFailed()) {}
	}
	
	
	public byte[] byteScreenshot() throws IOException {
		System.out.println("************* After Hooks Started ****************");
		

			File screenshot = ((TakesScreenshot) DriverManager.getDriver()).getScreenshotAs(OutputType.FILE);
			byte[] content=FileUtils.readFileToByteArray(screenshot);
			return content;
			

	}
}
