*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}  https://ultimateqa.com/
${Browser}  Chrome

*** Test Cases ***

Pageshouldcontains_TestCase
    Open Browser    ${URL}  ${Browser} 
    Page should contain    Push Higher Quality Software To Market Faster
#Click Element     xpath://h1[text()='Push Higher Quality Software To Market Faster']







