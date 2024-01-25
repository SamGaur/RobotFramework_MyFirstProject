*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/
${Browser}  Chrome

*** Test Cases ***

TC_02 Take SS TestCase
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    Test
    Input Password    name:fld_password    password
    Capture Page Screenshot  ./Snapshots/TC_SS1.png
    



