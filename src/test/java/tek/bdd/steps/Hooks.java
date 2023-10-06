package tek.bdd.steps;

import io.cucumber.java.After;
import io.cucumber.java.AfterStep;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import tek.bdd.utility.SeleniumUtility;

public class Hooks extends SeleniumUtility {
    //This is Hook will be executed by cucumber
    //before and after each scenario
    @Before
    public void setUpTests() {
        openBrowser();
    }

    //This Hook will run after each step and attach screen shot to the report.
//    @AfterStep
//    public void takeScreenshotAfterEachStep(Scenario scenario) {
//        byte[] screenshot = takeScreenshot();
//        scenario.attach(screenshot, "image/png", "screenshot");
//    }

    @After
    public void cleanUpTests(Scenario scenario) {

        if (scenario.isFailed()) {
            byte[] picture = takeScreenshot();
            //Step 2) Attached screenshot to Scenario
            scenario.attach(picture, "image/png", "failedScreenShot");
        }

        driverQuit();
    }
}
