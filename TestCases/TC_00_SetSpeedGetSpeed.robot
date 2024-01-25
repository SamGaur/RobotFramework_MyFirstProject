*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${Browser}  Chrome 
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***

TC001_test
  Open Browser  ${URL}  ${Browser}
  Maximize Browser Window
  #Set Selenium Speed    5seconds
  Set Selenium Timeout    20seconds
  ${tm}=  Get Selenium Timeout
  Log To Console    ${tm}
  Wait Until Page Contains    Testing
  Input Text    name:fld_username    test
  Input Password    name:fld_password    password
  Sleep  1minutes
  ${Speed}=    Get Selenium Speed
  Log To Console    ${Speed}


