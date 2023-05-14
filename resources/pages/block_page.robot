*** Settings ***

Resource    ../main.robot

*** Variables ***

&{login_bloqueio_senha}
...    Msg_Bloqueio_Senha=//p[contains(text(),"Sua senha foi bloqueada. Crie uma nova para continuar.")]  
...    Botao_fechar=//button[contains(text(),"Fechar")]


*** Keywords ***

Então deve ser exibida uma mensagem de bloqueio
    Wait Until Element Is Visible   ${login_bloqueio_senha.Msg_Bloqueio_Senha}   5
    Element Should Be Visible       ${login_bloqueio_senha.Msg_Bloqueio_Senha}
    Wait Until Element Is Visible   ${login_bloqueio_senha.Botao_fechar}   5
    Element Should Be Visible       ${login_bloqueio_senha.Botao_fechar}
