*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}           Android
${PLATFORM_VERSION}        11.0  # Change to match your iOS version
${DEVICE_NAME}             emulator  # Change to match your simulator device
${APP_PATH}                /Users/powereskitikonrat/appium-webdriverio/app/android/ColorNote.apk
${APPIUM_SERVER}           http://localhost:4723

*** Test Cases ***
Launch App On iOS Simulator
    [Tags]    Android
    BuiltIn.Log To Console    hello world
    AppiumLibrary.Open Application    ${APPIUM_SERVER}  automationName=UiAutomator2    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_PATH} 
    # # Add more interactions here, such as locating elements and simulating interactions
    # # For example:
    # # Click Element    xpath=//XCUIElementTypeButton[@name="Login"]
    AppiumLibrary.Capture Page Screenshot  showme.png
    AppiumLibrary.Close Application