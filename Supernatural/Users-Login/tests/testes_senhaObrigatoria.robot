*** Settings ***
Resource    ../resources/senhaObrigatoria.resource

*** Variables ***


*** Test Cases ***
Validar Mensagem Senha Obrigatória
    Passo 1 - Abrir o navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Inserir email
    Passo 4 - Deixar campo de senha em branco
    Passo 5 - Clicar em cadastrarButton
    Passo 6 - Validar mensagem "A senha é obrigatória"
    Passo 7 - Fechar o navegador