*** Settings ***
Library           Selenium2Library


*** Variables ***
${BROWSER}        Chrome
${BROWSER PATH}   Web/chromedriver
${URL}  https://www.hepsiburada.com/


*** Keywords ***
 Hepsiburada.com sitesi acilir Hepsiburada.com sitesi acilir
    Open Browser    ${URL}    ${BROWSER}    ${BROWSER PATH}
    Maximize Browser Window