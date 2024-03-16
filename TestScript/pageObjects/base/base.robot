*** Settings ***
Library                  AppiumLibrary

*** Variables ***
${REMOTE_URL}            http://localhost:4723/wd/hub
${PLATFORM_NAME}         Android

*** Keywords ***
Open Demo Application
    Open Application    remote_url=${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    platformVersion=11.0    
    ...    deviceName=emulator-5554
    ...    appPackage=com.saucelabs.mydemoapp.rn
    ...    appActivity=com.saucelabs.mydemoapp.rn.MainActivity

Close Demo Application
    Close Application