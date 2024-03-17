*** Settings ***
Resource                ../base/base.robot
Variables               logout-locator.yaml

*** Keywords ***
Click Continue Shopping
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="Continue Shopping button"]
    Click Element                    xpath=//android.view.ViewGroup[@content-desc="Continue Shopping button"]

# Click Back To Menu


Click Logout Menu
    Click Element                    xpath=${menuBurger}
    Wait Until Element Is Visible    locator=//android.view.ViewGroup[@content-desc="menu item log out"]
    Click Element                    locator=//android.view.ViewGroup[@content-desc="menu item log out"]

Click Logout Button
    Wait Until Element Is Visible    xpath=//android.widget.Button[@resource-id="android:id/button1"]
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]
    Wait Until Page Contains         text=You are successfully logged out.
    Click Element                    locator=//android.widget.Button[@resource-id="android:id/button1"]



