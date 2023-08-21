*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Check Procedure Speed
    Open Browser    https://www.amazon.pl/    Chrome
    Maximize Browser Window
    Capture Page Screenshot
    ${load_time}    Get Selenium Speed
    Log    Page Load Time: ${load_time}
    Input Text    //input[@class="nav-input nav-progressive-attribute"]    piłka 
    Click Element    //input[@class="nav-input nav-progressive-attribute"][@type="submit"]
    Wait Until Page Contains Element    //div[@data-component-type="s-search-result"][1]//img
    Click Element    //div[@data-component-type="s-search-result"][1]//img
    ${product_title}    Get Text    //span[@id="productTitle"]
    Run Keyword And Ignore Error    Click Element    //form[@id="sp-cc"]//input[@id="sp-cc-accept"]
    Click Element    //input[@id="add-to-cart-button"]
    Capture Page Screenshot
    ${procedure_time}    Get Selenium Speed
    Log    Procedure Time: ${procedure_time}
    Close Browser
