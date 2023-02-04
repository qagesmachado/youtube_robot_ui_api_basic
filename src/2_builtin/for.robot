*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\for.robot

*** Test Cases ***

Teste 1 - FOR LOOP 

    FOR   ${i}  IN RANGE    5
        Log To Console    ${i}
        Sleep    1
    END

Teste 2 - Exit For Loop If 
    FOR   ${i}  IN RANGE    60
        Log To Console    ${i}
    
        IF  ${i}==3
            ${w}  Evaluate  ${i}+${i}
        END
        
        Exit For Loop If    ${i}==3
        Sleep    1
    END

    Log To Console  Valor de quando sai do FOR foi de ${i} + ${w}


Teste 3 - Exit For Loop 
    FOR   ${i}  IN RANGE    60
        Log To Console    ${i}
        Exit For Loop
        Sleep    1
    END

    Log To Console  Valor de quando sai do FOR foi de ${i}

