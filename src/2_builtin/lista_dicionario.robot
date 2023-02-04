*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\lista_dicionario.robot

# &{Dict_1}  nome=Gustavo    sobrenome=Machado    profissao=QA    idade=30
# @{List_1}    morango    banana    maça    abacate    manga    
*** Test Cases ***

Teste - Dicionário

    ${Dict_1}    Create Dictionary    nome=Gustavo    sobrenome=Machado    profissao=QA    idade=30

    # Log To Console     &{Dict_1}    # Errado
    Log To Console     ${Dict_1}    # Certo


    Log To Console    ${Dict_1.nome}
    Log To Console    ${Dict_1.sobrenome}
    Log To Console    ${Dict_1.profissao}
    Log To Console    ${Dict_1.idade}

    FOR  ${i}  IN  &{Dict_1}
        Log To Console    ${i}
    END

Teste - Lista
    
    ${List_1}    Create List    morango    banana    maça    abacate    manga  
    ${length} =	Get Length	${List_1}
    Log To Console    ${length}

    # Log To Console     &{List_1}    # Errado
    # Log To Console     @{List_1}    # Errado
    Log To Console     ${List_1}    # Certo
    Log To Console    ${List_1}[0]
    Log To Console    ${List_1}[1]
    Log To Console    ${List_1}[2]
    Log To Console    ${List_1}[3]
    Log To Console    ${List_1}[4]
    # Log To Console    ${List_1}[5]    # ERRADO

    FOR  ${i}  IN  @{List_1}
        Log To Console    --------Dentro do FOR----------
        Log To Console    ------------------
        Log To Console    ${i}
    END
    