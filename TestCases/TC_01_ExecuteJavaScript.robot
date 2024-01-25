*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL2}  https://www.facebook.com/
#${URL}  https://www.thetestingworld.com/

*** Test Cases ***
# TC_01_Execute_ScrollBar
#     Open Browser  ${URL}  Chrome
#     Maximize Browser Window
#     # Execute JavaScript    window.scrollTo(0,1000)
#     # Sleep    10seconds
#     #Open Context Menu    xpath://span[contains(text(), 'VIDEOS')]
#     #Double Click Element    xpath://button[@type='submit']
#     #Mouse Down    xpath://button[@type='submit']
#     #Mouse Up    xpath://button[@type='submit']
#     Mouse Over    xpath://span[contains(text(), 'TRAINING')]
#     Mouse Over    xpath://span[contains(text(), 'ONLINE TRAINING')]
#     Sleep    10seconds

TC_02_Login
    Open Browser  ${URL2}  Chrome
    Maximize Browser Window   
    Set Selenium Timeout    1minutes 
    Sleep    10seconds
    Press Key    name:email    samikshagaur
    Press Key    name:pass    samikshagaur
    
    

