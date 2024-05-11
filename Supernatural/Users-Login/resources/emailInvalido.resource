*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${EMAIL}              sysadmin@
${INVALID_EMAIL_MSG}  //p[@class='css-18xtib3'][contains(.,'Digite um email válido')]
${emailInput}         //input[contains(@type,'text')]
${senhaInput}         //input[contains(@type,'password')]
${cadastrarButton}    //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]


*** Keywords ***
Passo 1 - Abrir o navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Passo 7 - Fechar o navegador
    Close Browser

Passo 2 - Acessar a página de login qacoders academy
    Go To    url=${URL}

Passo 3 - Inserir email inválido
    Wait Until Element Is Visible    locator=${emailInput}
    Input Text    locator=${emailInput}    text=${EMAIL}

Passo 4 - Inserir senha
    Wait Until Element Is Visible    locator=${senhaInput}
    Input Password    locator=${senhaInput}    password=1234@Test

Passo 5 - Clicar em cadastrarButton
    Wait Until Element Is Visible    locator=${cadastrarButton}
    Click Button    locator=${cadastrarButton}

Passo 6 - Validar mensagem de erro
    Wait Until Element Is Visible    locator=${INVALID_EMAIL_MSG}    timeout=10s