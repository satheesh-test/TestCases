*** Settings ***
Library     SeleniumLibrary
Resource    C://Users//sathe//PycharmProjects//RobotTests//Resources//revisekeywords.robot

*** Test Cases ***
Launching Browser
    LaunchBrowser
Radio Button select
    SelectingRadioButtonsonebyone
Dropdown elements
    SelectingDropdownElements
Multi dropdown elements
    Selectmultipledropdownelements
Selecting checkboxes
    Selectingcheckboxes
Another tab
    Switching to another tab

