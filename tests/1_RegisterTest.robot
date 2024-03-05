*** Settings ***
Resource         ../object-repository/page-objects/LoginPageSteps.robot
Resource         ../object-repository/page-objects/RegisterPageSteps.robot
Resource         ../constants/LoginConstants.robot
Resource         ../constants/RegisterConstants.robot

Test Setup       Open Test Application
Test Teardown    Close Application


*** Test Cases ***
Verify Error Message on Name Empty Value
    [Tags]    Smoke

    Navigate To Register Screen
    Click On The 'REGISTER' Button
    Element Should Be Visible [Arguments] ${invalidNameMessage} ${SMALL_RETRY_COUNT}


Verify That A New User Can Sign Up To The Application
    [Tags]    Smoke

    Navigate To Register Screen
    Sign Up To The Application [Arguments] ${NAME} ${EMAIL_ADDRESS} ${PASSWORD} ${PASSWORD}
    Click On The 'Login' Text Link Button
