*** Settings ***
Resource  ../resources//testes_recursos_qacoders.resource
Test Setup  Abrir o navegador
Test Teardown  Fechar o navegador

*** Test Cases ***

Cenário de teste: Listar usuarios
  Passo 1 - Acessar a pagina de login automacao qacoders
  Passo 2 - Digitar um email de usuário administrativo
  Passo 3 - Digitar uma senha
  Passo 4 - clicar em entrar
  Passo 5 - clicar em cadastros
  Passo 6 - clicar em usuários
  Passo 7 - clicar na seta de rolagem para avançar a lista
  Passo 8 - clicar na seta de rolagem para retroceder a lista
  Passo 9 - clicar na seta de rolagem final para chegar ao fim da lista
  Passo 10 - clicar na seta de rolagem inicial para retornar ao começo

