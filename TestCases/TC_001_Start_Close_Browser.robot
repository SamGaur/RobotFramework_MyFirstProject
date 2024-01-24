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
    Maximize Browser Window
    #Set Selenium Speed    2seconds
    Enter Username Password Email  TestingWorld  123456  testingworldindia@gmail.com
    Clear Element Text    name:fld_username
    Select Radio Button    add_type    office     
    Select From List By Index    name:sex  2
    Select From List By Value    name:sex  1
    Select From List By Label    name:sex  Female
    Select Checkbox    terms
    Click Link  xpath://a[text()='Read Detail']
    #Click Button    xpath://a[@class='close' and @href='#']

    #Close Browser
    

    #Click Button    xpath://input[@type='submit']


*** Keywords ***

Enter Username Password Email
    [Arguments]  ${username}  ${password}  ${email}
    Input Text    name:fld_username  ${username}      
    Input Password    name:fld_password  ${password}  
    Input Text    xpath://input[@name='fld_email']  ${email}  