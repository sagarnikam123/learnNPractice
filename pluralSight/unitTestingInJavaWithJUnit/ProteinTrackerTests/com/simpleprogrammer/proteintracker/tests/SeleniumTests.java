package com.simpleprogrammer.proteintracker.tests;

import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.firefox.FirefoxDriver;

public class SeleniumTests {

	@Test
	public void CanOpenGoogle(){
		WebDriver driver = new FirefoxDriver();
		driver.get("http://google.com");
		WebElement searchBox = driver.findElement(By.name("q"));
		searchBox.sendKeys("Pluralsight");
		searchBox.submit();
	}

}
