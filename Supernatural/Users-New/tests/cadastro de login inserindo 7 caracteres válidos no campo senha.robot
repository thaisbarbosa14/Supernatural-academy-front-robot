*** Settings ***
Resource   ../resources/cadastro_login_nao_funcional_recursos12.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Validar cadastro de login inserindo 7 caracteres válidos no campo senha
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher os dados no formulário inserindo 7 caracteres válidos no campo senha
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem referente a inconsistência




    



