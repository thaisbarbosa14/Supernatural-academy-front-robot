*** Settings ***
Resource   ../resources/emailObrigatorio.resource

*** Variables ***


*** Test Cases ***
Validar Mensagem Email Obrigatório
    Passo 1 - Abrir o navegador
    Passo 2 - Acessar a página de login qacoders academy
    Passo 3 - Deixar campo de e-mail em branco
    Passo 4 - Clicar em cadastrarButton
    Passo 5 - Validar mensagem "O email é obrigatório"
    Passo 6 - Fechar o navegador