package org.seleniumeasy.tasks;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class SimpleFormSteps {
	static WebDriver driver;
	
	@Given("User navigates to Simple Form Demo page")
	public void user_navigates_to_Simple_Form_Demo_page() {
	    System.setProperty("webdriver.chrome.driver", "C:\\Users\\ARCHANA\\ArchNewWorkspace\\CucumberPomProjects\\driver\\chromedriver.exe");
	    driver = new ChromeDriver();
	    driver.manage().window().maximize();
	    driver.get("https://www.seleniumeasy.com/test/basic-first-form-demo.html");
	}

	@When("User types a message in Enter Message field")
	public void user_types_a_message_in_Enter_Message_field() {
	    driver.findElement(By.id("user-message")).sendKeys("I'm entering a message here");
	}

	@When("clicks on Show Message button")
	public void clicks_on_Show_Message_button() {
	    driver.findElement(By.xpath("//button[text()='Show Message']")).click();
	}

	@Then("the entered message will be displayed under Your Message section")
	public void the_entered_message_will_be_displayed_under_Your_Message_section() {
	    String actualMsg = driver.findElement(By.id("display")).getText();
	    Assert.assertEquals("I'm entering a message here", actualMsg);
	}

	@When("User enter values Enter a and Enter b fields")
	public void user_enter_values_Enter_a_and_Enter_b_fields() {
	    driver.findElement(By.id("sum1")).sendKeys("1000");
	    driver.findElement(By.id("sum2")).sendKeys("250");
	}

	@When("clicks on Get Total button")
	public void clicks_on_Get_Total_button() {
	    driver.findElement(By.xpath("//button[text()='Get Total']")).click();
	}

	@Then("the sum of entered values will be displayed")
	public void the_sum_of_entered_values_will_be_displayed() {
	    String actualSum = driver.findElement(By.id("displayvalue")).getText();
	    Assert.assertEquals("1250", actualSum);
	}
}

