using OpenQA.Selenium;
using OpenQA.Selenium.Chrome;
using OpenQA.Selenium.Firefox;
using OpenQA.Selenium.Remote;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.Threading.Tasks;

namespace SeleniumGridConsole
{
    class Program
    {
        static short _iteration = 0;

        const string SELENIUM_HUB_HOST = "docker1";

        static void Main(string[] args)
        {
            Log("*** Selenium Grid ***");

            #region Setup

            if (!Directory.Exists("./screenshots"))
                Directory.CreateDirectory("./screenshots");

            #endregion

            List<Task> allTasks = new List<Task>();

            Stopwatch sw = new Stopwatch();

            sw.Start();

            for (short i = 0; i < 10; i++)
            {
                allTasks.Add(Task.Run(() =>
                {
                    int iteration = _iteration++;

                    DateTime current = DateTime.Now;

                    Log($"Before {iteration} {current.Millisecond}...");

                    DriverOptions chromeOptions = new ChromeOptions();
                    DriverOptions firefoxOptions = new FirefoxOptions();

                    ((ChromeOptions)chromeOptions).AddArgument("--headless --verbose --whitelisted-ips");

                    IWebDriver remoteWebDriver = null;

                    Log($"After {iteration} {current.Millisecond}...");

                    Stopwatch stopWatch = new Stopwatch();

                    try
                    {
                        remoteWebDriver = new RemoteWebDriver(new Uri($"http://{SELENIUM_HUB_HOST}/wd/hub"),
                            iteration % 2 == 0 ? chromeOptions : firefoxOptions);

                        Log($"Starting {iteration}...");

                        stopWatch.Start();

                        remoteWebDriver.Url = "https://lerolero.com/";

                        remoteWebDriver.Navigate();

                        IWebElement divElement = remoteWebDriver.FindElement(By.XPath("//div[@class='sentence sentence-exited']"));

                        Log(divElement.Text);

                        ((ITakesScreenshot)remoteWebDriver).GetScreenshot().SaveAsFile
                            ($"./screenshots/b3_{iteration}_{stopWatch.ElapsedMilliseconds}_{DateTime.Now.ToString("yyyyMMdd_HHmmssfff")}.png", ScreenshotImageFormat.Png);

                        stopWatch.Stop();

                        Log($"Task {iteration} done in {stopWatch.ElapsedMilliseconds}ms");
                    }
                    catch (Exception e)
                    {
                        File.WriteAllText($"./screenshots/e_{iteration}_{stopWatch.ElapsedMilliseconds}.txt", e.Message.ToString());

                        throw;
                    }
                    finally
                    {
                        remoteWebDriver.Quit();
                    }
                }));
            }

            Task.WaitAll(allTasks.ToArray());

            sw.Stop();

            Log($"All Done in {sw.Elapsed.TotalSeconds} seconds.");
        }

        static void Log(string data)
        {
            Console.WriteLine($"{DateTime.Now.ToString("HH:mm:ss.fff")} - {data}");
        }
    }
}
