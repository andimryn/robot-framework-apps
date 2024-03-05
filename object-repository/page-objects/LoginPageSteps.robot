*** Settings ***
Resource    BasePageSteps.robot
Resource    ../locators/LoginScreenLocators.robot
Resource    ../locators/HomeScreenLocators.robot
Resource    ../locators/RegisterScreenLocators.robot


*** Keywords ***
Login To The Application [Arguments] ${emailAddress} ${password}
    Input Email Address [Arguments] ${emailAddress}
    Input Password [Arguments] ${password}
    Click On The 'LOGIN' Button


Navigate To Register Screen
    Click Element [Arguments] ${createAccountButton} ${SMALL_RETRY_COUNT}


Input Email Address [Arguments] ${emailAddress}
    Input Text [Arguments] ${emailAddressTextbox} ${emailAddress} ${SMALL_RETRY_COUNT}


Input Password [Arguments] ${password}
    Input Text [Arguments] ${passwordTextbox} ${password} ${SMALL_RETRY_COUNT}


Click On The 'LOGIN' Button
    Click Element [Arguments] ${loginButton} ${SMALL_RETRY_COUNT}


Login Successfully with Correct Name and Password [Arguments] ${email} ${password}
    Element Text Should Be [Arguments] ${emailTextValue} ${email} ${SMALL_RETRY_COUNT}
    Element Text Should Be [Arguments] ${passwordTextValue} ${password} ${SMALL_RETRY_COUNT}
