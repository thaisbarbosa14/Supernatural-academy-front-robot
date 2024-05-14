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
${MENSAGEM_VALIDACAO}      O nome completo deve ter no máximo 100 caracteres.




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
        sleep  2s
Clicar no menu Usuários
      Wait Until Element Is Visible    ${MENU_USUARIOS}  
      Click Element                    ${MENU_USUARIOS}
       sleep  2s  

Clicar no botão NOVO CADASTRO
     Wait Until Element Is Visible  ${BOTAO_NOVO_CADASTRO}  
     sleep  5  
     Click Button    ${BOTAO_NOVO_CADASTRO}
     sleep  2s  
    
Preencher todos os campos do formulário e inserir no campo Nome Completo um nome que contenha 101 caracteres de letras
    Wait Until Element Is Visible    ${NOME_COMPLETO}     10s

    Input Text   ${NOME_COMPLETO}   WearandirtrrrrrgggggggggrrrrrrmottaTomaz WearandirtyyyyyyyyyyyyyyyyyyggggggggggggggggggyyySoaresTomaz
    sleep  1s

    ${NovoCadastroEmail}  FakerLibrary.Email
    Input Text    ${EMAIL_NOVO_CADASTRO}     ${NovoCadastroEmail}
    sleep  1s

    Input Text    ${PERFIL_ACESSO}       ADMIN
    sleep  1s

    ${GeraCPF}     Random Number    digits=11
    Input Text     ${CPF}       ${GeraCPF}  
    sleep  1s

    ${NovaSenha}   Generate Random String  length=6
    Input Text    ${SENHA_NOVO_CADASTRO}     ${NovaSenha}@1Est
    Log    Senha Gerada: ${NovaSenha}
    sleep  1s

    Input Text    ${CONFIRME_SENHA}       ${NovaSenha}@1Est
    sleep  10s


Verificar se o botão está habilitado
    Element Should Be Enabled      ${SALVAR} 
Clicar no botão Salvar Novo
    Wait Until Element Is Visible    ${SALVAR} 
    Element Should Be Enabled      ${SALVAR} 
    Click Element    ${SALVAR}
    #Verificar se será apresentada a mensagem Registro realizado com sucesso - Não contem na funcionalidade
    #Page Should Contain    Registro realizado com sucesso
    sleep  5s

    
Verificar se será apresentada a mensagem a respeito das inconsistência
    ${MensagemValidacao}  Get Text   //div[@class='MuiAlert-message css-1xsto0d']
    Should Be Equal    ${MENSAGEM_VALIDACAO}     ${MensagemValidacao}
    sleep  5s
    Capture Page Screenshot
    

    



    

    







