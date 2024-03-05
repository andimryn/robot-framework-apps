*** Settings ***
Resource         ../object-repository/page-objects/LoginPageSteps.robot
Resource         ../object-repository/page-objects/RegisterPageSteps.robot
Resource         ../constants/LoginConstants.robot
Resource         ../constants/RegisterConstants.robot

Test Setup       Open Test Application
Test Teardown    Close Application


*** Test Cases ***
Verify Error Message on Email Empty Value
    [Tags]    Smoke

    Click On The 'LOGIN' Button
    Element Should Be Visible [Arguments] ${emailErrorMessage} ${SMALL_RETRY_COUNT}


Verify That A User Can Login To The Application Using Valid Credentials
    [Tags]    Smoke

    Navigate To Register Screen
    Sign Up To The Application [Arguments] ${NAME} ${EMAIL_ADDRESS} ${PASSWORD} ${PASSWORD}
    Go Back
    Login To The Application [Arguments] ${EMAIL_ADDRESS} ${PASSWORD}
    Login Successfully with Correct Name and Password [Arguments] ${EMAIL_ADDRESS} ${PASSWORD}
