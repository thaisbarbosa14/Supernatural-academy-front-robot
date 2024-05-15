*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                    https://automacao.qacoders-academy.com.br/login
${campoEmail}             //input[contains(@type,'text')]
${campoPassword}          //input[contains(@type,'password')]
${entrarButton}           //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${cadastrosLink}          //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${usuariosLink}           //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Usuários')]
${setaDeRolagenAvança}    (//button[contains(@class,'css-kab9pu')])[1]
${setaDeRolagemRetrocede}  //button[contains(@id,'backButton')]
${setaDeRlagemFinal}       (//button[contains(@class,'css-kab9pu')])[2]
${setaDeRolagemInicio}     //button[contains(@id,'firstIndexButton')]



*** Keywords ***
Abrir o navegador
  Open Browser  browser=chrome 
  Maximize Browser Window
Fechar o navegador
    Close Browser
Passo 1 - Acessar a pagina de login automacao qacoders
  Go To    url=${URL}
Passo 2 - Digitar um email de usuário administrativo
  Wait Until Element Is Visible    locator=${campoEmail}   
  Input Text                       locator=${campoEmail}  text=sysadmin@qacoders.com
  Sleep    2s 

Passo 3 - Digitar uma senha
  Wait Until Element Is Visible    locator=${campoPassword}
  Input Password                   locator=${campoPassword}          password=1234@Test
  Sleep    2s

Passo 4 - clicar em entrar
  Wait Until Element Is Visible    locator=${entrarButton} 
  Click Button                     locator=${entrarButton}
  Sleep    2s

Passo 5 - clicar em cadastros
  Wait Until Element Is Visible    locator=${cadastrosLink}
  Click Element                    locator=${cadastrosLink}
  Sleep    2s

Passo 6 - clicar em usuários
  Wait Until Element Is Visible    locator=${usuariosLink}
  Click Element                    locator=${usuariosLink}
  Sleep    3s

Passo 7 - clicar na seta de rolagem para avançar a lista     
  Wait Until Element Is Visible    locator=${setaDeRolagenAvança}
  Click Element                    locator=${setaDeRolagenAvança}
  Sleep    3s

Passo 8 - clicar na seta de rolagem para retroceder a lista
  wait Until Element Is Visible    locator=${setaDeRolagemRetrocede}
  Click Element                    locator=${setaDeRolagemRetrocede}
  Sleep    3s
  
Passo 9 - clicar na seta de rolagem final para chegar ao fim da lista
  wait Until Element Is Visible    locator=${setaDeRlagemFinal}
  Click Element                    locator=${setaDeRlagemFinal}
  Sleep    3s

Passo 10 - clicar na seta de rolagem inicial para retornar ao começo
  wait Until Element Is Visible    locator=${setaDeRolagemInicio}
  Click Element                    locator=${setaDeRolagemInicio}
  Sleep    3s
