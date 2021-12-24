*** Settings ***
Resource          ../Resources/HomePage.robot

*** Variables ***

*** Keywords ***
Seçilen kulaklık sepete eklenir
    Click Element    ${ADD_TO_CART}
    Wait Until Element Is Visible  ${BASKET}

Sepetim butonuna tıklanır
    Click Element    ${BASKET}

Seçilen ürünün sepete eklendiği görülür
    Then Wait Until Element Is Visible  ${BASKET_HEADER}

Browser kapatılır
    And Close Browser


