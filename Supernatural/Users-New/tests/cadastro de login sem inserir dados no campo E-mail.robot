*** Settings ***
Resource    ../resources/cadastro_login_nao_funcional_recursos7.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Cadastro de login sem inserir dados no campo E-mail
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher todos os campos do formulário exceto o campo E-mail
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem informando que o campo e-mail é obrigatório


