*** Settings ***
Resource   ../resources/cadastro_login_funcional_recursos1.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Funcional - Novo cadastro de login com sucesso
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Inserir dados no formulário
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo


    



