package tests;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.remote.RemoteWebDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class test4 {
	
	public static void main(String[] args) throws Exception
	{
		 // Open browser
		WebDriverManager.chromedriver().setup();
		RemoteWebDriver driver=new ChromeDriver();
        Thread.sleep(5000);
        driver.get("http://www.google.co.in");
        }

}
