*** Settings ***

Library    SeleniumLibrary

*** Variables ***

${Browser}  Chrome
${URL}  http://www.thetestingworld.com/testings

*** Test Cases ***

# TC_001 Browser Start Close
#     Open Browser  ${URL}  ${Browser}
#     Close Browser

Robot First Test Case
    Open Browser  ${URL}  ${Browser}
    Input Text    name:fld_username    TestingWorld
    Input Text    xpath://input[@name='fld_email']    testingworldindia@gmail.com
    
    
