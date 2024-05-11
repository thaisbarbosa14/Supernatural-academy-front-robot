*** Settings ***
Resource   ../resources/emailNaoCadastrado.resource

*** Variables ***


*** Test Cases ***
Validar mensagem de erro para email não cadastrado
    Passo 1 - Abrir o navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Inserir email não cadastrado
    Passo 4 - Inserir senha
    Passo 5 - Clicar em cadastrarButton
    Passo 6 - Fechar o navegador