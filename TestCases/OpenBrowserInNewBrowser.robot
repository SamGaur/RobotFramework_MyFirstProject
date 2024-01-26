*** Settings ***
Library  SeleniumLibrary
Library    ../.venv/Lib/site-packages/robot/libraries/String.py

*** Variables ***
${URL}    https://ultimateqa.com/blog/
${BROWSER}    Chrome

*** Test Cases ***
TestCase_NewTabInBrowser
    Open Browser    ${URL}  ${BROWSER}
    Maximize Browser Window
    #Set Selenium Speed    3seconds

    
    #Click Element    //a[@class='icon et_pb_with_border' and @title='Follow on Facebook']
    
    #<a href="https://www.facebook.com/Ultimateqa1" class="icon et_pb_with_border" title="Follow on Facebook" target="_blank"><span class="et_pb_social_media_follow_network_name" aria-hidden="true">Follow</span></a>
    
    Click Element    //a[@href='https://www.facebook.com/Ultimateqa1' and @class='icon et_pb_with_border' and @title='Follow on Facebook' and @target='_blank']
    Switch Window  Blog - Ultimate QA
    ${url1}=    Get Location
    Log To Console    ${url1}
    Switch Window  Ultimate QA | Saint Petersburg FL | Facebook
    ${url2}=    Get Location
    Log To Console    ${url2}
    Switch Window  Blog - Ultimate QA
    @{list1}    Get Window Handles
    FOR  ${win}  IN  @{list1}
        Switch Window    ${win}
        ${url3}=  Get Location
        Log To Console    ${url3}
    END 

    




