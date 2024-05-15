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
${SALVAR}                 id=save


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
       sleep  3s
       Click Element                    ${SELETOR_MENUS_CADASTROS} 

Clicar no menu Usuários
      Element Should Be Visible      ${MENU_USUARIOS}    
      Click Element                  ${MENU_USUARIOS}
      sleep  2s

Clicar no botão NOVO CADASTRO
     Wait Until Element Is Visible  ${BOTAO_NOVO_CADASTRO}  
     Click Button    ${BOTAO_NOVO_CADASTRO}
      sleep  2s
    
Inserir dados no formulário e no campo e-mail inserir um e-mail com com espaço entre o nome e o domínio
    Wait Until Element Is Visible    ${NOME_COMPLETO}  
    ${PrimeiroNome}    FakerLibrary.First Name
    ${SegundoNome}     FakerLibrary.Last Name
    Input Text   ${NOME_COMPLETO}    ${PrimeiroNome} ${SegundoNome} 


    Input Text    ${EMAIL_NOVO_CADASTRO}     teste @dominio.com.br

    Input Text    ${PERFIL_ACESSO}       ADMIN
    
    ${GeraCPF}     Random Number    digits=11
    Input Text     ${CPF}       ${GeraCPF}  
    
    ${NovaSenha}   Generate Random String  length=6
    Input Text    ${SENHA_NOVO_CADASTRO}     ${NovaSenha}@1Est
    Log    Senha Gerada: ${NovaSenha}
    
    Input Text    ${CONFIRME_SENHA}       ${NovaSenha}@1Est
    



Verificar se o botão está habilitado
    Element Should Be Enabled      ${SALVAR} 
Clicar no botão Salvar Novo
    Wait Until Element Is Visible    ${SALVAR} 
    Element Should Be Enabled      ${SALVAR} 
    Click Element    ${SALVAR}
    sleep  2s

Verificar se será apresentada a mensagem informando que o campo e-mail é inválido
    Page Should Contain    Email inválido
    Capture Element Screenshot    class=css-bbipig  
    
    

    


    

    







