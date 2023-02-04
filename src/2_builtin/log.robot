*** Settings ***

*** Variables ***
# robot -d ./results -L trace  .\src\2_builtin\log.robot
  
*** Test Cases ***

Teste - Tipos de LOG

    Log    Esse é um log que só aparece no reports

    Log Many    Esse     é um     log que só     aparece     no reports    e vai    ficar    separado
    
    Log To Console    Esse é um log que aparece no console

    Log Variables
