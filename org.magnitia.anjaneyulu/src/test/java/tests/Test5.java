package tests;

import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

import io.github.bonigarcia.wdm.WebDriverManager;

public class Test5 {

	public static void main(String[] args)
	{
	 //open browser and launch site
		ChromeOptions co=new ChromeOptions();
		co.addArguments("--disable-notificatins");
		WebDriverManager.chromedriver().setup();
		ChromeDriver driver=new ChromeDriver(co);
		driver.manage().window().maximize();
		driver.get("http://spicejet.com");
	}

}
