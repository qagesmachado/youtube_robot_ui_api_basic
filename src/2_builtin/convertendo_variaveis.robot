*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\convertendo_variaveis.robot

*** Test Cases ***

Teste 1 - Convert To Binary
    ${result} =	Convert To Binary	2			
    Log to Console  ${result}
    ${result} =	Convert To Binary	10			
    Log To Console  ${result}

    #   4 3 2 1 0 -> índice
    #   0 1 0 1 0 -> múltiplicador
    #   1*(2^1) + 1*(2*3) = 2 + 8 = 10

Teste 2 - Convert To Boolean
    ${var_1}  Set Variable  True
    ${var_2}  Set Variable  False

    ${type_1} =    Evaluate    type($var_1)
    ${type_2} =    Evaluate    type($var_2)

    Log To Console  ${type_1} - ${type_2}

    ${result_1} =	Convert To Boolean	${var_1}
    ${result_2} =	Convert To Boolean	${var_2}
    

    ${type_1} =    Evaluate    type($result_1)
    ${type_2} =    Evaluate    type($result_2)

    Log To Console  ${type_1} - ${type_2}
    Log To Console  ${result_1} - ${result_2}


Teste 3 - Convert To Integer
    ${var_1}  Set Variable  125

    ${type_1} =    Evaluate    type($var_1)

    Log To Console  ${type_1}

    ${result_1} =	Convert To Integer	${var_1}

    ${type_1} =    Evaluate    type($result_1)

    Log To Console  ${type_1} - ${result_1}

Teste 4 - Convert To Number
    ${var_1}  Set Variable  125.556

    ${type_1} =    Evaluate    type($var_1)

    Log To Console  ${type_1}

    ${result_1} =	Convert To Number	${var_1}

    ${type_1} =    Evaluate    type($result_1)

    Log To Console  ${type_1} - ${result_1}

Teste 5 - Convert To String
    ${var}  Set Variable  ${False}

    ${type_1} =    Evaluate    type($var)

    Log To Console  ${type_1}

    ${result} =	Convert To String	${var}

    ${type} =    Evaluate    type($result)

    Log To Console  ${type} - ${result}