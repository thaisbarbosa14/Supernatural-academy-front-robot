*** Settings ***
Resource        ../resources/testes_recursos.resource
Test Setup      Abrir navegador
Test Teardown   Fechar navegador


*** Test Cases ***

Cenário de teste: Realizar login com sucesso
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar

Cenário de teste: Tentativa de edição informando apenas números
    Passo - Criar dados aleatórios com números
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Preencher o campo de Nome da Diretoria com números
    Passo - Clicar na botão Salvar
    Passo - Verificar mensagem de erro para campo 'diretoria' com números

Cenário de teste: Tentativa de edição informando caracteres especiais inválidos
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Preencher campo Nome Diretoria com caracteres especiais inválidos
    Passo - Clicar na botão Salvar
    Passo - Verificar mensagem de erro para caracteres especiais inválidos


Cenário de teste: Tentativa de edição informando mais de 50 caracteres
    Passo - Criar dados aleatórios com 52 caracteres
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Preencher campo Nome Diretoria com mais de 50 caracteres
    Passo - Clicar na botão Salvar
    Passo - Verificar mensagem de retorno para diretoria com mais de 50 caracteres

Cenário de teste: Realizando edição de departamento com sucesso
    Passo - Criar dados aleatórios com apenas letras
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Preencher campo Nome Diretoria com valor valido
    Passo - Clicar na botão Salvar
    Passo - Clicar na opção Editar
    Passo - Confirmar se a edição foi realizada com sucesso 
    
Cenário de teste: Editando informando caractere especial '&'
    Passo - Criar dados aleatórios com caractere especial '&'
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Preencher campo Nome Diretoria com palavra randomica + &
    Passo - Clicar na botão Salvar
    Passo - Clicar na opção Editar
    Passo - Confirmar se a edição foi realizada com sucesso com caractere &
  

Cenário de teste: Tentativa de edição informando nome de diretoria Já existente
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Obter o valor de alguma diretoria já cadastrada
    Passo - Clicar na opção Editar
    Passo - Preencher campo Nome Diretoria com valor já existente
    Passo - Clicar na botão Salvar
    Passo - Confirmar mensagem de retorno - duplicidade

Cenário de teste: Tentativa de edição com campo vazio
    Passo - Acessar a página de Login
    Passo - Preencher campo e-mail
    Passo - Preencher campo senha
    Passo - Clicar no botão Entrar
    Passo - Acessar a página Diretorias
    Passo - Clicar na opção Editar
    Passo - Deixar o campo vazio
    Passo - Clicar na botão Salvar
    Passo - Confirmar mensagem de retorno - obrigatório



    


