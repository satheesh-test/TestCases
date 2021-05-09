*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${Browser}  Chrome
${URL}  https://letskodeit.teachable.com/p/practice

*** Keywords ***
LaunchBrowser
     Open Browser  ${URL}  ${Browser}
     maximize browser window

SelectCarsRadioButton
    @{radiobuttons}  get webelements    xpath://input[contains(@name,'cars') and contains(@type,'radio')]
    FOR  ${button}  IN  @{radiobuttons}
        click element   ${button}
        sleep   2
        click element   ${button}
        sleep   2
        click element   ${button}
        sleep   2
    END
SelectingCheckBoxes
    @{Checkboxes}   get webelements  xpath://input[contains(@name,'cars') and contains(@type,'checkbox')]
    ${numberofcheckboxes}   get element count   xpath://input[contains(@name,'cars') and contains(@type,'checkbox')]
    log to console  ${numberofcheckboxes}
    ${count}    get variable value  ${numberof checkboxes}
    log to console  ${count}
    FOR  ${checkbox}    IN  @{Checkboxes}
        Exit For Loop If  '${checkbox}'=='5'
        select checkbox  ${checkbox}
        sleep  3
        select checkbox  ${checkbox}
        sleep  3
        select checkbox  ${checkbox}
    END

SelectingDropdownElements
    select from list by index  cars  1
    select from list by label  cars  Honda


