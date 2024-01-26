# wait commands

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${var1}  https://www.thetestingworld.com/

*** Test Cases ***
TC_001 Login Logout Functionality
    Open Browser  ${var1}  Chrome
    Maximize Browser Window
    Wait Until Page Contains    VIDEOS
   # Open Context Menu  xpath://span[containes(text(),'VIDEOS')]
    Click Element    //span[contains(text(),'VIDEOS')]



