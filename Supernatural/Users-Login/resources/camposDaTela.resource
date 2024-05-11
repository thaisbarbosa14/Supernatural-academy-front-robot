*** Settings ***
Documentation     Validar elementos na tela de login
Library           SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${entrarButton}       //button[contains(@id,'login')]
${esqueciSenhaLink}   //a[@class='css-rpkgv3'][contains(.,'Esqueci minha senha')]
${qaCodersLogo}       //svg[contains(@viewBox,'0 0 281 26')]



*** Keywords ***
Passo 1 - Abrir o Navegador
    Open Browser    ${URL}    browser=chrome
    Maximize Browser Window

Passo 2 - Acessar a Página de Login
    Go To    ${URL}

Passo 3 - Validar Logo Qa.Coders Academy
    Wait Until Element Is Not Visible   ${qaCodersLogo}

Passo 4 - Validar Campo Email
    Wait Until Element Is Visible    ${emailInput}

Passo 5 - Validar Campo Senha
    Wait Until Element Is Visible    ${senhaInput}

Passo 6 - Validar Botão Entrar
    Wait Until Element Is Visible    ${entrarButton}

Passo 7 - Validar Link Esqueci Minha Senha
    Wait Until Element Is Visible    ${esqueciSenhaLink}

Passo 8 - Fechar o Navegador
    Close Browser