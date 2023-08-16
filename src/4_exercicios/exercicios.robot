*** Settings ***
Library    DateTime
Library    Collections

*** Variables ***

# Utilizado para escrever variáveis estáticas, xpath, variáveis globais

*** Test Cases ***

Exercício Dicionário
    # Exibir nome, idade, rua, numero, cep, bairro, cidade e estado no console a partir de um dicionário

    #Criando dicionário
    ${dicionario_1}    Create Dictionary    nome=Felipe    idade=20    rua=Rua que o felipe mora    numero=345    cep=39331-070    bairro=bairro do felipe    cidade=Belo Horizonte    estado=MG
    
    # Logando os resultado individualmente no console - Maneira 1
    Log To Console     ${dicionario_1}[nome]
    Log To Console     ${dicionario_1}[idade]

    # Logando os resultado individualmente no console - Maneira 2
    Log To Console    ${dicionario_1.nome}
    Log To Console    ${dicionario_1.idade}
    Log To Console    ${dicionario_1.rua}
    Log To Console    ${dicionario_1.cep}
    Log To Console    ${dicionario_1.bairro}
    Log To Console    ${dicionario_1.cidade}
    Log To Console    ${dicionario_1.estado}

    # Logando o dicionátio inteiro
    Log To Console     ${dicionario_1}    # Certo

    # Logando dicionário por meio de um FOR
    FOR  ${i}  IN  &{dicionario_1}
        Log To Console    ${i}        #chave e valor do dicionário
        Log To Console    ${i}[0]    #chave do dicionário apenas
        Log To Console    ${i}[1]    #valor do dicionário
    END

Exercício Argumentos e Retornos + If Simples
    # Criar uma keyword que receba idade e retorne o ano de nascimento
    # Se o ano for menor que 2000, exibir mensagem dizendo que nasceu no século passado
    
    Validação de ano de nascimento    idade=20

    Validação de ano de nascimento    idade=27

Exercício For Simples + Lista
#   Exiba cada uma das frutas de uma lista usando um For Simples

    ${List_1}    Create List    morango    banana    maça    abacate    manga

    FOR  ${i}  IN  @{List_1}
        Log To Console    ${i}
    END

Exercício If Inline + For in Range
    #   Crie um loop que conte quantos números par existem entre 0 e 10, usando if inline

    # Varíaveis contadoras
    ${list_par}    Create List
    ${list_impar}    Create List     

    FOR   ${i}  IN RANGE    0    11  #coloquei até 11 para incluir o numero 10, se não quiser incluir substituir por 10 o numero 11
            # Log To Console    ${i}

            ${resto}    Evaluate    ${i}%2

            # Adicionando em listas pares ou impares        
            IF    ${resto}==0    Append To List    ${list_par}    ${resto}    ELSE    Append To List    ${list_impar}    ${resto}
    END
    
    Log To Console    ${list_par}
    Log To Console    ${list_impar}

    # Fazendo contagem    
    ${par}    Count Values In List    ${list_par}        ${0}    #notaçao de número colocando apenas 0 ele é string
    ${impar}    Count Values In List    ${list_impar}    ${1}    #notaçao de número colocando apenas 1 ele é string
    
    # Mostrando resultado
    Log To Console    Há ${par} números pares
    Log To Console    Há ${impar} números ímpares

*** Keywords ***
Validação de ano de nascimento
    [Arguments]    ${idade}

    ${ano_hoje}   Get Current Date    result_format=%Y
    # Log To Console    ${ano_hoje}

    ${ano_nascimento}    Evaluate    ${ano_hoje}-${idade}
    Log To Console    Quem tem ${idade} anos -> Nasceu em ${ano_nascimento} 
    
    IF    ${ano_nascimento} < 2000
        Log To Console    Nasceu no século passado
    ELSE
        Log To Console    Nasceu nesse século
    END
