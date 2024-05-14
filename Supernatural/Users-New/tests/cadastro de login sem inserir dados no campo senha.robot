*** Settings ***
Resource   ../resources/cadastro_login_nao_funcional_recursos10.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Funcional - Validar cadastro de login sem inserir dados no campo senha
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher os dados no formulário sem inserir dados no campo Senha
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem informando que o campo senha é obrigatório




    



