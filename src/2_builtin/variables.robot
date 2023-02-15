*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\variables.robot


# Local -> Apenas que foi declarada
# Teste -> Declarada no contexto
# Global -> Declarada globalmente

${A}  3456
*** Test Cases ***

Teste 1 - Variável Local

    ${X}  Set Variable    3
    ${Y}  Set Variable    3

    Should Be Equal  ${X}  ${Y}

    Log To Console  ${X}
    Log To Console  ${Y}

Teste 2 - Tentando usar variável local do teste 1

    # Log To Console  ${X}
    # Log To Console  ${Y}

    key-word 3
    key-word 4

Teste 3 - Variável de teste
    
    Key-word 1
    Key-word 2

Teste 4 - Declarando variável global

    ${A}  Set Variable    3
    # Set Global Variable  ${A}
    Log To Console  ${A}

Teste 5 - Declarando variável global

    Log To Console  ${A}
    

*** Keywords ***
Key-word 1
    ${w}  Set Variable    3
    Set Test Variable  ${w}

Key-word 2
    Log To Console  ${w}

key-word 3
    ${X}  Set Variable    3
    ${Y}  Set Variable    3

    Should Be Equal  ${X}  ${Y}

    Log To Console  ${X}
    Log To Console  ${Y}

key-word 4
    ${X}  Set Variable    3
    ${Y}  Set Variable    3
    Log To Console  ${X}
    Log To Console  ${Y}