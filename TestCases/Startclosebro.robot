*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Resourses.robot

*** Variables ***


*** Test Cases ***
Robot First Test Case
    Open Browser  ${URLTEST}  ${Browser}
    Maximize Browser Window
    Input Text    name:fld_username    Samiksha

