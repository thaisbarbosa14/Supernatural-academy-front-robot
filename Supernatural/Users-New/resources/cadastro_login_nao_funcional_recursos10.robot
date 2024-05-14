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
${CANCELAR}               id=cancel
${LOGOUT}                 class=css-1nvbq2d


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
       Wait Until Element Is Visible    ${SELETOR_MENUS_CADASTROS}    10s
       sleep  3s
       Click Element                    ${SELETOR_MENUS_CADASTROS} 

Clicar no menu Usuários
      Element Should Be Visible      ${MENU_USUARIOS}    
      Click Element                  ${MENU_USUARIOS}


Clicar no botão NOVO CADASTRO
     Wait Until Element Is Visible  ${BOTAO_NOVO_CADASTRO}    5s
     sleep  5
     Click Button    ${BOTAO_NOVO_CADASTRO}
     
    
Preencher os dados no formulário sem inserir dados no campo Senha
    Wait Until Element Is Visible    ${NOME_COMPLETO}     10s
    ${PrimeiroNome}    FakerLibrary.First Name
    ${SegundoNome}     FakerLibrary.Last Name
    Input Text   ${NOME_COMPLETO}    ${PrimeiroNome} ${SegundoNome} 
    sleep  1s


    ${NovoCadastroEmail}  FakerLibrary.Email
    Input Text    ${EMAIL_NOVO_CADASTRO}     ${NovoCadastroEmail}
    sleep  1s

    Input Text    ${PERFIL_ACESSO}       ADMIN
    sleep  1s

    ${GeraCPF}     Random Number    digits=11
    Input Text     ${CPF}       ${GeraCPF}  
    sleep  1s

    Input Text    ${CONFIRME_SENHA}       1234@Test
    sleep  10s


Verificar se o botão está habilitado
    Element Should Be Enabled      ${SALVAR} 
Clicar no botão Salvar Novo
    Wait Until Element Is Visible    ${SALVAR} 
    Element Should Be Enabled      ${SALVAR} 
    Click Element    ${SALVAR}
    sleep  5s
    

Verificar se será apresentada a mensagem informando que o campo senha é obrigatório
    Page Should Contain    O campo senha é obrigatório
    Capture Element Screenshot    //div[@class='MuiAlert-message css-1xsto0d'][contains(.,'O campo senha é obrigatório')]  

   

    



    







