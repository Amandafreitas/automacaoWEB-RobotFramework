*** Settings ***

Resource    ../main.robot

*** Variables ***

&{auth}

# Elementos 
...    Button_Token_Prova=//button[contains(text(),"Acessar Token Toro pelo app")]  

*** Keywords ***

Então o login é realizado e eu devo ser redirecionado para a pagina de autenticacao
    Wait Until Element Is Visible   ${auth.Button_Token_Prova}   5
    Element Should Be Visible       ${auth.Button_Token_Prova}
