*** Settings ***
Resource    ../resources/cancelar_cadastro_login_funcional_recursos2.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***

Cenário de teste:Funcional- Cancelar Cadastro de login quando apenas um campo obrigatórios estiver preenchido
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Inserir dados somente no campo Nome Completo do formulário
    Verificar se o botão está habilitado
    Clicar no botão Cancelar
  
        


