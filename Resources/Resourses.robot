*** Settings ***
Library  SeleniumLibrary

*** Variables ***
# ${Browser}  Chrome
# ${URLTEST}  https://www.thetestingworld.com/testings/


*** Keywords ***
Start Browser and Maximize
    [Documentation]  This is a Resourse file.
    [Arguments]  ${UserURL}  ${InputBrowser}
    Open Browser    ${UserURL}  ${InputBrowser}
    Maximize Browser Window
    ${Title}=  Get Title
    [Return]  ${Title}
