*** Settings ***
Resource                ../base/base.robot
Variables               shipping-locator.yaml

*** Keywords ***
Input Full Name
    Swipe    500    750    500    500
    Wait Until Element Is Visible        locator=${Fullname}
    Input Text    locator=${Fullname}    text=Rebecca

Input Address
    Input Text    locator=${Address}     text=Jakarta Timur

Input City 
    Input Text    locator=${City}        text=Jakarta

Input Zip Code and Country
    Wait Until Element Is Visible    locator=${Zipcode}
    Input Text    locator=${Zipcode}    text=123456
    Input Text    locator=${Country}     text=United Kingdom

Click Payment Button
    Wait Until Element Is Visible    xpath=${Payment_button}
    Click Element                    xpath=${Payment_button}
