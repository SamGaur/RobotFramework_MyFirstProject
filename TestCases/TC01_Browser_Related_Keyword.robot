*** Settings ***
Library  SeleniumLibrary
Library  Collections

*** Variables ***
${URL1}  https://www.thetestingworld.com/testings/
${URL2}  https://www.youtube.com/
${BROWSER}  Chrome

*** Test Cases ***

Open Browser  ${URL1}  ${BROWSER}
Go To    ${URL2} 
#${URL11} =    Get Location
#Log To Console    ${URL11}
#Go Back
#${URL22} =    Get Location
#Log To Console    ${URL22}


