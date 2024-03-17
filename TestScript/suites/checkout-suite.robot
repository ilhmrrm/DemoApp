*** Settings ***
Resource            ../pageObjects/HomePage/home-page.robot
Resource            ../pageObjects/LoginPage/login-page.robot
Resource            ../pageObjects/CheckoutPage/checkout-page.robot

*** Test Cases ***
Testing Checkout Feature
    [Setup]        Test Setup
    Perform Checkout
    [Teardown]     Test Teardown

*** Keywords ***
Test Setup
    [Documentation]
    Open Demo Application
    Click Menu Burger Button On Home Page
    Click Login Button On Home Page
    Input Email
    login-page.Input Password User
    Click Sign In Button On Login Page

Perform Checkout
    [Documentation]
    Click One Item On Dashboard
    Click Add To Cart Button Items One
    Click Back to Catalog
    Click Another Item On Dashboard
    Click Add To Cart Button 
    Click Cart Button
    Click Checkout Button

Test Teardown
    [Documentation]
    Close Demo Application