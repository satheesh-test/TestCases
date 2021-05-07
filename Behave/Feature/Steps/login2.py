import allure
from selenium import webdriver
from behave import *
import time


@given('Launch the browser')
def launchBrowser(context):
    context.driver = webdriver.Chrome(executable_path="D://softwares//Chrome Driver//chromedriver.exe")


@given("head to Google search page")
def openingSearchPage(context):
    context.driver.get("https://www.google.com/")


@When('Search with {keyword} on web')
def pageTitle(context, keyword):
    context.driver.find_element_by_name('q').send_keys(keyword)
    time.sleep(5)
    context.driver.find_element_by_xpath("//div[@class='aypzV']//span").click()


@Then('Should get to see results related to {keyword}')
def results(context, keyword):
    title = context.driver.title
    if keyword in title:
        return False
    else:
        pass


@allure.severity(allure.severity_level.NORMAL)
@when("Search with {key} on the web search")
def searchWithKey(context, key):
    context.driver.find_element_by_name("q").send_keys(key)
    time.sleep(5)
    context.driver.find_element_by_xpath(
        "//li[contains(@class, 'sbct sbre') and contains(@role, 'presentation')]").click()


@allure.severity(allure.severity_level.CRITICAL)
@Then("I should get to see results related to {key}")
def resultsPage(context, key):
    Title = context.driver.title
    if key in Title:
        print("User navigated to correct page")
    else:
        print("User got some unknown page")


# Close the browser
@Then("Close the browser")
def closeBrowser(context):
    context.driver.close()
