*** Settings ***
Resource    ../resources/recursos_front.resource

*** Variables ***


*** Test Cases ***
Fazer Login com sucesso
    Passo 1 - Abrir o Navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Inserir email correto
    Passo 4 - Inserir senha correta
    Passo 5 - Clicar em cadastrarButton
    Passo 6 - Validar redirecionamento para a página Home
    Passo 7 - Fechar o navegador