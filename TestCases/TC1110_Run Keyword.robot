*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***

*** Test Cases ***

TC_001 Run Variable Test
    ${var1}=  Set Variable    log to console
    Run Keyword    ${var1}    test@gmail.com

TC_002 Run If Variable Test
    ${var2}=  Set Variable    NO
    Run Keyword If    '${var2}'=='YES'    Log To Console    Value Found
    Run Keyword If    '${var2}'=='NO'    Log To Console    Value not found

*** Variables ***