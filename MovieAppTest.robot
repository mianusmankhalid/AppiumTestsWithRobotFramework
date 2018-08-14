*** Settings ***
Library           AppiumLibrary       run_on_failure=Capture Page Screenshot

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${PLATFORM_VERSION}     8.0
${DEVICE_NAME}          ReactNative8_0
${APP}                  ${CURDIR}/apk/moviesapp.apk
${DELAY_TIME}           2s

*** Keywords ***
Filter Function
     [Arguments]    ${POSITION} 
     Open Application  ${REMOTE_URL}  platformName=${PLATFORM_NAME}  platformVersion=${PLATFORM_VERSION}  deviceName=${DEVICE_NAME}  app=${APP}  automationName=appium
     Click Element  xpath=//android.widget.ImageView[contains(@clickable,'true')]
    #  //*[@class='android.widget.ImageView' and @contentDescription='More options' and @knownSuperClass='android.widget.ImageView']
    #  //*[@class='android.widget.ImageView' and @clickable='true']
     Sleep  5s
     Click Element  xpath=//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[contains(@index,${POSITION})]
     Sleep  5s  
     [TearDown]     Close Application

*** Test Cases ***
sort_movie_test
    Filter Function     0   


