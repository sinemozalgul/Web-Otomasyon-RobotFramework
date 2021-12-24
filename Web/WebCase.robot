*** Settings ***
Resource          ../Web/Resources/HomePage.robot
Resource          ../Web/Resources/SearchProduct.robot
Resource          ../Web/Resources/AddToBasket.robot

*** Variables ***
${URL}  https://www.hepsiburada.com/
${BROWSER}  Chrome
${SEARCH_FIELD}  css=.desktopOldAutosuggestTheme-input
${CLICK_SEARCH_BUTTON}  css=.SearchBoxOld-buttonContainer
${BRAND_FIELD}  css=.searchbox-searchInput
${BRAND}  name=markalar
${MINPRICE}  css=.content-rangeInputContainer>div:nth-child(1) input
${MAXPRICE}  css=.content-rangeInputContainer>div:nth-child(2) input
${OK}  css=.content-rangeInputRoot button
${COLOUR}  css= #renk>label
${BLACK}  css= #renk .content-contentRoot:nth-of-type(1)
${FIRST_PRODUCT}  css= #i0
${ADD_TO_CART}  id=addToCart
${BASKET}  css=.checkoutui-SalesFrontCash-m5Re7>button:nth-of-type(1)
${BASKET_HEADER}  css=.basket_headerTop_15H0U
${Min}     750
${Max}     1000

*** Test Cases ***
Ürün arama ve sepete ürün ekleme
  Given Hepsiburada.com sitesi acilir Hepsiburada.com sitesi acilir
  When Sitede Bluetooth kulaklık kelimesi aranır
  And Bluetooth kulaklık markası seçilir
  And Bluetooth kulaklık için en düşük tutar belirlenir  ${Min}  ${Max}
  And Bluetooth kulaklık için siyah renk seçilir
  And Listelenen kulaklıklardan ilki seçilir
  And Seçilen kulaklık sepete eklenir
  And Sepetim butonuna tıklanır
  Then Seçilen ürünün sepete eklendiği görülür
  And Browser kapatılır





