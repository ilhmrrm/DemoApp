*** Settings ***
Resource                ../base/base.robot
Variables               checkout-locator.yaml

*** Variables ***

*** Keywords ***
Click One Item On Dashboard
    Wait Until Element Is Visible    xpath=${item_one}
    Click Element    xpath=${item_one}

Click Add To Cart Button and Back To Catalog
    Swipe    500    1500    500    500
    Wait Until Element Is Visible    ${Add_to_cart}
    Click Element    locator=${Add_to_cart}
    Click Element    locator=${burger_menu}
    Wait Until Element Is Visible    locator=${back_catalog}
    Click Element    locator=${back_catalog}

Click Another Item On Dashboard
    Wait Until Element Is Visible        xpath=${item_two}
    Click Element    xpath=${item_two}

Click Add To Cart Button 
    Swipe    500    1500    500    500
    Click Element    locator=${Add_to_cart}

Click Cart Button
    Click Element    locator=${cart_button}

Click Checkout Button
    Wait Until Element Is Visible       locator=${checkout_button}
    Click Element    locator=${checkout_button}
