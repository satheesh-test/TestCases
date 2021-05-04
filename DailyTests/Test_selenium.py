from selenium import webdriver
import time
from selenium.webdriver.support.select import Select
from selenium.webdriver.common.action_chains import ActionChains
import pytest


@pytest.yield_fixture(scope='module')
def setUp():
    global driver
    driver = webdriver.Chrome(executable_path="D://softwares//Chrome Driver//chromedriver.exe")
    driver.get("https://letskodeit.teachable.com/p/practice")
    driver.maximize_window()
    yield
    driver.close()


def testSelectingRadioButtons(setUp):
    # Selecting radio buttons one by one
    radioElements = driver.find_elements_by_xpath("//input[contains(@name, 'cars') and contains(@type, 'radio')]")
    for element in radioElements:
        element.click()
        time.sleep(3)


def testDropdownElements(setUp):
    # Selecting elements from dropdown using select method
    dropdownElement = driver.find_element_by_id("carselect")
    elementSelection = Select(dropdownElement)
    elementSelection.select_by_index(2)
    time.sleep(2)
    elementSelection.select_by_index(0)
    time.sleep(2)
    elementSelection.select_by_index(1)
    time.sleep(2)

    # Multi select dropdown


def testMultiSelectDropdown(setUp):
    multiElement = driver.find_element_by_id("multiple-select-example")
    multiElementSelection = Select(multiElement)
    multiElementSelection.select_by_index(2)
    time.sleep(2)
    multiElementSelection.select_by_index(1)
    time.sleep(2)
    multiElementSelection.select_by_index(0)
    time.sleep(2)


# Selecting a checkboxes one by one
def testSelectingCheckboxes(setUp):
    checkboxElements = driver.find_elements_by_xpath("//input[contains(@name,'cars') and contains(@type, 'checkbox')]")
    for element in checkboxElements:
        element.click()
        time.sleep(2)


# Doing operation in the child window
def testChildWindow(setUp):
    mainWindowHandle = driver.current_window_handle
    windowElement = driver.find_element_by_xpath("//button[contains(text(),'Open Window')]")
    windowElement.click()
    Handles = driver.window_handles
    for handle in Handles:
        if handle != mainWindowHandle:
            driver.switch_to.window(handle)
            time.sleep(5)
            driver.find_element_by_xpath("//input[contains(@name, 'query')]").send_keys("Python")
            time.sleep(3)
            driver.close()
            driver.switch_to.window(mainWindowHandle)
            time.sleep(2)
            multiElement = driver.find_element_by_id("multiple-select-example")
            multiElementSelection = Select(multiElement)
            multiElementSelection.deselect_all()
            time.sleep(2)


# Switching to alert
def testSwitchingAlert(setUp):
    nameField = driver.find_element_by_id("name")
    action = ActionChains(driver)
    action.move_to_element(nameField).perform()
    time.sleep(3)
    nameField.send_keys("satheesh")
    driver.find_element_by_xpath("//input[contains(@id, 'alertbtn')]").click()
    alert = driver.switch_to.alert
    time.sleep(3)
    alert.accept()
    time.sleep(3)
    nameField = driver.find_element_by_id("name")
    action = ActionChains(driver)
    action.move_to_element(nameField).perform()
    time.sleep(3)
    nameField.send_keys("satheesh")
    driver.find_element_by_id("confirmbtn").click()
    confirmAlert = driver.switch_to.alert
    time.sleep(3)
    confirmAlert.accept()
    time.sleep(3)


# Scrolling down the web page
def testScrollingDown(setUp):
    driver.execute_script("window.scrollBy(0, 1000000);")
    time.sleep(3)


# Scrolling up the web page
def testScrolingUp(setUp):
    driver.execute_script("window.scrollBy(0, -100000);")
    time.sleep(3)
