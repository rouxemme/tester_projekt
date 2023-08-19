*** Settings ***
Library           SeleniumLibrary
Library           String

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.amazon.pl/

*** Test Cases ***
Test Amazon Search
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Run Keyword And Ignore Error    Click Element    //form[@id="sp-cc"]//input[@id="sp-cc-accept"]
    Input Text    //input[@class="nav-input nav-progressive-attribute"]    piłka 
    Click Element    //input[@class="nav-input nav-progressive-attribute"][@type="submit"]
    Input Text    xpath=//input[contains(@class, "a-input-text a-spacing-top-mini s-ref-price-range s-ref-price-padding")]    500
    Click Element    //input[@class="a-button-input"][@type="submit"]
    Capture Page Screenshot
    Close Browser
