*** Settings ***
Resource          ../Resources/HomePage.robot

*** Variables ***

${SearchKeyword}  Bluetooth kulaklık
${BrandName}  JBL


*** Keywords ***
Sitede Bluetooth kulaklık kelimesi aranır
    Input Text    ${SEARCH_FIELD}    ${SearchKeyword}
    Sleep   3s
    Click Element   ${CLICK_SEARCH_BUTTON}

Bluetooth kulaklık markası seçilir
    Wait Until Element Is Enabled  ${BRAND_FIELD}
    Input Text    ${BRAND_FIELD}    ${BrandName}
    Wait Until Element Is Enabled  ${BRAND}
    Click Element   ${BRAND}

Bluetooth kulaklık için en düşük tutar belirlenir
    [Arguments]    ${Min}  ${Max}
    Input Text    ${MINPRICE}  ${Min}
    Input Text    ${MAXPRICE}   ${Max}
    Sleep  3s
    Click Element   ${OK}

Bluetooth kulaklık için siyah renk seçilir
     Scroll Element Into View    ${COLOUR}
     Click Element    ${COLOUR}
     Sleep    3s
     Wait Until Element Is Enabled    ${BLACK}
     Click Element    ${BLACK}

Listelenen kulaklıklardan ilki seçilir
    Wait Until Element Is Enabled  ${FIRST_PRODUCT}
    Click Element   ${FIRST_PRODUCT}
    ${windowhandles}=  Get Window Handles
    And Switch Window  ${windowhandles}[1]
    And Wait Until Element Is Visible    ${ADD_TO_CART}


