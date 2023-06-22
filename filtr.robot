*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${BROWSER}        chrome
${URL}            https://www.amazon.pl/

*** Test Cases ***
Test Amazon Search
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    5 seconds

    # Znajdź pole wyszukiwania i wpisz "piłka"
    Input Text    //input[@class="nav-input nav-progressive-attribute"]    piłka

    # Kliknij przycisk "Szukaj"
    Click Element    //input[@class="nav-input nav-progressive-attribute"][@type="submit"]

    # Poczekaj, aż strona zostanie załadowana
    Wait Until Page Contains Element    id=search

    # Włącz filtr marki Adidas
    Click Element    //input[@id="p_89/adidas"]

    # Włącz filtr maksymalnej ceny 100 zł
    Click Link    xpath=//a[contains(@href, 'high-price/100')]

    # Ponów wyszukiwanie
    Click Button    xpath=//input[@value="Szukaj"]

    Close Browser
