*** Settings ***

Resource    ../main.robot

*** Variables ***

&{login}

# Dados válidos para login
# Dados inválidos para o login
...    username_email=***
...    username_cpf=**
...    password=***

# Dados inválidos para o login
...    invalid_username=teste@gmail.com
...    invalid_password=12345678

# Elementos da pagina de login
...    Input_Username=//input[@id="username"]
...    Input_Password=//input[@id="password"]
...    Button_Entrar=//button[contains(text(),"Entrar")] 
...    Msg_Erro_Autenticacao=//p[contains(text(),"Dados incorretos. Digite novamente.")] 
...    Msg_Email_Invalido=//span[contains(text()," E-mail inválido")] 
...    Msg_Senha_Invalida=//span[contains(text()," Senha inválida")] 



*** Keywords ***

Dado que estou na pagina de login
    Open Browser    ${geral.URL}  ${geral.Browser}
    
Quando eu insiro o Email e senha do usuário válida
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Input Text                          ${login.Input_Username}   ${login.username_email}
    Wait Until Element Is Visible       ${login.Input_Password}   5
    Input Text                          ${login.Input_Password}   ${login.password}

Quando eu insiro o CPF e senha do usuário válida
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Input Text                          ${login.Input_Username}   ${login.username_cpf}
    Wait Until Element Is Visible       ${login.Input_Password}   5
    Input Text                          ${login.Input_Password}   ${login.password}

Quando eu insiro o nome e senha do usuário válida utilizando a tecla TAB
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Press Keys                          ${login.Input_Username}   TAB
    Input Text                          ${login.Input_Username}   ${login.username_email}

    Wait Until Element Is Visible       ${login.Input_Password}   5
    Press Keys                          ${login.Input_Password}   TAB
    Input Text                          ${login.Input_Password}   ${login.password}

Quando eu insiro o nome do usuário inválido e uma senha válida
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Input Text                          ${login.Input_Username}   ${login.invalid_username}
    Wait Until Element Is Visible       ${login.Input_Password}   5
    Input Text                          ${login.Input_Password}   ${login.password}

Quando eu insiro o nome do usuário válido e uma senha inválida
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Input Text                          ${login.Input_Username}   ${login.username_email}
    Wait Until Element Is Visible       ${login.Input_Password}   5
    Input Text                          ${login.Input_Password}   ${login.invalid_password}

Quando eu insiro um login válido
    Wait Until Element Is Visible       ${login.Input_Username}   5
    Input Text                          ${login.Input_Username}   ${login.username_email}

Quando eu insiro uma senha válida 
    Wait Until Element Is Visible       ${login.Input_Password}   5
    Input Text                          ${login.Input_Password}   ${login.invalid_password}

E clico em entrar
    Click Element                      ${login.Button_Entrar}

E aperto enter
    Press Keys                          ${login.Button_Entrar}      ENTER

Então deve ser exibida uma mensagem de dados incorretos
    Wait Until Element Is Visible   ${login.Msg_Erro_Autenticacao}   5
    Element Should Be Visible       ${login.Msg_Erro_Autenticacao}

Então deve ser exibida uma mensagem de E-mail inválido
    Wait Until Element Is Visible   ${login.Msg_Email_Invalido}   5
    Element Should Be Visible       ${login.Msg_Email_Invalido}

Então deve ser exibida uma mensagem de Senha inválida
    Wait Until Element Is Visible   ${login.Msg_Senha_Invalida}   5
    Element Should Be Visible       ${login.Msg_Senha_Invalida}

