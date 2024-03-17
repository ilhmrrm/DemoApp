*** Settings ***
Resource            ../pageObjects/HomePage/home-page.robot
Resource            ../pageObjects/LoginPage/login-page.robot
Resource            ../pageObjects/CheckoutPage/checkout-page.robot
Resource            ../pageObjects/ShippingPage/shipping-page.robot
Resource            ../pageObjects/PaymentPage/payment-page.robot

*** Test Cases ***
Testing Payment Feature
    [Setup]    Test Setup
    Perform PaymentPage

*** Keywords ***
Test Setup
    [Documentation]
    Open Demo Application
    Click Menu Burger Button On Home Page
    Click Login Button On Home Page
    Input Email
    login-page.Input Password User
    Click Sign In Button On Login Page
    Click One Item On Dashboard
    Click Add To Cart Button Items One
    Click Back to Catalog
    Click Another Item On Dashboard
    Click Add To Cart Button 
    Click Cart Button
    Click Checkout Button
    Input Full Name
    Input Address
    Input City 
    Input Zip Code and Country
    Click Payment Button

Perform PaymentPage
    Input Full Name Payment
    Input Card Number
    Input Expiration Date
    Input Security Code
    Click Review Order Button
    Click Place Order Button