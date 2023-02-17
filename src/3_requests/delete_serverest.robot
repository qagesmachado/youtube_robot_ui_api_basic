*** Settings ***
Library               RequestsLibrary

*** Variables ***

# https://github.com/MarketSquare/robotframework-requests#readme

# http://marketsquare.github.io/robotframework-requests/doc/RequestsLibrary.html

# robot -d ./results -L trace  .\src\3_requests\put_serverest.robot


*** Test Cases ***


Realizando POST
    Create Session    url=https://serverest.dev    alias=server_rest
    
    ${header}  Create Dictionary    Content-Type=application/json

    ${response}    DELETE On Session    alias=server_rest    url=/usuarios/t86quRXZ4zuVciRW    headers=${header}    expected_status=200    
    Log To Console    ${response.text}




*** Keywords ***


