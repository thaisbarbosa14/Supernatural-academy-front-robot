*** Settings ***
Resource    ../resources/camposDaTela.resource

*** Variables ***


*** Test Cases ***
Validar Elementos da Tela
    Passo 1 - Abrir o Navegador
    Passo 2 - Acessar a Página de Login
    Passo 3 - Validar Logo Qa.Coders Academy
    Passo 4 - Validar Campo Email
    Passo 5 - Validar Campo Senha
    Passo 6 - Validar Botão Entrar
    Passo 7 - Validar Link Esqueci Minha Senha
    Passo 8 - Fechar o Navegador