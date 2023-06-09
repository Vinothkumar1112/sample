package com.driverfactory;

import java.io.IOException;

import org.openqa.selenium.WebDriver;

import com.driverfactory.DriverFactory.BrowserList;
import com.driverfactory.DriverFactory.Target;
import com.resuableMethods.*;
import com.driverfactory.manager.AndroidChromeDriverManager;
import com.driverfactory.manager.ChromeDriverManager;
import com.driverfactory.manager.EdgeDriverManager;
import com.driverfactory.manager.FirefoxDriverManager;
import com.driverfactory.manager.SafariDriverManager;

import exceptions.BrowserNotSupportedException;

public class DriverFactory {
	public WebDriver getDriver(Target target) throws Exception {
		WebDriver driver;
		//String browser="CHROME";
		//String browser =System.getProperty("browser");
	String browser =(Ui_Base.getData("browser"));
		
        BrowserList browserType = BrowserList.valueOf(browser.toUpperCase());
        switch (browserType) {

            case CHROME:
                driver = new ChromeDriverManager().createDriver(target);
                driver.manage().window().maximize();
                break;
            case FIREFOX:
                driver = new FirefoxDriverManager().createDriver(target);
                driver.manage().window().maximize();
                break;
            case EDGE:
                driver = new EdgeDriverManager().createDriver(target);
                break;
            case SAFARI:
                driver = new SafariDriverManager().createDriver(target);
                driver.manage().window().maximize();
                break;
            
            case ANDROIDCHROME:
                driver = new AndroidChromeDriverManager().createDriver(target);
//                driver.manage().window().maximize();
                break;
            default:
                throw new BrowserNotSupportedException(browser);
        }
        return driver;
    }

    public enum BrowserList {
        CHROME, FIREFOX, EDGE, SAFARI, ANDROIDCHROME
    }
    
    public enum Target {
        LOCAL, REMOTE
    }
	

}
