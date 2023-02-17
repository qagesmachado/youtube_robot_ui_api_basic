*** Settings ***
Library               RequestsLibrary

*** Variables ***

# https://github.com/MarketSquare/robotframework-requests#readme

# http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html

# robot -d ./results -L trace  .\src\3_requests\put_serverest.robot


*** Test Cases ***


Realizando PUT
    Create Session    url=https://serverest.dev    alias=server_rest
    
    ${header}  Create Dictionary    Content-Type=application/json

    ${response}    PUT On Session    alias=server_rest    url=/usuarios/vxfyjbaR3epZWWtx    headers=${header}    expected_status=200    data={"nome": "Fulano da Silva", "email": "beltrano@qa4.com.br", "password": "teste", "administrador": "true"}

    Log To Console    ${response.text}



*** Keywords ***


