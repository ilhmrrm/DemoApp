*** Settings ***
Resource            ../base/base.robot
Resource            ../HomePage/home-page.robot
Variables           login-locator.yaml

*** Variables ***
${success_login}    //android.view.ViewGroup[@content-desc="container header"]

*** Keywords ***
Input Email
    Wait Until Element Is Visible    locator=${username_input}
    Input Text    locator=${username_input}    text=bob@example.com

Input Password User
    Input Text    locator=${password_input}    text=10203040

Click Sign In Button On Login Page
    Click Element    xpath=${login_input}

Verify User Is success to Logged In
    Wait Until Element Is Visible    locator=${success_login}