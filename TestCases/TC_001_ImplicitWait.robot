*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***

TC_001 Implicit Wait Test
    Open Browser  ${Browser}  ${URL}
    Maximize Browser Window
    ${default_T}=  get selenium Implicit wait
    Log To Console    ${default_T}
    Set Selenium Implicit Wait    20 seconds
    ${default_T}= get selenium Implicit wait
    Log To Console    ${default_T}
    Input Text    name:fld_username    Testing
    Input Password    name:fld_password    password
