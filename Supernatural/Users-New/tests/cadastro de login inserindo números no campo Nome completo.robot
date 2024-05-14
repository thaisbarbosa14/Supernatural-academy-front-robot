*** Settings ***
Resource    ../resources/cadastro_login_nao_funcional_recursos5.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Cadastro de login inserindo números no campo Nome completo
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher todos os campos do formulário inserir no campo Nome Completo números
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem a respeito das inconsistência