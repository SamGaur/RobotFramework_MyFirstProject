*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resourses.robot 

*** Variables ***
${Browser}  Chrome
${URLTEST}  https://www.thetestingworld.com/testings/

*** Test Cases ***
Robot First TC
    [Documentation]  This Test Case is to check Start and Close Browser.
    ${Res}=  Start Browser and Maximize  ${URLTEST}  ${Browser}
    Log ${Res}
    Input Text    name:fld_username    ${Res}