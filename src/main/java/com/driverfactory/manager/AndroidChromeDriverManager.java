package com.driverfactory.manager;

import org.openqa.selenium.WebDriver;

import com.driverfactory.DriverFactory.Target;
import com.driverfactory.Factory;

import exceptions.TargetNotValidException;

public class AndroidChromeDriverManager implements Factory {

	private WebDriver webdriver;

//	private ChromeOptions getOptions() {
//		ChromeOptions chromeOptions = new ChromeOptions();
//		chromeOptions.addArguments("--start-maximized");
//		chromeOptions.addArguments("--disable-infobars");
//		chromeOptions.addArguments("--disable-notifications");
//		chromeOptions.addArguments("----unlimited-storage");
//		return chromeOptions;
//	}

	@Override
	public WebDriver createDriver(Target target) throws Exception {

		switch (target) {
		case LOCAL:
//			WebDriverManager.getInstance(CHROME).setup();
//			webdriver = new ChromeDriver(getOptions());
			break;
		case REMOTE:
			webdriver = createRemoteDriver();
			break;
		default:
			throw new TargetNotValidException(target.toString());
		}
		return webdriver;

	}

}
