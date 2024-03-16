*** Settings ***
Resource                ../pageObjects/HomePage/home-page.robot
Resource                ../pageObjects/LoginPage/login-page.robot
# Resource                ../pageObjects/base/base.robot

*** Test Cases ***
Login with Valid Data
    Open Demo Application
    Click Menu Burger Button On Home Page
    Click Login Button On Home Page
    Input Email
    login-page.Input Password User
    Click Sign In Button On Login Page
    Verify User Is success to Logged In
