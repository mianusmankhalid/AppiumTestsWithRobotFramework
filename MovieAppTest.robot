*** Settings ***
Library           AppiumLibrary       run_on_failure=Capture Page Screenshot

*** Variables ***
${REMOTE_URL}           http://localhost:4723/wd/hub
${PLATFORM_NAME}        Android
${DEVICE_NAME}          test
${APP}                  ${CURDIR}/apk/moviesapp.apk
${DELAY_TIME}           2s



*** Keywords ***
Filter Function
     [Arguments]    ${POSITION}
     Log To Console    Dir val is ${APP}
     Open Application  ${REMOTE_URL}  platformName=${PLATFORM_NAME}  deviceName=${DEVICE_NAME}  app=${APP}  automationName=appium
     Click Element  xpath=//android.widget.ImageView[contains(@clickable,'true')]
     Sleep  5s
     Click Element  xpath=//android.widget.FrameLayout/android.widget.ListView/android.widget.LinearLayout[contains(@index,${POSITION})]
     [TearDown]     Close Application

*** Test Cases ***
sort_movie_test
    Filter Function     1   


