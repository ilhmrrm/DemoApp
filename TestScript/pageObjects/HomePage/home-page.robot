*** Settings ***
Resource        ../base/base.robot
Variables       home-locator.yaml


*** Keywords ***
Click Menu Burger Button On Home Page
    Click Element                            locator=${burger_menu_btn}

Click Login Button On Home Page
    Click Element                            locator=${login_btn}