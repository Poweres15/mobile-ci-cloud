*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}           iOS
${PLATFORM_VERSION}        17.0  # Change to match your iOS version
${DEVICE_NAME}             iPhone 12  # Change to match your simulator device
${APP_PATH}                /Users/powereskitikonrat/mobile-cloud/app/MVCTodo.app
${APPIUM_SERVER}           http://localhost:4723/wd/hub

*** Test Cases ***
Launch App On iOS Simulator
    [Tags]    iOS
    Open Application    ${APPIUM_SERVER}    platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_PATH}    automationName=XCUITest
    # Add more interactions here, such as locating elements and simulating interactions
    # For example:
    # Click Element    xpath=//XCUIElementTypeButton[@name="Login"]
    AppiumLibrary.Capture Page Screenshot  showme.png
    # Close Application