*** Settings ***
Resource   ../resources/cadastro_login_nao_funcional_recursos8.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Não Funcional - cadastro de login com formatação de e-mail diferente do válido
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Inserir dados no formulário e no campo e-mail inserir um e-mail com formatação diferente do padrão
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
    Verificar se será apresentada a mensagem informando que o campo e-mail é obrigatório


    



