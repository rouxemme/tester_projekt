*** Settings ***
Library  SeleniumLibrary
*** Variables ***

*** Test Cases *** 
 This is sample test case
 ...    [documentation]  Google test
 ...    [tags]  regression
 ...    Open Browser  https://www.google.pl/,  chrome
 ...    Close Browser 

*** Keywords *** 
SeleniumLibrary