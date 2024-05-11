*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${EMAIL}              sysadmin@qacoders.com
${PASSWORD}           
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${cadastrarButton}    //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${senhaObrigatorioMessage}  //p[@class='css-18xtib3'][contains(.,'A senha é obrigatória')]


*** Keywords ***
Passo 1 - Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Passo 7 - Fechar o navegador
    Close Browser

Passo 2 - Acessar a página de login qacoders academy
    Go To    url=${URL}

Passo 3 - Inserir email
    Wait Until Element Is Visible    locator=${emailInput}
    Input Text    locator=${emailInput}    text=${EMAIL}

Passo 4 - Deixar campo de senha em branco
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Text    locator=${senhaInput}    text=${PASSWORD}

Passo 5 - Clicar em cadastrarButton
    Wait Until Element Is Visible    locator=${cadastrarButton}
    Click Button                     locator=${cadastrarButton}

Passo 6 - Validar mensagem "A senha é obrigatória"
    Wait Until Element Is Visible    locator=${senhaObrigatorioMessage}
    ${message_text}=    Get Text    locator=${senhaObrigatorioMessage}
    Should Be Equal    ${message_text}    A senha é obrigatória