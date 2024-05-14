*** Settings ***

Resource    ../resources/frontend_cgehlen.resource

*** Test Cases ***
Cenário 8: Deixar campo nome diretoria em branco e Salvar
  Abrir navegador e acessar site
  Fazer login
  Deixar campo nome diretoria em branco e Salvar