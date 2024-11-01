*** Settings ***
Library    AppiumLibrary

*** Variables ***
${PLATFORM_NAME}           iOS
${PLATFORM_VERSION}        17.2  # Change to match your iOS version
${DEVICE_NAME}             iPhone 14  # Change to match your simulator device
${APP_PATH}                ${EXECDIR}/app/MVCTodo.app
${APPIUM_SERVER}           http://localhost:4724/wd/hub

*** Test Cases ***
Launch App On iOS Simulator
    [Tags]    iOS
    BuiltIn.Log To Console    hello world
    AppiumLibrary.Open Application    ${APPIUM_SERVER}  
    ...  platformName=${PLATFORM_NAME}    
    ...    udid=realdeviceid
    ...    bundleId=com.apple.Preferences   
    ...    automationName=XCUITest  
    ...  wdaLocalPort=8100  
    ...  wdaLaunchTimeout=360000  
    # ...  usePreinstalledWDA=${false}  
    ...  showXcodeLog=${true}  
    # ...  prebuiltWDAPath=/Users/powereskitikonrat/Library/Developer/Xcode/DerivedData/WebDriverAgent-cmavqihbxgpbkkdqryxglvxpwoem/Build/Products/Debug-iphoneos/WebDriverAgentRunner-Runner.app
    # # Add more interactions here, such as locating elements and simulating interactions
    # # For example:
    # # Click Element    xpath=//XCUIElementTypeButton[@name="Login"]
    AppiumLibrary.Capture Page Screenshot  showme.png
    AppiumLibrary.Close Application