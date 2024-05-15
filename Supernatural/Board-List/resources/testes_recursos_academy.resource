*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                    https://automacao.qacoders-academy.com.br/login
${emailInput}             //input[contains(@type,'text')]
${senhaInput}             //input[contains(@type,'password')]
${entrarButtom}           //button[contains(.,'Entrar')]
${cadastroMenu}           id:Cadastros
${diretoriaSubmenu}       //span[contains(.,'Diretorias')]
${urlDiretoria}           https://automacao.qacoders-academy.com.br/board
${nomeDiretoria}          //div[@class='css-wgzttu'][contains(.,'Nome da Diretoria')]
${nomeCodigoDiretoria}    //div[@class='css-wgzttu'][contains(.,'Codigo da Diretoria')]

*** Keywords ***
Abrir o Navegador
  Open Browser  browser=chrome
  Maximize Browser Window
Fechar o Navegador
  Close Browser
Passo 1- Acessar a pagina de login Q.a Coders Academy
  Go To  url=${URL}
Passo 2 - Digitar email do admin
  Wait Until Element Is Visible    locator=${emailInput}
  Input Text                       locator=${emailInput}    text=sysadmin@qacoders.com
Passo 3 - Digitar senha do admin
  Wait Until Element Is Visible    locator=${senhaInput}
  Input Password                   locator=${senhaInput}    password=1234@Test
Passo 4 - Clicar em entrar
  Wait Until Element Is Visible    locator=${entrarButtom}
  Click Button                 locator=${entrarButtom}

Passo 5 - Clicar no Menu Cadastro
  Wait Until Element Is Visible    locator=${cadastroMenu}
  Click Element                 locator=${cadastroMenu}

Passo 6 - Clicar no SubMenu Diretorias
  Wait Until Element Is Visible    locator=${diretoriaSubmenu}
  Sleep  3s
  Click Element                 locator=${diretoriaSubmenu}
  Sleep  3s

Validar se foi direcionado para a Página de listagem de diretoria
  Location Should Be    url=${urlDiretoria}

