*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://demoqa.com/text-box
${CheckBoxURL}  https://demoqa.com/checkbox

*** Test Cases ***
TestCaseElementLocatorTC
    Open Browser  ${URL}  Chrome
    Maximize Browser Window
    Set Selenium Speed    2seconds
    Click Element    //*[@id="userName"]  
    Input Text    //*[@id="userName"]    Samiksha
    Click Element    //*[@id='item-1']
    #Switch Window    ${CheckBoxURL}
    Click Element    //*[@class='rct-icon rct-icon-uncheck']
   


