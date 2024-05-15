*** Settings ***
Resource    ../resources/cancelar_cadastro_login_funcional_recursos1.robot
Test Setup     Abrir o navegador
Test Teardown  Fechar o navegador


*** Test Cases ***

Cenário de teste:Funcional- Cancelar Cadastro de login quando todos os campos obrigatórios estiverem preenchidos
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Inserir dados no formulário
    Verificar se o botão está habilitado
    Clicar no botão Cancelar
    
        
 
    

Cenário de teste: Funcional - Cancelar Cadastro de login quando nenhum dos campos obrigatórios estiverem preenchidos
    Realizar login com usuário administrador
    Clicar no menu Cadastros
    Clicar no menu Usuários
    Clicar no botão NOVO CADASTRO
    Verificar se o botão está habilitado
    Clicar no botão Cancelar sem ter preenchido dados nos campos obrigatórios
    
   



