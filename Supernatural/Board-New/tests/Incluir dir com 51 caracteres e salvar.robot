*** Settings ***

Resource    ../resources/frontend_cgehlen.resource

*** Test Cases ***
Cenário 4: Incluir nova Diretoria como nome contendo 51 caracteres e Salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome contendo 51 caracteres e Salvar