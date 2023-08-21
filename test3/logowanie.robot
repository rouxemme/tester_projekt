*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.amazon.pl/

*** Test Cases ***
Test Amazon Login
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Run Keyword And Ignore Error    Click Element    //form[@id="sp-cc"]//input[@id="sp-cc-accept"]
    Click Element    xpath=//a[@id="nav-link-accountList"]
    Input Text    //input[@id="ap_email"]    lalal@mail.pl 
    Click Element    //input[@class="a-button-input"][@type="submit"]
    Element Should Contain    xpath=//div[@class="a-alert-content"]    Nie udało się znaleźć konta powiązanego z tym adresem e-mail.
    Capture Page Screenshot
    Close Browser
