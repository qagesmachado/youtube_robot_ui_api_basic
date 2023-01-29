*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\1_general_section\should.robot

${A}  Gustavo
${B}  2
${C}  2
${D}  4
${E}  
${F}  ${True}
${G}  ${False}
${H}  Oi meu nome é Gustavo e tneho 24 anos
${K}  Gustavo
*** Test Cases ***

Teste 1 - Teste Should

    #validação de valores
    Should Be Empty      ${E}
    Should Not Be Empty  ${A}

    # ${B}  Convert To Integer  ${B}

    Should Be Equal      ${B}  ${C}
    Should Not Be Equal  ${B}  ${A}
    
    # # Validação de tipo
    Should Be Equal As Integers  ${D}  ${D}
    
    # ${D}  Convert To Integer  ${D}

    Should Be Equal As Strings  ${D}  4
    
    # # booleano
    Should Be True  ${F}

    # # Regex
    Should Contain   ${H}  Gustavo
    Should Start With  ${K}  ustavo

    

