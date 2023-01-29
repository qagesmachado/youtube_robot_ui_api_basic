*** Settings ***
# Test Setup       Vá para página inicial
# Test Setup                Set Log Level    TRACE
*** Variables ***
# robot -d ./results -L info  .\src\1_general_section\logs_reports.robot
# robot -d ./results -L debug  .\src\1_general_section\logs_reports.robot
# robot -d ./results -L trace  .\src\1_general_section\logs_reports.robot

# info - debug - trace
*** Test Cases ***

Teste 1
   
    ${X}  Set Variable    3
    ${Y}  Set Variable    3

    Should Be Equal  ${X}  ${Y}

Teste 2
    Should not Be Empty  oi
    Should Be Empty  ${EMPTY}


*** Keywords ***
