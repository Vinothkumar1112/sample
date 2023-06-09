package com.eyecare.runner;

import java.io.IOException;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.utilities.Report;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)

@CucumberOptions(features = {"src/test/resources/ProviderPortalFeatures/Sprint_4/Invite_External_Provider/EPP-1767.feature"}, 
glue = {"ProviderPortal.eyecare.stepdef"},
plugin= {"json:target/ECP.json", 
		"pretty" }, 
dryRun = true, monochrome = true, tags = "@BDDTEST-EPP-4395")


public class RunnerCucumberTest {
	@AfterClass
	public static void afterClass() throws IOException {
		
		Report.generateReport(System.getProperty("user.dir")+"/target/ECP.json");
	
		
	}

}

// /Sprint_4/View_Info_Document_Categories/EPP-1712.feature