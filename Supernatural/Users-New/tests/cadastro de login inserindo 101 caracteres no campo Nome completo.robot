*** Settings ***
Resource    ../resources/cadastro_login_nao_funcional_recursos4.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Cadastro de login inserindo 101 caracteres no campo Nome completo
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher todos os campos do formulário e inserir no campo Nome Completo um nome que contenha 101 caracteres de letras
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem a respeito das inconsistência