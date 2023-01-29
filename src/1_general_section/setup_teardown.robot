*** Settings ***
Suite Setup      Conexao
Suite Teardown   Desconexao
Test Setup       Vá para página inicial
Test Teardown    Limpar o banco de dados
*** Variables ***
# robot -d ./results -i test_1  .\src\1_general_section\escrevendo_teste.robot

*** Test Cases ***

Teste 1
    Logando resultado
    Log To Console  Teste 1 Ok

Teste 2
    Logando resultado
    Log To Console  Teste 2 Ok

Teste 3
    Logando resultado
    Log To Console  Teste 3 Ok

Teste 4
    Logando resultado
    Log To Console  Teste 5 Ok

Teste 5
    Logando resultado
    Log To Console  Teste 5 Ok

Teste 6
    Logando resultado
    Log To Console  Teste 6 Ok


*** Keywords ***
Logando resultado
    Log To Console  Entrou na keyword

Conexao
    Log To Console  Abri a página web e me conectei

Desconexao
    Log To Console  Desconectado

Vá para página inicial
    Log To Console  Navegou para a página inicial

Limpar o banco de dados
    Log To Console  Banco de dados limpo