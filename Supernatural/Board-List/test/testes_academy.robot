*** Settings ***
Resource  ../resources/testes_recursos_academy.resource
Test Setup  Abrir o Navegador
Test Teardown  Fechar o Navegador

*** Test Cases ***

Cenário de teste - Listar Diretorias
  Passo 1- Acessar a pagina de login Q.a Coders Academy
  Passo 2 - Digitar email do admin
  Passo 3 - Digitar senha do admin
  Passo 4 - Clicar em entrar
  Passo 5 - Clicar no Menu Cadastro
  Passo 6 - Clicar no SubMenu Diretorias
  Validar se foi direcionado para a Página de listagem de diretoria







  