*** Settings ***
Resource   ../resources/cadastro_login_nao_funcional_recursos11.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Validar cadastro de login inserindo 1 caractere no campo Senha
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher os dados no formulário inserindo 1 caractere no campo Senha
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem referente a inconsistência




    



