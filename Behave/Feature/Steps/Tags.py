import time

from selenium import webdriver
import random, time
from behave import *


@given("When I launch the browser and navigated to Google Homepage")
def launchBrowser(context):
    context.driver = webdriver.Chrome(executable_path="D://softwares//Chrome Driver//chromedriver.exe")
    context.driver.get("https://www.google.com/")


@when("I entered {key} keyword")
def enteringKeyword(context, key):
    context.driver.find_element_by_name("q").send_keys(key)
    context.driver.implicitly_wait(5)


@Then("I should see results related to {key}")
def verifyingPageTitle(context, key):
    elements = context.driver.find_elements_by_xpath(
        "//span[text()='" + key + "']")
    e = random.choice(elements)
    e.click()


@Then("I close the browser")
def closeBrowser(context):
    context.driver.close()
