package com.api.fakeapi.automation.Runner;


import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.spring.CucumberContextConfiguration;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty:target/cucumber-pretty.txt",
                "html:target/cucumber-html-report",
                "json:target/cucumber.json",
                "junit:target/cucumber-result.xml"},
        monochrome = true,
        features = "src/test/resources",
        glue = {"com.api.fakeapi.automation.qa.steps"}/*,
        tags = {"@scenario_3"}*/)

public class RunCuke {
}
