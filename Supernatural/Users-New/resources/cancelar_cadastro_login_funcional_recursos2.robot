*** Settings ***
Library   SeleniumLibrary
Library   FakerLibrary    locale=pt_BR
Library    String

     


*** Variables ***

${BROWSER}                Chrome
${URL}                    https://automacao.qacoders-academy.com.br/login   
${EMAIL}                    id=email
${SENHA}                    id=password
${ENTRAR}                   id=login
${SELETOR_MENUS_CADASTROS}  id=Cadastros
${MENU_USUARIOS}            id=Usuários
${BOTAO_NOVO_CADASTRO}      id=Novo Cadastro
${NOME_COMPLETO}           id=fullName
${EMAIL_NOVO_CADASTRO}     id=mail
${PERFIL_ACESSO}           id=accessProfile
${CPF}                    id=cpf
${SENHA_NOVO_CADASTRO}     //input[contains(@type,'password')]
${CONFIRME_SENHA}         id:confirmPassword
${CANCELAR}               id=cancel  



*** Keywords ***
Abrir o navegador
    Open Browser      ${URL}  ${BROWSER}  
    Maximize Browser Window

Fechar o navegador
    Close Browser

Realizar login com usuário administrador
    Element Should Be Visible    ${EMAIL}
    Input Text       ${EMAIL}       sysadmin@qacoders.com
    
    Element Should Be Visible    ${SENHA}
    Input Text       ${SENHA}        1234@Test

    Element Should Be Visible    ${ENTRAR}
    Click Button    ${ENTRAR}


Clicar no menu Cadastros
       Wait Until Element Is Visible    ${SELETOR_MENUS_CADASTROS} 
       Click Element                    ${SELETOR_MENUS_CADASTROS} 
        sleep  3s
Clicar no menu Usuários
      Element Should Be Visible      ${MENU_USUARIOS}    
      Click Element                  ${MENU_USUARIOS}
      sleep  1s
 
Clicar no botão NOVO CADASTRO
     Wait Until Element Is Visible  ${BOTAO_NOVO_CADASTRO} 
     Click Button    ${BOTAO_NOVO_CADASTRO}
     sleep  2s
     
    
Inserir dados somente no campo Nome Completo do formulário
    Wait Until Element Is Visible    ${NOME_COMPLETO}  
    ${PrimeiroNome}    FakerLibrary.First Name
    ${SegundoNome}     FakerLibrary.Last Name
    Input Text   ${NOME_COMPLETO}    ${PrimeiroNome} ${SegundoNome} 


Verificar se o botão está habilitado
    Element Should Be Enabled    ${CANCELAR} 
   
Clicar no botão Cancelar
    Wait Until Element Is Visible   ${CANCELAR}   
    Click Button    ${CANCELAR}  
    Capture Page Screenshot
    sleep  2s  

    

    







