package com.utilities;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;
import com.resuableMethods.*;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;
import net.masterthought.cucumber.presentation.PresentationMode;

public class Report {

//	public static String ConfigurationFile = System.getProperty("user.dir") + "/E360_ProviderPortal/src/test/resources/configuration/config.properties";

	static File file=new File(System.getProperty("user.dir")+"/target");
	static Configuration config = new Configuration(file, "EyeCareProviderPortalWebAutomationReport");
	
		public static void generateReport(String JsonFile) throws IOException {
			
//			FileInputStream fis = new FileInputStream(ConfigurationFile);
//			Properties prop = new Properties();
//			prop.load(fis);
			//String browserName = System.getProperty("browser");
			
			String browserName = Ui_Base.getData("browser");
			if (browserName.equalsIgnoreCase("chrome")) {
			config.addPresentationModes(PresentationMode.EXPAND_ALL_STEPS);
		
//			config.addClassifications("ENV", prop.getProperty("Env"));
//			config.addClassifications("Build#", prop.getProperty("WebBuild"));
			config.addClassifications("Platform	", "Windows");
			config.addClassifications("BrowserName", "Chrome");
 			config.addClassifications("BrowserVersion", "100.0");
//		    config.addClassifications("System Info", "Windows ");
			} else if(browserName.equalsIgnoreCase("safari")) {
//				config.addClassifications("ENV", prop.getProperty("Env"));
//				config.addClassifications("Build#", prop.getProperty("WebBuild"));
				config.addClassifications("Platform	", "Web");
				config.addClassifications("BrowserName", "Safari");
//				config.addClassifications("BrowserVersion", "14.0.3");
//				config.addClassifications("System Info", "Mac OS ");
			}else if(browserName.equalsIgnoreCase("edge")) {
//				config.addClassifications("ENV", prop.getProperty("Env"));
//				config.addClassifications("Build#", prop.getProperty("WebBuild"));
				config.addClassifications("Platform	", "Web");
				config.addClassifications("BrowserName", "Edge");
//				config.addClassifications("BrowserVersion", "92.0.902.62");
//				config.addClassifications("System Info", "Mac OS ");
			}	else if(browserName.equalsIgnoreCase("firefox")) {
//				config.addClassifications("ENV", prop.getProperty("Env"));
//				config.addClassifications("Build#", prop.getProperty("WebBuild"));
				config.addClassifications("Platform	", "Web");
				config.addClassifications("BrowserName", "Firefox");
//				config.addClassifications("BrowserVersion", "92.0.902.62");
//				config.addClassifications("System Info", "Mac OS ");
		}
			
			List <String> JsonFiles = new ArrayList<String>();
			JsonFiles.add(JsonFile);
			ReportBuilder report = new ReportBuilder(JsonFiles, config);
			report.generateReports();
			 
		}
		


}
