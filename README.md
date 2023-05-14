### Projeto de Automação de Testes Toro v1.1

####Funcionalidade: Login
Como um usuário,
Eu quero fazer login no site,
Para acessar a pagina secreta.

##### Suite de testes da funcionalidade Login
|Nº|Cenário|Prioridade|
|:----|:----|:----|
|1|Login com sucesso|Alta|
|2|Login com nome de usuário inválido|Alta|
|3|Login com senha inválida|Alta|
|4|Verificar se após realizar o login, é exibido a tela secreta de autorização do token|Alta|
|5|Login sem informar o nome do usuário|Média|
|6|Login sem informar a senha|Média|
|7|Login com usuário bloqueado|Média|
|8|Login com usuário válido e senha expirada|Média|
|9|Verificar se após fechar p menu lateral de autorização do token, é exibido a tela de login|Média|
|10|Login com tentativas incorretas|Baixa|
|11|Tentar acessar a página secreta sem estar logado|Baixa|
|12|Bloqueio de conta após várias tentativas inválidas|Baixa|



##### Cenários

###### Cenário: Login com sucesso
Dado que estou na página de login
Quando insiro minhas credenciais válidas
Então sou redirecionado para a página secreta do token.

###### Cenário: Login com nome de usuário inválido
Dado que estou na página de login
Quando insiro um nome de usuário inválido
Então vejo uma mensagem de erro informando "Dados incorretos. Digite novamente."

###### Cenário: Login com senha inválida
Dado que estou na página de login
Quando insiro uma senha inválida
Então vejo uma mensagem de erro informando "Dados incorretos. Digite novamente."

###### Cenário: Verificar se após fechar o menu lateral de autorização do token, é exibido a tela de login
Dado que estou na página restrita de autorização do token
Quando fecho o menu lateral
Então sou redirecionado para a página de login

###### Cenário: Login sem informar o nome do usuário
Dado que estou na página de login
Quando deixo o campo de usuário em branco e insiro uma senha válida
Então vejo uma mensagem de erro informando "E-mail inválido"

###### Cenário: Login sem informar a senha
Dado que estou na página de login
Quando insiro um nome de usuário válido e deixo o campo de senha em branco
Então vejo uma mensagem de erro informando "Senha inválida"

###### Cenário: Login com usuário bloqueado
Dado que estou na página de login
Quando insiro as credenciais de um usuário bloqueado
Então vejo uma mensagem informando que o usuário está bloqueado

###### Cenário: Login com usuário válido e senha expirada
Dado que estou na página de login
Quando insiro as credenciais de um usuário com senha expirada
Então sou redirecionado para a página de troca de senha

###### Cenário: Verificar se após realizar o login, é exibido a tela secreta de autorização do token
Dado que estou na página de login
Quando insiro minhas credenciais válidas
Então sou redirecionado para a página de autorização do token

###### Cenário: Login com tentativas incorretas
Dado que estou na página de login
Quando insiro credenciais inválidas várias vezes
Então sou bloqueado temporariamente para tentar novamente

###### Cenário: Tentar acessar a página secreta sem estar logado
Dado que não estou logado no sistema
Quando tento acessar a página restrita
Então sou redirecionado para a página de login

###### Cenário: Bloqueio de conta após várias tentativas inválidas
Dado que estou na página de login
Quando eu tento fazer o login utilizando várias credenciais inválidas
Então minha conta é bloqueada temporariamente

##### Sugestão de melhorias

- Ao informar um username com formato diferente do formato de email ou formato do cpf, não é informado nenhum erro.
- Da mesma forma, caso seja enviada uma tentativa de login com um email que não foi cadastrado anteriormente, não é informado nenhum erro informando que o usuário não está cadastrado
