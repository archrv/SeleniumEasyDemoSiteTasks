package org.seleniumeasy.tasks;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class RadioButtonSteps {
static WebDriver driver;
	
	@Given("User navigates to Radio button Demo page")
	public void user_navigates_to_Radio_button_Demo_page() {
		System.setProperty("webdriver.chrome.driver", "C:\\Users\\ARCHANA\\ArchNewWorkspace\\MyGitFolder\\AddCustomerTask\\driver\\chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("https://www.seleniumeasy.com/test/basic-radiobutton-demo.html");
	}

	@When("User clicks on a radio button in Radio button Demo section")
	public void user_clicks_on_a_radio_button_in_Radio_button_Demo_section() {
	    driver.findElement(By.xpath("//input[@name='optradio'][@value='Female']")).click();
	}

	@When("clicks on Get Checked Value button")
	public void clicks_on_Get_Checked_Value_button() {
		driver.findElement(By.id("buttoncheck")).click();
	}

	@Then("a message confirming which value was clicked will be displayed")
	public void a_message_confirming_which_value_was_clicked_will_be_displayed() {
	    String actualMsg = driver.findElement(By.xpath("//p[@class='radiobutton']")).getText();
	    Assert.assertEquals("Radio button 'Female' is checked", actualMsg);
	}

	@When("User clicks on a radio button of each  Group Sex and Age Group")
	public void user_clicks_on_a_radio_button_of_each_Group_Sex_and_Age_Group() {
		driver.findElement(By.xpath("//input[@name='gender'][@value='Female']")).click();
		driver.findElement(By.xpath("//input[@name='ageGroup'][@value='5 - 15']")).click();
	}

	@When("clicks on Get Values button")
	public void clicks_on_Get_Values_button() {
		driver.findElement(By.xpath("//button[text()='Get values']")).click();
	}

	@Then("messages confirming which group values were clicked will be displayed")
	public void messages_confirming_which_group_values_were_clicked_will_be_displayed() {
	    String actualMsgs = driver.findElement(By.className("groupradiobutton")).getText();
	    System.out.println(actualMsgs);
	    Assert.assertEquals("Sex : Female\n" + "Age group: 5 - 15", actualMsgs);
	}
}
