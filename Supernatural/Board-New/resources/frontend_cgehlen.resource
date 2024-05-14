*** Settings ***
Documentation  O objeivo deste arquivo é armazenar todos os recursos para os testes

*** Settings ***
Library  RequestsLibrary
Library  String
Library  Collections
Library  SeleniumLibrary
Library  OperatingSystem
#Library  FakerLibrary  

*** Variables ***
            
${EMAIL}                sysadmin@qacoders.com 
${PASSWORD}             1234@Test
${Diretoria}            Defalla 
${Diretoria50}          ErapraserumGenerateRandomString50ncgdieujhgfcvbnmk
${Diretoria51}          ErapraserumGenerateRandomString51mkjnhbgvfcjuhygtfr
${diretoria}            vaipopozuda
${DIRETORIA}            SUPERNATURAL
${SUCCESS_MESSAGE}      Cadastro realizado com sucesso.
${AVISO_MESSAGE}        Não é possível salvar esse registro. Diretoria já cadastrada no sistema.
${AVISO2_MESSAGE}       O campo diretoria pode ter no máximo 50 caracteres 
${AVISO3_MESSAGE}       O campo diretoria é obrigatório
${AVISO4_MESSAGE}       O campo 'diretoria' só pode conter letras e o caracter especial '&'
${AVISO5_MESSAGE}       Se você sair sem salvar, todos os dados serão perdidos. Deseja sair sem salvar?
*** Keywords ***
Abrir navegador e acessar site
    Open Browser    https://automacao.qacoders-academy.com.br/login    Chrome
    Maximize Browser Window 

Fazer login
    Input Text    id=email       ${EMAIL}
    Input Text    id=password    ${PASSWORD}
    Click Button  id=login 

Incluir diretoria e salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    #${DIRETORIA}  Sob nova direção  
    Input Text  id=boardName  ${Diretoria}
    Click Button  id=save
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]
    Close Browser 
    
Incluir diretoria já existente e salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${Diretoria}
    Click Button  id=save
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${AVISO_MESSAGE}')]
    Close Browser
      
Incluir nova Diretoria como nome contendo 50 caracteres e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${Diretoria50}
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')] 
    Close Browser

Incluir nova Diretoria com nome contendo 51 caracteres e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${Diretoria51}
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO2_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${AVISO2_MESSAGE}')]    
    Close Browser
Incluir nova Diretoria com nome contendo caracter & e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  Trio&DDiretorias
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    
    Close Browser
Incluir nova Diretoria com nome em letras maiúsculas e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${DIRETORIA}
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]
    Close Browser
Incluir nova Diretoria com nome em letras minúsculas e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${diretoria}
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${SUCCESS_MESSAGE}')]
    Close Browser
Deixar campo nome diretoria em branco e Salvar
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  ${EMPTY}  
    Click Button  id=save  
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO3_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${AVISO3_MESSAGE}')]
    Close Browser
Incluir nova Diretoria com nome contendo caracter % e Salvar    
    Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
    Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
    Click Element    xpath=//span[contains(.,'Diretorias')]
    Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
    Click Button  id=Novo Cadastro
    Wait Until Element Is Visible  //input[@id='boardName']
    Input Text  id=boardName  Trio%Diretoria
    Click Button  id=save  
    #Jeito que funciona
    #Wait Until Page Contains Element    xpath=//div[@class='MuiAlert-message css-1xsto0d']    timeout=10s
    #Page Should Contain Element    xpath=//div[@class='MuiAlert-message css-1xsto0d']        
    #o que deveria ser
    Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO4_MESSAGE}')]    timeout=10s
    Page Should Contain Element    xpath=//*[contains(text(), '${AVISO4_MESSAGE}')]
    Close Browser

Incluir nova Diretoria e Cancelar opção NÃO
   Wait Until Element Is Visible  id=Cadastros  timeout=10s
   Click Element    id=Cadastros
   Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
   Click Element    xpath=//span[contains(.,'Diretorias')]
   Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
   Click Button  id=Novo Cadastro
   Wait Until Element Is Visible  //input[@id='boardName']
   Input Text  id=boardName  ${Diretoria}
   Click Button  id=cancel  
   Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO5_MESSAGE}')]    timeout=10s
   Page Should Contain Element    xpath=//*[contains(text(), '${AVISO5_MESSAGE}')]
   Click Button  id=não    
   #aqui o user permanece no formulário preenchido
Incluir nova Diretoria e Cancelar opção SIM
   Wait Until Element Is Visible  id=Cadastros  timeout=10s
    Click Element    id=Cadastros
   Wait Until Element Is Visible  //span[contains(.,'Diretorias')]  timeout=10s
   Click Element    xpath=//span[contains(.,'Diretorias')]
   Wait Until Element Is Visible  //button[contains(@id,'Novo Cadastro')]
   Click Button  id=Novo Cadastro
   Wait Until Element Is Visible  //input[@id='boardName']
   Input Text  id=boardName  ${Diretoria}
   Click Button  id=cancel  
   Wait Until Page Contains Element    xpath=//*[contains(text(), '${AVISO5_MESSAGE}')]    timeout=10s
   Page Should Contain Element    xpath=//*[contains(text(), '${AVISO5_MESSAGE}')]
   Click Button  id=sim    
   Wait Until Element Is Visible  //span[contains(.,'Cadastros')]  timeout=10s
   Close Browser