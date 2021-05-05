import pytest
from selenium import webdriver
import time
from selenium.webdriver.support.select import Select

global driver


@pytest.fixture()
def setUp(self):
    driver = webdriver.Chrome(executable_path="D:\softwares\Chrome Driver\chromedriver.exe")
    driver.get("https://letskodeit.teachable.com/p/practice")
    driver.maximize_window()
    print("Hello")


def test_fun(setUp):
    time.sleep(10)
    radioElements = driver.find_elements_by_xpath("//input[contains(@name, 'cars') and contains(@type, 'radio')]")
    for element in radioElements:
        element.click()
        time.sleep(3)

    # Selecting elements from dropdown using select method
    dropdownElement = driver.find_element_by_id("carselect")
    elementSelection = Select(dropdownElement)
    elementSelection.select_by_index(2)
    time.sleep(2)
    elementSelection.select_by_index(0)
    time.sleep(2)
    elementSelection.select_by_index(1)
    time.sleep(4)


def tearDown(self):
    driver.close()
