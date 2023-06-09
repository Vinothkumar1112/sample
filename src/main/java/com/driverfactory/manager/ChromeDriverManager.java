package com.driverfactory.manager;

import static io.github.bonigarcia.wdm.config.DriverManagerType.CHROME;

import java.io.IOException;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import com.driverfactory.DriverFactory.Target;
import com.driverfactory.Factory;

import exceptions.TargetNotValidException;
import io.github.bonigarcia.wdm.WebDriverManager;

public class ChromeDriverManager implements Factory {

	private WebDriver webdriver;

	private ChromeOptions getOptions() {
		ChromeOptions chromeOptions = new ChromeOptions();
		chromeOptions.addArguments("--start-maximized");
		chromeOptions.addArguments("--disable-infobars");
		chromeOptions.addArguments("--disable-notifications");
		chromeOptions.addArguments("----unlimited-storage");
//		chromeOptions.addArguments("--headless");
		return chromeOptions;
	}

	@Override
	public WebDriver createDriver(Target target) throws Exception  {

		switch (target) {
		case LOCAL:
			WebDriverManager.getInstance(CHROME).setup();
//			WebDriverManager.getInstance(CHROME).setup();
			webdriver = new ChromeDriver(getOptions());
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
