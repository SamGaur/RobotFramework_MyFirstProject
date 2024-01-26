*** Settings ***
Documentation  Running Two Test Cases at the same time.
Library  SeleniumLibrary
Resource  ../Resources/Res1.robot
Test Setup    Start Browser and Maximize
Test Teardown    Close Browser Window

*** Variables ***
${URL}  https://www.thetestingworld.com/testings/ 
${Browser}  Chrome


*** Test Cases ***

TC01_TestCase
    Input Text    name:fld_username    Samiksha
    Input Text    name:fld_email    testing@email.com
    Input Password    name:fld_password    password
    Input Password    fld_cpassword    password

TC02_TestCase
    Select Radio Button    add_type    home
    Select Radio Button    add_type    office 
    Click Element    name:sex
    Select From List By Value    name:sex  2

TC03_TestCase
    Click Element    //input[@id='datepicker']
    #Click Element    xpath://td[@class='ui-datepicker-current-day']/a[@class='ui-state-default ui-state-active' and text()='1']

    

TC04_TestCase
    Select Checkbox    terms
    Click Link  xpath://a[text()='Read Detail']
    
    

