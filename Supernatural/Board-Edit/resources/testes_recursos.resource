*** Settings ***

Library    SeleniumLibrary
Library    String

*** Variables ***
${URL_LOGIN}                    https://automacao.qacoders-academy.com.br/login
${email_Input}                  //input[contains(@type,'text')]
${password_Input}               //input[contains(@type,'password')]
${entrar_button}                //button[@class='MuiButtonBase-root MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium MuiButton-root MuiButton-contained MuiButton-containedOrange MuiButton-sizeMedium MuiButton-containedSizeMedium css-ojf4v2'][contains(.,'Entrar')]
${menu_cadastros}               //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Cadastros')]
${menu_diretorias}              //span[@class='MuiTypography-root MuiTypography-body1 MuiListItemText-primary css-yb0lig'][contains(.,'Diretorias')]
${editar_button}                (//button[@name='editar'][contains(.,'Editar')])[1]
${editar_input}                 //input[contains(@class,'MuiInputBase-input MuiInput-input css-mnn31')]
${salvar_edit_button}           //button[@type='submit'][contains(.,'SALVAR ALTERAÇOES')]
${titulo}                       //h4[contains(.,'Dados da Diretoria')]
${button_cancel}                //button[@type='button'][contains(.,'CANCELAR')]
${number_alert}                 //div[contains(@class,'MuiPaper-root MuiPaper-elevation MuiPaper-rounded MuiPaper-elevation0 MuiAlert-root MuiAlert-standardError MuiAlert-standard css-laiely')]
${special_alert}                //div[contains(@class,'MuiAlert-message css-1xsto0d')]
${max_character_alert}          //p[@class='css-bbipig']
${required_alert}               //p[@class='css-bbipig']

#mensagens de erros
${mensagem_error_numeros}       O campo 'diretoria' só pode conter letras e o caractere especial '&'.
${mensagem_error_51letras}      O campo diretoria pode ter no máximo 50 caracteres
${mensagem_error_duplicidade}   Não é possível salvar esse registro. Diretoria já cadastrada no sistema.
${mensagem_error_obrigatorio}   O campo diretoria é obrigatório



*** Keywords ***

# Massa de dados - Valores randômicos

Passo - Criar dados aleatórios com apenas letras
    ${palavra_randomica}    Generate Random String   length=8     chars=[LETTERS]
    ${palavra_randomica_lowercase}    Convert To Lower Case       ${palavra_randomica} 
    Set Test Variable    ${BOARD_RANDOM}                          ${palavra_randomica_lowercase}
    Log    ${BOARD_RANDOM}

Passo - Criar dados aleatórios com números
    ${palavra_randomica2}    Generate Random String   length=8    chars=[NUMBERS]
    ${palavra_randomica_lowercase2}    Convert To Lower Case      ${palavra_randomica2} 
    Set Test Variable    ${BOARD_RANDOM_NUMBER}                   ${palavra_randomica_lowercase2}
    Log    ${BOARD_RANDOM_NUMBER}

Passo - Criar dados aleatórios com 52 caracteres
    ${palavra_randomica3}    Generate Random String   length=52    chars=[LETTERS]
    ${palavra_randomica_lowercase3}    Convert To Lower Case       ${palavra_randomica3} 
    Set Test Variable    ${BOARD_RANDOM_52}                        ${palavra_randomica_lowercase3}
    Log    ${BOARD_RANDOM_52}

Passo - Criar dados aleatórios com 1 caractere
    ${palavra_randomica4}    Generate Random String   length=1     chars=[LETTERS]
    ${palavra_randomica_lowercase4}    Convert To Lower Case       ${palavra_randomica4} 
    Set Test Variable    ${BOARD_RANDOM_1}                         ${palavra_randomica_lowercase4}
    Log    ${BOARD_RANDOM_1}

Passo - Criar dados aleatórios com caractere especial '&'
    ${palavra_randomica5}    Generate Random String   length=5     chars=[LETTERS]
    ${palavra_randomica_lowercase5}    Convert To Lower Case       ${palavra_randomica5} 
    Set Test Variable    ${BOARD_RANDOM_&}                         ${palavra_randomica_lowercase5}&
    Log    ${BOARD_RANDOM_&}


# Passos gerados para os testes
Abrir navegador
    Open Browser    browser=chrome
    Maximize Browser Window

Fechar navegador
    Close Browser


Passo - Acessar a página de Login
    Go To                                url=${URL_LOGIN}
 
Passo - Preencher campo e-mail
    Wait Until Element Is Visible        locator=${email_Input}
    Input Text                           locator=${email_Input}        text=sysadmin@qacoders.com
    

Passo - Preencher campo senha
    Wait Until Element Is Visible        locator=${password_Input}
    Input Password                       locator=${password_Input}         password=1234@Test
    

Passo - Clicar no botão Entrar
    Wait Until Element Is Visible        locator=${entrar_button}
    Click Button                         locator=${entrar_button}  
    Sleep    3s     

Passo - Acessar a página Diretorias
    Wait Until Element Is Visible        locator=${menu_cadastros}
    Click Element                        locator=${menu_cadastros}
    sleep   3s
    Wait Until Element Is Visible        locator=${menu_diretorias}
    Click Element                        locator=${menu_diretorias}
    Sleep    3s 

Passo - Clicar na opção Editar
    Wait Until Element Is Visible        locator=${editar_button}
    Click Button                         locator=${editar_button}
    Sleep    3s 

Passo - Clicar na botão Salvar
    Wait Until Element Is Visible        locator=${salvar_edit_button}
    Click Button                         locator=${salvar_edit_button}
    Sleep    5s 

Passo - Preencher o campo de Nome da Diretoria com números
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}            text=${BOARD_RANDOM_NUMBER}


Passo - Verificar mensagem de erro para campo 'diretoria' com números
    ${mensagem}    Get Text              ${number_alert}
    Should Be Equal As Strings           ${mensagem}                        ${mensagem_error_numeros}
    

Passo - Preencher campo Nome Diretoria com caracteres especiais inválidos
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}            text=!@!#!
    Sleep    5s

Passo - Verificar mensagem de erro para caracteres especiais inválidos
    ${mensagem}    Get Text               ${special_alert}
    Should Be Equal As Strings            ${mensagem}                        ${mensagem_error_numeros}
   

Passo - Preencher campo Nome Diretoria com mais de 50 caracteres 
    Passo - Preencher campo Nome Diretoria com caracteres especiais inválidos
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}             text=${BOARD_RANDOM_52}
    Sleep    3s 

Passo - Verificar mensagem de retorno para diretoria com mais de 50 caracteres
    ${mensagem}    Get Text             ${max_character_alert}
    Should Be Equal As Strings          ${mensagem}                          ${mensagem_error_51letras}
  


Passo - Preencher campo Nome Diretoria com valor valido
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}             text=${BOARD_RANDOM}
    Log    ${BOARD_RANDOM}
    Sleep    3s

Passo - Confirmar se a edição foi realizada com sucesso 
    ${valor_atual}=    Get Value          ${editar_input}     # Obtém o valor atual do campo de entrada
    Log                                   ${valor_atual}      # Exibe o valor atual do campo de entrada
    Should Be Equal As Strings            ${valor_atual}      ${BOARD_RANDOM}
    Sleep    5s


Passo - Preencher campo Nome Diretoria com palavra randomica + &
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}       text=${BOARD_RANDOM_&}
    Sleep    5s 

Passo - Confirmar se a edição foi realizada com sucesso com caractere &
    ${valor_atual}=    Get Value                   ${editar_input}     #Obtém o valor atual do campo de entrada
    Should Be Equal As Strings                     ${valor_atual}      ${BOARD_RANDOM_&}
    

Passo - Obter o valor de alguma diretoria já cadastrada
    ${diretoria_duplicidade}=    Get Text    xpath=(//ul[@class='css-18psgb0']/li[2]//p)[1]
    Log    ${diretoria_duplicidade}    # Exibe o valor atual do campo de entrada
    Set Global Variable    ${DIRETORIA_DUPLICIDADE}


Passo - Preencher campo Nome Diretoria com valor já existente
    Wait Until Element Is Visible        ${editar_input}
    Clear Element Text                   ${editar_input}
    Input Text                           locator=${editar_input}       text=${DIRETORIA_DUPLICIDADE}
    Sleep    5s 

  
 Passo - Confirmar mensagem de retorno - duplicidade
    ${mensagem}    Get Text             //div[@class='MuiAlert-message css-1xsto0d']
    Should Be Equal As Strings          ${mensagem}                          ${mensagem_error_duplicidade}
   
Passo - Deixar o campo vazio
    Wait Until Element Is Visible        ${editar_input}
    Click Element                        locator=${editar_input}
    Clear Element Text                   ${editar_input}
    Click Element                        locator=${editar_input}
    Press Keys                           ${editar_input}    SPACE
    Press Keys                           ${editar_input}    BACKSPACE
    Sleep    5s 

Passo - Confirmar mensagem de retorno - obrigatório
    ${mensagem}    Get Text             ${required_alert}
    Should Be Equal As Strings          ${mensagem}                          ${mensagem_error_obrigatorio}
    Sleep    5s 

Passo - Obter o valor da diretoria antes de abrir para edição
    ${diretoria_valor}=    Get Text    xpath=(//ul[@class='css-18psgb0']/li[1]//p)[1]
    Log    ${diretoria_valor}    # Exibe o valor atual do campo de entrada
    Set Global Variable    ${DIRETORIA_VALOR}



