*** Settings ***

*** Variables ***
# robot -d ./results -i test_1  .\src\1_general_section\escrevendo_teste.robot

*** Test Cases ***

Teste 1
    [Tags]  smoke  regression
    [Documentation]  Documentação do teste 1
    ...              Continuando a escrever a documentação     
    Logando resultado
    Log To Console  Teste 1 Ok
    Pass Execution  0

Teste 2
    [Tags]  regression
    Logando resultado
    Log To Console  Teste 2 Ok

*** Keywords ***
Logando resultado
    Log To Console  Entrou na keyword



