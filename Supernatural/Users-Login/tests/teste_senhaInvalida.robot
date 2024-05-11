*** Settings ***
Resource   ../resources/senhaInvalida.resource

*** Variables ***


*** Test Cases ***
Validar mensagem de erro para senha inválida
    Passo 1 - Abrir o Navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Inserir email correto
    Passo 4 - Inserir senha inválida
    Passo 5 - Clicar em cadastrarButton
    Passo 6 - Capturar screenshot se mensagem de erro de senha inválida aparecer
    Passo 7 - Fechar o navegador
