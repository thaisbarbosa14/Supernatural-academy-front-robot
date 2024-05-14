*** Settings ***
Resource    ../resources/cadastro_login_nao_funcional_recursos16.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Validar cadastro de login inserindo no campo Confirmar Senha uma senha diferente do campo Senha
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher os dados no formulário e inserir no campo Confirmar Senha uma senha diferente do campo Senha
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem informando que as senhas não conferem




    



