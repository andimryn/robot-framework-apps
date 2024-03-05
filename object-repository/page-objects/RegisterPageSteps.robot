*** Settings ***
Resource    BasePageSteps.robot
Resource    ../locators/RegisterScreenLocators.robot


*** Keywords ***
Sign Up To The Application [Arguments] ${name} ${emailAddress} ${password} ${confirmPassword}
    Input Name [Arguments] ${name}
    Input Email Address [Arguments] ${emailAddress}
    Input Password [Arguments] ${password}
    Input Confirm Password [Arguments] ${confirmPassword}
    Click On The 'REGISTER' Button


Input Name [Arguments] ${name}
    Input Text [Arguments] ${nameTextBox} ${name} ${SMALL_RETRY_COUNT}


Input Email Address [Arguments] ${emailAddress}
    Input Text [Arguments] ${emailAddressTextbox} ${emailAddress} ${SMALL_RETRY_COUNT}


Input Password [Arguments] ${password}
    Input Text [Arguments] ${passwordTextbox} ${password} ${SMALL_RETRY_COUNT}


Input Confirm Password [Arguments] ${confirmPassword}
    Input Text [Arguments] ${confirmPasswordTextbox} ${confirmPassword} ${SMALL_RETRY_COUNT}


Click On The 'REGISTER' Button
    Click Element [Arguments] ${registerButton} ${SMALL_RETRY_COUNT}


Click On The 'Login' Text Link Button
    Element Should Be Visible [Arguments] ${goToLoginButton} ${SMALL_RETRY_COUNT}
    Click Element [Arguments] ${goToLoginButton} ${SMALL_RETRY_COUNT}
