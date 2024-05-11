*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}               https://automacao.qacoders-academy.com.br/login
${INVALID_EMAIL}     emailnaocadastrado@example.com
${ERROR_MSG}         //div[contains(@class,'mensagem-erro') and contains(text(),'E')]
${emailInput}        //input[contains(@type,'text')]
${senhaInput}        //input[contains(@type,'password')]
${cadastrarButton}   //button[contains(.,'Entrar')]
${mensagemErro}      //p[contains(.,'E')]


*** Keywords ***
Passo 1 - Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Passo 6 - Fechar o navegador
    Close Browser

Passo 2 - Acessar a página de login qacoders academy
    Go To    url=${URL}

Passo 3 - Inserir email não cadastrado
    Wait Until Element Is Visible    locator=${emailInput}
    Input Text    locator=${emailInput}    text=${INVALID_EMAIL}

Passo 4 - Inserir senha
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Password    locator=${senhaInput}    password=1234@Test

Passo 5 - Clicar em cadastrarButton
    Wait Until Element Is Visible    locator=${cadastrarButton}
    Click Button    locator=${cadastrarButton}