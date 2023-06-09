package com.driverfactory;

import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import com.resuableMethods.*;

import com.driverfactory.DriverFactory.Target;


public interface Factory {
	WebDriver createDriver(Target target) throws Exception;

    default WebDriver createRemoteDriver() throws Exception {
    	String browser =(Ui_Base.getData("browser"));

        //String USERNAME = System.getProperty("BROWSERSTACK_USERNAME");
    	String USERNAME =Ui_Base.getData("BROWSERSTACK_USERNAME");

        //String ACCESS_KEY = System.getProperty("BROWSERSTACK_ACCESS_KEY");
    	String ACCESS_KEY =Ui_Base.getData("BROWSERSTACK_ACCESS_KEY");

        String URL = "https://" + USERNAME + ":" + ACCESS_KEY + "@hub.browserstack.com/wd/hub";

        DesiredCapabilities caps = new DesiredCapabilities();

        if ((browser).equalsIgnoreCase("androidchrome")) {

            caps.setCapability("browserName", "android");

            caps.setCapability("device", "Samsung Galaxy S21 Ultra");

            caps.setCapability("realMobile", "true");

            caps.setCapability("os_version", "11.0");

        } else {

            caps.setCapability("os", "OS X");

            caps.setCapability("osVersion", "Monterey");

            caps.setCapability("browser", "Safari");

            caps.setCapability("browser_version", "15.0");

        }



        caps.setCapability("project", "eyecare_providerportal");

        caps.setCapability("build", "ecp360_providerportal");

        try {

            return new RemoteWebDriver(new URL(URL), caps);

        } catch (MalformedURLException e) {

            System.out.println(String.format("URL not valid for remote browser", URL));

        }

        return null;


}}
