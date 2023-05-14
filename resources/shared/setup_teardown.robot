*** Settings ***
Resource  ../main.robot

*** Keywords ***

Acessar pagina de login
    Open Browser    ${geral.URL}  ${geral.Browser}
    
Fechar navegador
    Close Browser