*** Settings ***
Resource    ../resources/esqueciMinhaSenha.resource

*** Variables ***


*** Test Cases ***
Teste de clique no link "Esqueci minha senha"
   Passo 1 - Abrir o Navegador
   Passo 2 - Verifica se contém o elemento Esqueci minha Senha 
   Passo 3 - Clica no elemento Esqueci minha senha
   Passo 4 - Fecha o Navegador