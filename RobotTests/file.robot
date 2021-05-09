*** Settings ***
Documentation       Simple example using SeleniumLibrary.
Library     SeleniumLibrary

*** Variables ***
${LOGIN URL}        https://www.google.com/
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Create Webdriver    Chrome    executable_path=D://softwares//Chrome Driver//chromedriver.exe
    Open Browser        ${LOGIN URL}    ${BROWSER}


*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    Login Page
