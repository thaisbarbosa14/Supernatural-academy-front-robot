*** Settings ***
Resource    ../resources/salvar_cadastro_login_nao_funcional_recursos1.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Salvar Cadastro de login sem preencher todos os campos obrigatórios
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem de obrigatoriedade dos campos


    



