*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
TC001_PrintVariable
    ${var1}  Set Variable  Hello Samiksha
    Log To Console    ${var1}
