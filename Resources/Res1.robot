*** Settings ***
Documentation  Resources File.


*** Variables ***



*** Keywords ***

Start Browser and Maximize
    Open Browser  https://www.thetestingworld.com/testings/  Chrome
    Maximize Browser Window

Close Browser Window
    ${Title}=  Get Title
    log  ${Title}
    Close Browser

