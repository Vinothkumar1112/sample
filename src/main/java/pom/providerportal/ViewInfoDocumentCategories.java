package pom.providerportal;

import static org.junit.Assert.assertEquals;

import java.awt.AWTException;
import java.awt.Robot;
import java.awt.Toolkit;
import java.awt.datatransfer.StringSelection;
import java.awt.event.KeyEvent;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

import com.driverfactory.DriverManager;
import com.resuableMethods.Ui_Base;

public class ViewInfoDocumentCategories extends Ui_Base {

	public ViewInfoDocumentCategories(WebDriver driver) {
		PageFactory.initElements(driver, this);
	}

	public static String disply_Title;
	public static String disply_Subspecial;
	public static String disply_Publisher_Name;

	@FindBy(xpath = "//a[contains(@class,'sidebar_sidebarButtons')][text()='View Information']")
	private WebElement btn_View_Information;

	@FindBy(xpath = "(//button[contains(@data-testid,'uploadDocumentBtn')][text()='Upload Document'])[1]")
	private WebElement btn_Upload_Document;

	@FindBy(xpath = "(//input[@id='title'])[2]")
	private WebElement txtbox_Title;

	@FindBy(xpath = "//div[contains(@class,'style_selectSubspecTitle')][text()='Select Subspecialities']")
	private WebElement drop_Select_Subspecialities;

	@FindBy(id = "category")
	private WebElement drop_Select_Category;

	@FindBy(id = "link")
	private WebElement txtbox_Insert_URL;

	@FindBy(xpath = "//label[@for='raised-button-file']//*[@data-testid='FileUploadOutlinedIcon']")
	private WebElement upload_Document;

	@FindBy(xpath = "//*[local-name()='svg' and @data-testid='FileUploadOutlinedIcon']")
	private WebElement upload_Documenta;

	@FindBy(xpath = "//button[@data-testid='documentPublishBtn'][text()='Publish']")
	private WebElement btn_Publish;

	@FindBy(xpath = "//button[@data-testid='documentCancelBtn'][text()='Cancel']")
	private WebElement btn_Document_Cancel;

	@FindBy(xpath = "//li[@role='option']")
	private WebElement drop_Elements_Category;

	@FindBy(xpath = "//label[contains(@class,'style_formCheckLabel')]")
	private WebElement drop_Elements_Subspeciality;

	@FindBy(xpath = "(//label[contains(@class,'style_formCheckLabel')])[1]")
	private WebElement drop_AllElements_Subspeciality;

	@FindBy(id = "category-helper-text")
	private WebElement msgerror_Category_Required_Field;

	@FindBy(xpath = "//div[contains(@class,'style_roleErrorText')][text()='Link, Document or Image Required to Publish']")
	private WebElement msgerror_Document_Link;

	@FindBy(xpath = "(//input[@id='allRadio'])[1]")
	private WebElement checkbox_My_Documents_Only;

	@FindBy(xpath = "//p[@id='title-helper-text']")
	private WebElement msgerror_Required_Field_Title;

	@FindBy(xpath = "//*[local-name()='svg' and @data-testid='ClearOutlinedIcon']")
	private WebElement remove_Document;

	@FindBy(xpath = "//div[contains(@class,'style_roleErrorText')][text()='File size exceeds the maximum line of 30MB']")
	private WebElement msgerror_Document;

	@FindBy(xpath = "(//table//td[6])[1]//span")
	private WebElement table_Document;

	@FindBy(xpath = "(//a[@target='_blank'])[1]")
	private WebElement document_Popup;

	@FindBy(xpath = "//input[@data-testid='titleInput']")
	private WebElement searchbox_Title;

	@FindBy(xpath = "//input[@id='subspeciality']")
	private WebElement searchbox_Subspeciality;

	@FindBy(xpath = "//input[@id='publisherName']")
	private WebElement searchbox_Publisher_Name;

	@FindBy(xpath = "(//table//th)[1]")
	private WebElement tableth_Category;

	@FindBy(xpath = "(//table//th)[2]")
	private WebElement tableth_Title;

	@FindBy(xpath = "(//table//th)[3]")
	private WebElement tableth_Subspeciality;

	@FindBy(xpath = "(//table//th)[4]")
	private WebElement tableth_Published_Date;

	@FindBy(xpath = "(//table//th)[5]")
	private WebElement tableth_Published_By;

	@FindBy(xpath = "(//table//th)[6]")
	private WebElement tableth_Document;

	@FindBy(xpath = "(//table//th)[7]")
	private WebElement tableth_URL;

	@FindBy(xpath = "(//table//td)[2]")
	private WebElement tabletd_Search_Result_Title;

	@FindBy(xpath = "(//table//td)[3]")
	private WebElement tabletd_Search_Result_Subspecial;

	@FindBy(xpath = "(//table//td)[5]")
	private WebElement tabletd_Search_Result_Publisher_Name;
	
	@FindBy (xpath="(//table//td)[7]//span")
	private WebElement tabletd_View_Links;
	
	@FindBy (xpath="(//a[@rel='noreferrer'])[1]")
	private WebElement overlay_link_Document;

	public void enter_URL(String url) {
		ClickOnWebElement(txtbox_Insert_URL);
		clear_field(txtbox_Insert_URL);
		SendKeysOnWebElement(txtbox_Insert_URL, url);
	}

	public void enter_Title(String title) {
//		ClickOnWebElement(txtbox_Title);
//		clear_field(txtbox_Title);
		WaitForWebElement(txtbox_Title);
		waitFor(3000);
		SendKeysOnWebElement(txtbox_Title, title);
	}

	public void enter_Title_Search(String title) {
		ClickOnWebElement(searchbox_Title);
		clear_field(searchbox_Title);
		SendKeysOnWebElement(searchbox_Title, title);
	}

	public void enter_Subspeciality_Search(String subspecial) {
		ClickOnWebElement(searchbox_Subspeciality);
		clear_field(searchbox_Subspeciality);
		SendKeysOnWebElement(searchbox_Subspeciality, subspecial);
	}

	public void enter_PuplisherName_Search(String publisher) {
		ClickOnWebElement(searchbox_Publisher_Name);
		clear_field(searchbox_Publisher_Name);
		SendKeysOnWebElement(searchbox_Publisher_Name, publisher);
	}

	public void click_ViewInformation() {
		WaitForWebElement(btn_View_Information);
		ClickOnWebElement(btn_View_Information);
	}

	public void click_UploadDocument() {
		WaitForWebElement(btn_Upload_Document);
		ClickOnWebElement(btn_Upload_Document);
	}

	public void click_Publish() {
		WaitForWebElement(btn_Publish);
		ClickOnWebElement(btn_Publish);
	}

	public void click_Cancel() {
		WaitForWebElement(btn_Document_Cancel);
		ClickOnWebElement(btn_Document_Cancel);
	}

	public void click_All_Subspecial() {
		WaitForWebElement(drop_AllElements_Subspeciality);
		ClickOnWebElement(drop_AllElements_Subspeciality);
	}

	public void click_All_MyDocuments() {
		WaitForWebElement(checkbox_My_Documents_Only);
		Assert.assertTrue(checkbox_My_Documents_Only.isDisplayed());

		ClickOnWebElement(checkbox_My_Documents_Only);
	}

	public void click_RemoveDocument() {
		WaitForWebElement(remove_Document);
		ClickOnWebElement(remove_Document);
	}

	public void click_Table_Document_Link() {
		waitFor(3000);

		WaitForWebElement(table_Document);
		// ClickOnWebElement(table_Document);
		jsClick(table_Document);

	}

	public void click_Document_Popup() {

		WaitForWebElement(document_Popup);
		ClickOnWebElement(document_Popup);
		waitFor(3000);

	}

	public void click_View_Links() {
		WaitForWebElement(tabletd_View_Links);
		ClickOnWebElement(tabletd_View_Links);
		//jsClick(tabletd_View_Links);
	}
	
	public void click_Overlay_Doc_Link() {
		WaitForWebElement(overlay_link_Document);
		ClickOnWebElement(overlay_link_Document);
	}
	public void check_UploadDocument() {
		WaitForWebElement(btn_Upload_Document);
		Assert.assertTrue(btn_Upload_Document.isDisplayed());
		Assert.assertTrue(btn_Upload_Document.isEnabled());
	}

	public void check_attributes_UploadDocument() {
		WaitForWebElement(txtbox_Title);
		Assert.assertTrue(txtbox_Title.isDisplayed());

		WaitForWebElement(drop_Select_Subspecialities);
		Assert.assertTrue(drop_Select_Subspecialities.isDisplayed());

		WaitForWebElement(drop_Select_Category);
		Assert.assertTrue(drop_Select_Category.isDisplayed());

		WaitForWebElement(txtbox_Insert_URL);
		Assert.assertTrue(txtbox_Insert_URL.isDisplayed());

		WaitForWebElement(upload_Document);
		Assert.assertTrue(upload_Document.isDisplayed());

		WaitForWebElement(btn_Publish);
		Assert.assertTrue(btn_Publish.isDisplayed());

		WaitForWebElement(btn_Document_Cancel);
		Assert.assertTrue(btn_Document_Cancel.isDisplayed());

	}

	public void check_CategoryRequiredField() {
		WaitForWebElement(msgerror_Category_Required_Field);
		Assert.assertTrue(msgerror_Category_Required_Field.isDisplayed());
	}

	public void check_Document_Link_RequiredField() {
		WaitForWebElement(msgerror_Document_Link);
		Assert.assertTrue(msgerror_Document_Link.isDisplayed());
	}

	public void check_Title_RequiredField() {
		WaitForWebElement(msgerror_Required_Field_Title);
		Assert.assertTrue(msgerror_Required_Field_Title.isDisplayed());
	}

	public void check_Errormsg_Uploaddoc() {
		WaitForWebElement(msgerror_Document);
		Assert.assertTrue(msgerror_Document.isDisplayed());
	}

	public void check_View_Information() {

		Assert.assertTrue(tableth_Category.isDisplayed());
		Assert.assertTrue(tableth_Title.isDisplayed());
		Assert.assertTrue(tableth_Subspeciality.isDisplayed());
		Assert.assertTrue(tableth_Published_Date.isDisplayed());
		Assert.assertTrue(tableth_Published_By.isDisplayed());
		Assert.assertTrue(tableth_Document.isDisplayed());
		Assert.assertTrue(tableth_URL.isDisplayed());
	}

	public void check_Search_Box() {

		Assert.assertTrue(searchbox_Title.isDisplayed());
		Assert.assertTrue(searchbox_Subspeciality.isDisplayed());
		Assert.assertTrue(searchbox_Publisher_Name.isDisplayed());
	}
	
	

	public String get_Attribute_Title_Search() {
		WaitForWebElement(searchbox_Title);
		waitFor(3000);
		disply_Title = GetAttribute(searchbox_Title);
		return disply_Title;
	}

	public String get_Attribute_Subspecial_Search() {
		WaitForWebElement(searchbox_Subspeciality);
		waitFor(3000);
		disply_Subspecial = GetAttribute(searchbox_Subspeciality);
		return disply_Subspecial;
	}

	public String get_Attribute_PublisherName_Search() {
		WaitForWebElement(searchbox_Publisher_Name);
		waitFor(3000);
		disply_Publisher_Name = GetAttribute(searchbox_Publisher_Name);
		return disply_Publisher_Name;
	}

	public void getlist_Category() {

		ClickOnWebElement(drop_Select_Category);
		WaitForWebElement(drop_Elements_Category);

		List<WebElement> unameList = DriverManager.getDriver().findElements(By.xpath("//li[@role='option']"));
		for (WebElement all : unameList) {
			String s = all.getText();
			System.out.println(s);

		}
	}

	public void getlist_Subspecial() {

		ClickOnWebElement(drop_Select_Subspecialities);
		WaitForWebElement(drop_Elements_Subspeciality);

		List<WebElement> unameList = DriverManager.getDriver()
				.findElements(By.xpath("//label[contains(@class,'style_formCheckLabel')]"));
		for (WebElement all : unameList) {
			String s = all.getText();
			System.out.println(s);

		}
	}

	public void drop_Category(String ExpectedValue) {
		ClickOnWebElement(drop_Select_Category);
		List<WebElement> categoryList = DriverManager.getDriver().findElements(By.xpath("//li[@role='option']"));
		for (WebElement element : categoryList) {
			String listValue = element.getText();
			if (listValue.equals(ExpectedValue)) {
				ClickOnWebElement(element);
				System.out.println("Active Catetory name is present ");
				break;
			}
		}
	}

	public void drop_Subspeciality(String ExpectedValue) {
		ClickOnWebElement(drop_Select_Subspecialities);
		List<WebElement> categoryList = DriverManager.getDriver()
				.findElements(By.xpath("//label[contains(@class,'style_formCheckLabel')]"));
		for (WebElement element : categoryList) {
			String listValue = element.getText();
			if (listValue.equals(ExpectedValue)) {
				ClickOnWebElement(element);
				System.out.println("Active Catetory name is present ");
				break;
			}
		}
	}

	public void drop_Inactive_Category(String ExpectedValue) {
		ClickOnWebElement(drop_Select_Category);
		List<WebElement> categoryList = DriverManager.getDriver().findElements(By.xpath("//li[@role='option']"));
		for (WebElement element : categoryList) {
			String listValue = element.getText();
			if (!listValue.equals(ExpectedValue)) {
				Assert.assertNotEquals(listValue, ExpectedValue);
				System.out.println("Inactive Catetory name is not present here");

			}
			if (listValue.equals(ExpectedValue)) {
				Assert.assertEquals(listValue, ExpectedValue);
				break;
			}
		}
	}

	public void drop_Inactive_Subspeciality(String ExpectedValue) {
		ClickOnWebElement(drop_Select_Subspecialities);
		List<WebElement> categoryList = DriverManager.getDriver()
				.findElements(By.xpath("//label[contains(@class,'style_formCheckLabel')]"));
		for (WebElement element : categoryList) {
			String listValue = element.getText();
			if (!listValue.equals(ExpectedValue)) {
				Assert.assertNotEquals(listValue, ExpectedValue);
				System.out.println("Inactive Subspeciality name is not present here");

			}
			if (listValue.equals(ExpectedValue)) {
				Assert.assertEquals(listValue, ExpectedValue);
				break;
			}
		}
	}

	public void clear_URL() {
		clear_field(txtbox_Insert_URL);
	}

	public void click_Upload_Document() {

		JavascriptExecutor js = (JavascriptExecutor) DriverManager.getDriver();

	}

	public void send_Documents() throws AWTException {

		javascriptScroll(upload_Document);
		waitFor(3000);
		ClickOnWebElement(upload_Document);

		// String
		// filepath=System.getProperty("user.dir")+File.separator+"Upload_Documents"+File.separator+"Document.pdf";

		File file = new File("./src/test/resources/Upload_Documents/Document.pdf");
		String path = file.getAbsolutePath();
		System.out.println(path);

		StringSelection str = new StringSelection(path);
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(str, null);

		Robot rb = new Robot();
		rb.delay(3000);

		rb.keyPress(KeyEvent.VK_CONTROL);
		rb.keyPress(KeyEvent.VK_V);

		rb.keyRelease(KeyEvent.VK_V);
		rb.keyRelease(KeyEvent.VK_CONTROL);

		rb.keyPress(KeyEvent.VK_ENTER);
		rb.keyRelease(KeyEvent.VK_ENTER);
		waitFor(3000);
	}

	public void send_Document_More_MB() throws AWTException {

		javascriptScroll(upload_Document);
		waitFor(3000);
		ClickOnWebElement(upload_Document);

		File file = new File("./src/test/resources/Upload_Documents/Document50MB.pdf");
		String path = file.getAbsolutePath();
		System.out.println(path);

		StringSelection str = new StringSelection(path);
		Toolkit.getDefaultToolkit().getSystemClipboard().setContents(str, null);

		Robot rb = new Robot();
		rb.delay(3000);

		rb.keyPress(KeyEvent.VK_CONTROL);
		rb.keyPress(KeyEvent.VK_V);

		rb.keyRelease(KeyEvent.VK_V);
		rb.keyRelease(KeyEvent.VK_CONTROL);

		rb.keyPress(KeyEvent.VK_ENTER);
		rb.keyRelease(KeyEvent.VK_ENTER);
		waitFor(3000);
	}

	public void document_Window() {

		switchToTabs("https://www.clickdimensions.com/links/TestPDFfile.pdf");
		waitFor(3000);
	}

	public void search_Result_Title() {
		try {
			String s = tabletd_Search_Result_Title.getText();
			waitFor(2000);
			Assert.assertEquals(disply_Title, s);
		} catch (Exception e) {
			System.out.println("error occured inside search_Result_Title function" + e.getMessage());
		}

	}

	public void search_Result_Subspeciality() {
		try {
			String s = tabletd_Search_Result_Subspecial.getText();
			waitFor(2000);
			Assert.assertEquals(disply_Subspecial, s);
		} catch (Exception e) {
			System.out.println("error occured inside search_Result_Subspeciality function" + e.getMessage());
		}
	}

	public void search_Result_Publisher_Name() {
		try {
			String s = tabletd_Search_Result_Publisher_Name.getText();
			waitFor(2000);
			Assert.assertEquals(disply_Publisher_Name, s);
		} catch (Exception e) {
			System.out.println("error occured inside search_Result_Publisher_Name function" + e.getMessage());

		}
	}
	
	public void document_Link() {
		Set<String>win= DriverManager.getDriver().getWindowHandles();
		Iterator<String>it=win.iterator();
		String parentId=it.next();
		String childId=it.next();
		DriverManager.getDriver().switchTo().window(childId);
		waitFor(3000);
		DriverManager.getDriver().switchTo().window(parentId);
		waitFor(3000);
		DriverManager.getDriver().switchTo().window(childId);
	
		System.out.println("Parent:"+parentId);
		System.out.println("Child:"+childId);
		
		
		
		
	}

}
