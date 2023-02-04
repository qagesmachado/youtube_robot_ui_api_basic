*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\if_else.robot

*** Test Cases ***

Teste 1 - Teste if else

    ${A}  Set Variable  -1
    
    IF     ${A} == 1
        Log To Console  A varivável 'A' é igual a 1
    ELSE IF    ${A} == 2
        Log To Console  A varivável 'A' é igual a 2
    ELSE IF    ${A} == 3
        Log To Console  A varivável 'A' é igual a 3
    ELSE    
        Log To Console  A varivável 'A' é maior que a 3
    END

    IF    'Gustavo'=='Gustavo'
        Log To Console  entrou aqui
    END
    

