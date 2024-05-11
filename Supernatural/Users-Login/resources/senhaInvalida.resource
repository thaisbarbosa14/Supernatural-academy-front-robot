*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${EMAIL}              sysadmin@qacoders.com
${SENHA_INVALIDA}     1234
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${cadastrarButton}    //button[contains(.,'Entrar')]



*** Keywords ***
Passo 1 - Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Passo 2 - Acessar a página de login qacoders academy
    Go To    ${URL}
Passo 3 - Inserir email correto
    Wait Until Element Is Visible    ${emailInput}
    Input Text    ${emailInput}    ${EMAIL}

Passo 4 - Inserir senha inválida
    Wait Until Element Is Visible    ${senhaInput}
    Input Password    ${senhaInput}    ${SENHA_INVALIDA}

Passo 5 - Clicar em cadastrarButton
    Wait Until Element Is Visible    ${cadastrarButton}
    Click Button    ${cadastrarButton}

Passo 6 - Capturar screenshot se mensagem de erro de senha inválida aparecer
    Capture Page Screenshot

Passo 7 - Fechar o navegador
    Close Browser