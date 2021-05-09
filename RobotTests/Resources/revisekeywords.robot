*** Settings ***
Library     SeleniumLibrary
*** Variable ***
${URL}  https://letskodeit.teachable.com/p/practice
${Browser}  Chrome

*** Keywords ***
LaunchBrowser
     Open Browser  ${URL}  ${Browser}
     maximize browser window
SelectingRadioButtonsonebyone
    @{radioelements}    get webelements  xpath://input[contains(@name, 'cars') and contains(@type, 'radio')]
    FOR  ${element}  IN  @{radioelements}
        click element  ${element}

    END
SelectingDropdownElements
    @{dropdownelements}  get webelements    xpath://select[@id='carselect']/option
    FOR     ${element}  IN  @{dropdownelements}
        click element   ${element}
    END
Selectmultipledropdownelements
    @{multiselect}  get webelements  xpath://select[@id='multiple-select-example']/option
    FOR  ${element}  IN  @{multiselect}
        click element   ${element}
    END
Selectingcheckboxes
    @{checkboxes}    get webelements    xpath://input[contains(@name,'cars') and contains(@type,'checkbox')]
    FOR  ${element}  IN  @{checkboxes}
        click element   ${element}
    END
Switching to another tab
    click element   id:opentab
    switch window   New
    sleep   4
    click element   name:query
    input text   name:query    Python
    sleep   4
    switch window   Main
    sleep   4
    @{multiselect}  get webelements  xpath://select[@id='multiple-select-example']/option
    FOR  ${element}  IN  @{multiselect}
        click element   ${element}
    END

