*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***

Successful login
    Open Browser    https://www.google.com/    gc 

Input Text    APjFqb    Samiksha      
Click Button    btnK            