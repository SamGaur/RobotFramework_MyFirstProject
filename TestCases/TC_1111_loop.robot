*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC_1111 Variable loop testing
    FOR    ${i}    IN RANGE    0    10
    log to Console    ${i}   
    END 
  
    
TC_1111 For Loop For all the values in list
    @{List}  Create List  Hey  there!  this  is  a  loop
    FOR    ${i}    IN    @{List}
        Log To Console    ${i}
    END
  
    

*** Keywords ***