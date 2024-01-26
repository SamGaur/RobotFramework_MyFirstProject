*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL1}  https://www.thetestingworld.com/
${URL2}  https://www.google.com/

*** Test Cases ***

MultiWindowsHandling Functionality
    Open Browser  ${URL1}  Chrome
    Maximize Browser Window
    Open Browser  ${URL2}  Chrome
    Switch Browser    1
    ${URL1}=    Get Location
    Log To Console    ${URL1}
    Switch Browser    2
    ${URL2}=    Get Location
    Log To Console    ${URL2}
    Set Window Size    10    10      
    Switch Browser    1
    Click Element    //span[@class='menu-title' and text()='Contact Us']
    Set Selenium Timeout    20seconds
    Close All Browsers
    
    #Double Click Element    xpath://span[contains(@class, 'menu-title') and text() = 'Contact Us'] 
    #Click Element    //*[@class='menu-title' and contains(text(),'Contact Us')]
    # Click Element    //span[@class='menu-title' and text()='Contact Us']
    # Switch Browser    2
    # ${URL2}=    Get Location
    # Log To Console    ${URL2}

