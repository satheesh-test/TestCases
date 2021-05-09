*** Settings ***
Library  SeleniumLibrary
Resource   C://Users//sathe//PycharmProjects//RobotTests//Resources//keywords.robot


*** Test Cases ***
SelectingRadioButtons
    LaunchBrowser
    SelectCarsRadioButton
    SelectingCheckBoxes
    SelectingDropdownElements
    scroll element into view    id:mousehover
    ${text}=    get text   id:mousehover
    log to console  ${text}
    click element   id:hide-textbox
    sleep   4
    element should not be visible  show-hide
    element should be enabled   show-hide


#Selecting multi elements
#    select from list by index  multiple-select-example  2
#    sleep  3
#    select from list by index  multiple-select-example  0
#    sleep  3
#    select from list by index  multiple-select-example  1
#    sleep  3
#
#
#    #Verifying the title
#Veirfying the title
#    ${"Title"}  set variable  Practice | Let's Kode It
#    title should be  ${"Title"}
#
#Setting selenium speed
#    set selenium implicit wait  2
#    unselect all from list  multiple-select-example
#    ${unselectCheckbox}=    get webelement  id:benzcheck
#    unselect checkbox   ${unselectCheckbox}
#
#Handling alert
##    set selenium speed  3
##    input text  id:name  satheesh
##    clear element text  id:name
##    input text  id:name  sandeep
##    click element  id:alertbtn
##    handle alert  accept
##    input text  id:name  sandeep
##    click element   id:confirmbtn
##    handle alert    dismiss
##    input text  id:name  anu
##    click element  id:confirmbtn
##    handle alert    accept
#    select frame  id:courses-iframe
#    input text  id:search-courses  Python23
#    click element  xpath://i[@title='Search']
#    unselect frame
#    input text  id:name  satheesh
#    clear element text  id:name
#    input text  name  sandeep
#    click element  id:alertbtn
#    handle alert  accept
#    sleep  2
#
#Switching Browser window
    click link  opentab
    sleep   4
    switch window   New
    input text  id:search-courses   Python
    switch window   Main
    ${elem}=    Get WebElement	id:name
    ${locator_list} =	Create List	css:div#div_id	xpath://*[text(), " >> "]
    input text  ${elem}  Python
#    ${id}   set variable    name
#    page should contain element  ${id}
#
#Taking screenshots
#    capture page screenshot  C://Users//sathe//PycharmProjects//RobotTests//Tests//Screens//pagescreen.png
#    Execute JavaScript    window.scrollTo(0, 1000)
#    sleep   5
#    mouse over  id:mousehover
#    sleep   5
#    click link  Top
#    sleep   4
#    close all browsers