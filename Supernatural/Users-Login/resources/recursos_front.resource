*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${EMAIL}              sysadmin@qacoders.com
${SENHA_valida}       1234@Test
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${cadastrarButton}    //button[contains(.,'Entrar')]
${homeElement}        id:Cadastros


*** Keywords ***
Passo 1 - Abrir o Navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Passo 2 - Acessar a página de login qacoders academy
    Go To    ${URL}
Passo 3 - Inserir email correto
    Wait Until Element Is Visible    ${emailInput}
    Input Text    ${emailInput}    ${EMAIL}

Passo 4 - Inserir senha correta
    Wait Until Element Is Visible    ${senhaInput}
    Input Password    ${senhaInput}    ${SENHA_valida}

Passo 5 - Clicar em cadastrarButton
    Wait Until Element Is Visible    ${cadastrarButton}
    Click Button    ${cadastrarButton}

Passo 6 - Validar redirecionamento para a página Home
    Wait Until Element Is Visible    locator=${homeElement}    timeout=10s


Passo 7 - Fechar o navegador
    Close Browser