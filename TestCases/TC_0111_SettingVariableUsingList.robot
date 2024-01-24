*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***
TC_0111 Variable using List
    @{List}  Create List  Hello  11   22   33   44  55
    ${List_length}  Get Length    ${List}
    Log To Console    ${List_length}
    ${List_data}=  Get From List    ${List}    2
    Log To Console    ${List_data}


*** Keywords ***
