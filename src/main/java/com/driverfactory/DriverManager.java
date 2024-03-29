package com.driverfactory;

import org.openqa.selenium.WebDriver;

import com.driverfactory.DriverManager;

public class DriverManager {
	private static ThreadLocal<WebDriver> driver = new ThreadLocal<>();
	
	private DriverManager() {}
	
	public static WebDriver getDriver() {	
		return driver.get();
	}
	
	public static void setDriver(WebDriver driver) {
		DriverManager.driver.set(driver);
	}
	
    public static void quit() {
    	DriverManager.driver.get().quit();
        driver.remove();
    }


}
