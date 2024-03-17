*** Settings ***
Resource                ../base/base.robot
Variables               payment-locator.yaml

*** Keywords ***
Input Full Name Payment
    Swipe    500    750    500    500
    Wait Until Element Is Visible        locator=${Fullname_Payment}
    Input Text                           locator=${Fullname_Payment}    text=Rebecca

Input Card Number
    Input Text    locator=${CardNumber}    text=325812657568789

Input Expiration Date
    Input Text    locator=${ExpiryDate}    text=03/25

Input Security Code
    Input Text    locator=${SecurityCode}    text=123

Click Review Order Button
    Wait Until Element Is Visible    xpath=${ReviewOrder}
    Click Element                    xpath=${ReviewOrder}

Click Place Order Button
    Wait Until Element Is Visible    xpath=${PlaceOrder}
    Click Element                    xpath=${PlaceOrder}
    Wait Until Page Contains         text=Checkout Complete



