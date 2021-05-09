*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://letskodeit.teachable.com/p/practice

*** Test Cases ***
Open Browser
    Open Browser  ${URL}  ${Browser}
    maximize browser window
    Select Radio Button  cars  bmw  #need to group by name and value
    select radio button  cars  benz
    select radio button  cars  honda

    select checkbox  bmw
    select checkbox  id:benzcheck
    select checkbox  honda

    unselect checkbox  honda
    sleep  5
    ${"Title"}  set variable  Practice | Let's Kode It
    title should be  ${"Title"}
    ${"newwindow"}  set variable  xpath://a[@id='opentab']
    click element  ${"newwindow"}
    sleep  5
    close browser