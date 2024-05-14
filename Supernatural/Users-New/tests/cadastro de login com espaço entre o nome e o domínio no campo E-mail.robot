*** Settings ***
Resource   ../resources/cadastro_login_nao_funcional_recursos9.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - Validar cadastro de login com espaço entre o nome e o domínio no campo E-mail
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Inserir dados no formulário e no campo e-mail inserir um e-mail com com espaço entre o nome e o domínio
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem informando que o campo e-mail é inválido



    



