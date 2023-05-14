*** Settings ***
Resource    ../main.robot

*** Variables ***

# Dados válidos de Login
&{geral}
...    URL=https://app.toroinvestimentos.com.br/entrar
...    Browser=chrome