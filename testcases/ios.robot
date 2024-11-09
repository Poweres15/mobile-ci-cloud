*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}           iOS
${PLATFORM_VERSION}        17.2  # Change to match your iOS version
${DEVICE_NAME}             iPhone 14  # Change to match your simulator device
${APP_PATH}                ${EXECDIR}/app/MVCTodo.app
${APPIUM_SERVER}           http://localhost:4723

*** Test Cases ***
Launch App On iOS Simulator
    [Tags]    iOS
    BuiltIn.Log To Console    hello world
    AppiumLibrary.Open Application    ${APPIUM_SERVER}  platformName=${PLATFORM_NAME}    platformVersion=${PLATFORM_VERSION}    deviceName=${DEVICE_NAME}    app=${APP_PATH}    automationName=XCUITest  wdaLocalPort=8100  wdaLaunchTimeout=360000 
    # Comment out below if cache expire
    ...  usePreinstalledWDA=${True}  
    ...  prebuiltWDAPath=/Users/runner/Library/Developer/Xcode/DerivedData/WebDriverAgent-dtmoeonrefnxsncuficthanbldlc/Build/Products/Debug-iphonesimulator/WebDriverAgentRunner-Runner.app

    AppiumLibrary.Capture Page Screenshot  showme.png
    AppiumLibrary.Close Application