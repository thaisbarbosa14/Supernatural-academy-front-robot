*** Settings ***
Resource    ../resources/emailInvalido.resource

*** Variables ***



*** Test Cases ***
Validar mensagem de erro para email inválido
    Passo 1 - Abrir o navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Inserir email inválido
    Passo 4 - Inserir senha
    Passo 5 - Clicar em cadastrarButton
    Passo 6 - Validar mensagem de erro
    Passo 7 - Fechar o navegador