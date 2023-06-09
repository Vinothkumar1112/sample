package com.driverfactory.manager;

import static io.github.bonigarcia.wdm.config.DriverManagerType.EDGE;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.edge.EdgeOptions;

import com.driverfactory.DriverFactory.Target;
import com.driverfactory.Factory;

import exceptions.TargetNotValidException;
import io.github.bonigarcia.wdm.WebDriverManager;

public class EdgeDriverManager implements Factory {
	
	WebDriver webdriver;
	
    @Override
    public WebDriver createDriver(Target target) throws Exception {
    	switch (target) {
        case LOCAL:
            WebDriverManager.getInstance(EDGE).setup();
            webdriver = new EdgeDriver(getOptions());
            break;
        case REMOTE:
            webdriver = createRemoteDriver();
            break;
        default:
            throw new TargetNotValidException(target.toString());
    }
    return webdriver;
    }
    
    public EdgeOptions getOptions() {
    	EdgeOptions edgeOptions = new EdgeOptions();
    	edgeOptions.setCapability("CHROMIUM", false);
        return edgeOptions;
    }

}
