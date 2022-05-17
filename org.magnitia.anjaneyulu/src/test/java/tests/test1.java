package tests;

import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.remote.RemoteWebDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class test1 {
	
	public static void main(String[] args) throws Exception
	{
		 // Open browser
		WebDriverManager.firefoxdriver().setup();
		RemoteWebDriver driver=new FirefoxDriver();
        Thread.sleep(5000);
        driver.get("http://www.google.co.in");
        }

}
