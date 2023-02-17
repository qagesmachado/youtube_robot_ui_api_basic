*** Settings ***
Library               RequestsLibrary

*** Variables ***

# https://github.com/MarketSquare/robotframework-requests#readme

# http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html

# robot -d ./results -L trace  .\src\3_requests\post_serverest.robot


*** Test Cases ***


Fazer um Post

    Create Session    alias=server_rest    url=https://serverest.dev

    ${header}    Create Dictionary    Content-Type=application/json

    
    ${Response}    POST On Session    alias=server_rest    url=/usuarios    expected_status=201    headers=${header}    data={"nome": "Fulano da Silva", "email": "beltrano@qa4.com.br", "password": "teste", "administrador": "true"}
    
    ${msg}    Set Variable    ${Response.json()['message']}
    Log To Console    ${Response.json()}

    Should Be Equal    ${msg}    Cadastro realizado com sucesso
    
*** Keywords ***


