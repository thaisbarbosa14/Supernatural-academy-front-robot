*** Settings ***

Resource    ../resources/frontend.resource

*** Test Cases ***
Cenário 1: Incluir diretoria e salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir diretoria e salvar
  
Cenário 2: Incluir diretoria já existente e salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir diretoria já existente e salvar 

Cenário 3: Incluir nova Diretoria como nome contendo 50 caracteres e Salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria como nome contendo 50 caracteres e Salvar  

Cenário 4: Incluir nova Diretoria como nome contendo 51 caracteres e Salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome contendo 51 caracteres e Salvar

Cenário 5: Incluir nova Diretoria com nome contendo caracter & e Salvar  
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome contendo caracter & e Salvar

Cenário 6: Incluir nova Diretoria com nome em letras maiúsculas e Salvar  
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome em letras maiúsculas e Salvar

Cenário 7: Incluir nova Diretoria com nome em letras minúsculas e Salvar  
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome em letras minúsculas e Salvar    

Cenário 8: Deixar campo nome diretoria em branco e Salvar
  Abrir navegador e acessar site
  Fazer login
  Deixar campo nome diretoria em branco e Salvar

Cenário 9: Incluir nova Diretoria com nome contendo caracter % e Salvar
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria com nome contendo caracter % e Salvar

Cenário 10: Incluir nova Diretoria e Cancelar opção NÃO
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria e Cancelar opção NÃO

Cenário 11: Incluir nova Diretoria e Cancelar opção SIM
  Abrir navegador e acessar site
  Fazer login
  Incluir nova Diretoria e Cancelar opção SIM  