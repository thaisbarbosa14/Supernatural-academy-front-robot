*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                https://automacao.qacoders-academy.com.br/login
${EMAIL}              # deixe vazio para simular que nenhum e-mail foi inserido
${emailInput}         //input[contains(@type,'text')]
${cadastrarButton}    //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${emailObrigatorioMessage}  //p[@class='css-18xtib3'][contains(.,'O email é obrigatório')]

*** Keywords ***
Passo 1 - Abrir o navegador
   Open Browser    browser=chrome
   Maximize Browser Window

Passo 6 - Fechar o navegador
   Close Browser

Passo 2 - Acessar a página de login qacoders academy
   Go To    url=${URL}

Passo 3 - Deixar campo de e-mail em branco
   Wait Until Element Is Visible    locator=${emailInput}
   Input Text    locator=${emailInput}    text=${EMAIL}

Passo 4 - Clicar em cadastrarButton
   Wait Until Element Is Visible    locator=${cadastrarButton}
   Click Button                     locator=${cadastrarButton}

Passo 5 - Validar mensagem "O email é obrigatório"
   Wait Until Element Is Visible    locator=${emailObrigatorioMessage}
   ${message_text}=    Get Text    locator=${emailObrigatorioMessage}
   Should Be Equal    ${message_text}    O email é obrigatório