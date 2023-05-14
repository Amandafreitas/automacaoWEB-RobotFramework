### Projeto de Automação de Testes Toro v1.1

Funcionalidade: Login
Como um usuário,
Eu quero fazer login no site,
Para acessar a pagina secreta.

### Suite de testes da funcionalidade Login

Limitações:
- Parar no primeiro passo do cadastro para evitar uso de SMS no Login ou autenticação dupla.
Dessa forma, após realizar o login, só temos acesso a página de autenticação (TOKEN).


|Nº|Cenário|Prioridade|
|:----|:----|:----|
|1|Login com sucesso clicando no botão entrar|Alta|
|2|Login com sucesso utilizando a tecla TAB|Baixa|
|3|Login com sucesso após inserir credenciais válidas e pressionar enter|Baixa|
|4|Login com nome de usuário inválido|Alta|
|5|Login com senha inválida|Alta|
|6|Verificar se após realizar o login, é exibido a tela secreta de autorização do token|Alta|
|7|Verificar se o login é afetado com um ataque de SQL Injection|Alta|
|8|Login sem informar o nome do usuário|Média|
|9|Login sem informar a senha|Média|
|10|Login com usuário bloqueado|Média|
|11|Login com usuário válido e senha expirada|Média|
|12|Verificar se após fechar o menu lateral de autorização do token, é exibido a tela de login|Média|
|13|Tentar acessar a página secreta sem estar logado|Alta|
|14|Bloqueio de conta após 5 tentativas com credenciais inválidas|Alta|
|15|Verificar que o campo password deve aparecer de forma encriptada|Média|
|16|Verificar que não é possível copiar o campo password após adicionado|Média|
|17|Verificar que o usuário não deve permanecer logado após fechar a janela e abrir novamente|Média|
|18|Login informando um nome de usuário muito grande |Baixa|
|19|Login informando um nome de senha muito grande |Baixa|


### Cenários:

Cenário 1: Login com sucesso clicando no botão entrar
Dado que o usuário está na página de login
Quando é inserido uma credencial válida
Então o usuário é redirecionado para a página secreta do token.

Cenário 2: 
Dado que o usuário está na página de login
Quando é inserido o nome e senha do usuário válida utilizando a tecla TAB
E aperto enter
Então eu devo ser redirecionado para a pagina de autenticacao

Cenário 3:

Cenário 4: Login com nome de usuário inválido
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário inválido
Então é exibida uma mensagem de erro informando "Dados incorretos. Digite novamente."

Cenário 5: Login com senha inválida
Dado que o usuário está na página de login
Quando o usuário insere uma senha inválida
Então é exibida uma mensagem de erro informando "Dados incorretos. Digite novamente."

Cenário 6: Verificar se após realizar o login, é exibido a tela secreta de autorização do token
Dado que o usuário está na página de login
Quando o usuário insere credenciais válidas
Então o usuário é redirecionado para a página de autorização do token

Cenário 7: 

Cenário 8: Login sem informar o nome do usuário
Dado que o usuário está na página de login
Quando o usuário não preenche o campo de usuário e insire uma senha válida
Então é exibida uma mensagem de erro informando "E-mail inválido"

Cenário 9: Login sem informar a senha
Dado que o usuário está na página de login
Quando o usuário insere um nome de usuário válido e não preenche o campo senha
Então é exibida uma mensagem de erro informando "Senha inválida"

Cenário 10: Login com usuário bloqueado
Dado que o usuário está na página de login
Quando o usuário está bloqueado 
E o usuário insere as credenciais válidas
Então é exibida uma mensagem informando que o usuário está bloqueado

Cenário 11: Login com usuário válido e senha expirada
Dado que o usuário está na página de login
Quando o usuário está com a senha expirada
E o usuário insere as credenciais válidas
Então sou redirecionado para a página de trocar de senha

Cenário 12: Verificar se após fechar o menu lateral de autorização do token, é exibido a tela de login
Dado que o usuário está na página restrita de autorização do token
Quando o menu lateral é fechado
Então o usuário deve ser redirecionado para a página de login

Cenário 13: Tentar acessar a página secreta sem estar logado
Dado que o usuário não esta logado no sistema
Quando o usuário tentar acessar a página restrita
Então o usuário é redirecionado para a página de login

Cenário 14: Bloqueio de conta após 5 tentativas com credenciais inválidas
Dado que o usuário tentar realizar o login 5 vezes com credenciais inválidasQuando o usuário tentar realizar o login 5 vezes com credenciais inválidas
Então a conta é bloqueada temporariamente


##### Sugestão de melhorias

- Ao informar um username com formato diferente do formato de email ou formato do cpf, não é informado nenhum erro.
- Da mesma forma, caso seja enviada uma tentativa de login com um email que não foi cadastrado anteriormente, não é informado nenhum erro informando que o usuário não está cadastrado
