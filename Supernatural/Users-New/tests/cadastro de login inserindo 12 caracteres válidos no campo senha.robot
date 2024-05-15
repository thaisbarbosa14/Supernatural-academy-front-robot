*** Settings ***
Resource   ../resources/cadastro_login_funcional_recursos13.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***
Cenário de teste: Funcional - Validar cadastro de login inserindo 12 caracteres válidos no campo senha
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Preencher os dados no formulário inserindo 12 caracteres válidos no campo senha
    Verificar se o botão está habilitado
    Clicar no botão Salvar Novo
   




    



