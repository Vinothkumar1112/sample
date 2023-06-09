package com.resuableMethods;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.time.Duration;
import java.util.List;
import java.util.Properties;
import java.util.Random;
import java.util.Set;

import org.apache.commons.lang.RandomStringUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.Keys;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import com.driverfactory.DriverManager;

public class Ui_Base {
	
	public static Properties props;	
//public static WebDriver driver;
//	public static WebDriverWait wait;
//	public String URL;
//	public String devTypeToGetProperty;
//	public static String deviceType;
//	
	

public String GetText(WebElement element) {
	String text=element.getText();
	return text;
	
}

public String GetAttribute(WebElement element) {
	String value=element.getAttribute("value");
	return value;
	
}

public void ClearText(WebElement element) {
	element.clear();
	}

	public void ClickOnWebElement(WebElement element) {
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		WebElement webelement = exwait.until(ExpectedConditions.visibilityOf(element));
		webelement.click();
	}
	public void SendKeysClear(WebElement element, String Value){
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		WebElement webelement = exwait.until(ExpectedConditions.visibilityOf(element));
		webelement.click();	
		webelement.sendKeys(Value);
	}
	
	public void clear_field(WebElement element) {
		Actions actions = new Actions(DriverManager.getDriver());
		actions.click(element).keyDown(Keys.CONTROL).
		sendKeys("a").keyUp(Keys.CONTROL).sendKeys(Keys.BACK_SPACE).build().perform();
	}

	
	
	
	public void WaitForWebElement(WebElement element) {
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		exwait.until(ExpectedConditions.visibilityOf(element));
	}
	
	public void WaitForListWebElement(List<WebElement> element) {
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		exwait.until(ExpectedConditions.visibilityOfAllElements(element));
	}
	
	
	
	public void SendKeysOnWebElement(WebElement element, String Value) {
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(),Duration.ofSeconds(20));
		WebElement webelement = exwait.until(ExpectedConditions.visibilityOf(element));
		webelement.clear();
		webelement.sendKeys(Value);
	}
	

	public void jsClick(WebElement element) {
		WebDriverWait wait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		WebElement webelement = wait.until(ExpectedConditions.visibilityOf(element));
		JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();
		js.executeScript("arguments[0].setAttribute('style', 'background: lightskyblue; border: 2px solid red;');", webelement);
		waitFor(2000);
		js.executeScript("arguments[0].setAttribute('style', arguments[1]);", webelement, "");
		js.executeScript("arguments[0].click();", webelement);
	}
	public void waitFor(int sleepTime) {
		try {
			Thread.sleep(sleepTime);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
	}
	
	public void wait(int sleepTime) {
		DriverManager.getDriver().manage().timeouts().implicitlyWait(Duration.ofSeconds(20));
		
	}
	public void javascriptScroll(WebElement element) {
		waitFor(2000);
		JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();
		js.executeScript("arguments[0].setAttribute('style', 'background: lightskyblue; border: 2px solid red;');", element);
		waitFor(2000);
		js.executeScript("arguments[0].setAttribute('style', arguments[1]);", element, "");
		js.executeScript("arguments[0].scrollIntoView();", element);

	}
	
	public void javaScriptExecutorInsertText(String data, WebElement element) {
		try {
			JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();
			js.executeScript("arguments[0].setAttribute('value','" + data + "')", element);
		} catch (Exception e) {
			System.out.println("error occured inside  javaScriptExecutorInsertText   function" + e.getMessage());
		
		}
		
	}
	
	public void Refresh(String url) {
		try {
			DriverManager.getDriver().navigate().refresh();
		} catch (Exception e) {
			System.out.println("error occured inside navigationRefresh  function" + e.getMessage());
		}
	}
	
	public void Dropdown(WebElement element, String data) {
		Select s= new Select(element);
		s.selectByVisibleText(data);
		
	}
	
	public void SendKeysEnter(WebElement element) {
		WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(),Duration.ofSeconds(20));
        WebElement webelement = exwait.until(ExpectedConditions.visibilityOf(element));
        webelement.clear();
        webelement.sendKeys(Keys.ENTER);

    }
	public void pagescrollDown() throws IOException, Exception {
		for (int i = 0; i<=1; i++) {
			waitFor(3000);
			javaScriptScrollToEnd();
			}
		}
	
	public void javaScriptScrollToEnd() {
		waitFor(2000);
		((JavascriptExecutor) DriverManager.getDriver()).executeScript("window.scrollTo(0, document.body.scrollHeight)");
	}
	
	public void switchToTabs(String currentHandle) {

		Set<String> handles = DriverManager.getDriver().getWindowHandles();
		for (String actual : handles) {
			if (!actual.equalsIgnoreCase(currentHandle)) {
				DriverManager.getDriver().switchTo().window(actual);
			}
		}
	}
	public int generateRandomNumber() {
		Random rand = new Random();
		int randNumber = rand.nextInt(100000);
		return randNumber;

	}
	
	public boolean isElementPresent(WebElement e)

    {
		waitFor(2000);
        boolean flag=true;
        try {
            e.isDisplayed();
            flag=true;
        }
        catch(Exception a)
        {
            flag=false;
        }
        return flag;
    }
	
	public static void loadData() throws IOException {
		props = new Properties();
				
		File file =new File("./src/test/resources/configuration/config.properties");
		FileInputStream fis = new FileInputStream(file);
		props.load(fis);
		
		
//		File file = new File(System.getProperty("C:\\Users\\vigneshbalaji_s\\eyecare_provider_portal\\E360_ProviderPortal\\src\\test\\resources\\configuration\\config.properties"));
//		FileReader fileInput = new FileReader(file);
//	props.load(fileInput);
	}
	

	public static String getData(String data) throws IOException {
		loadData();
		data = props.getProperty(data);
		return data;
	}

	public String RandomStringGenerate() {
		return RandomStringUtils.randomAlphanumeric(3);
	}
	
	public void waitForElementToBeClickable(WebElement element) {
		try {
			WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(30));
			exwait.until(ExpectedConditions.elementToBeClickable(element));// visibilityOf(element));
		} catch (Exception e) {
			throw e;
		}
	}
	
	public void moveToWebElement(WebElement element) {
		Actions actions = new Actions(DriverManager.getDriver());
		actions.moveToElement(element);
		actions.perform();
	}
	
	public void waitForInvisibilityOf(String locatorPath) {
		WebDriverWait wait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
		wait.until(ExpectedConditions.invisibilityOfElementLocated(By.xpath(locatorPath)));
	}
	
	
	public boolean isElementSelected(WebElement element) {
		boolean elementSelected = false;
		try {
			WebDriverWait exwait = new WebDriverWait(DriverManager.getDriver(), Duration.ofSeconds(20));
			exwait.until(ExpectedConditions.visibilityOf(element));

			if(element.isSelected()== true) {
				elementSelected = true;
			}
		} catch (Exception e) {
			elementSelected = false;
			}
		return elementSelected;
	}
	
//	public void highLighterMethod(WebElement element){
//		JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();
//		js.executeScript("arguments[0].setAttribute('style', 'background: yellow; border: 2px solid red;');", element);
//	}

}
