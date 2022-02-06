*** Settings ***   
Resource       ../resource/Resource.robot
Test Setup     Abrir navegador
Task Teardown  Fechar navegador

*** Variables ***



*** Test Cases ***
Caso de teste 01: Pesquisar produto existente
    Acessar a pagina home do site   
    Digitar o nome do produto "Blouse" no campo de Pesquisar
    Clicar no botão Pesquisar
    Conferir se o produto "Blouse" foi listado no site

Caso de teste 02: Pesquisar produto não existente
    Acessar a pagina home do site
    Digitar o nome do produto "itemNãoExistente" no campo de Pesquisar
    Clicar no botão Pesquisar
    Conferir mensagem de erro "No results were found for your search "itemNãoExistente""

Caso de teste 03: Fazer login 
    Acessar a pagina home do site
    Clicar em Sign in 
    Digitar email/senha e logar
    Conferir se esta logado

Caso de teste 04: Deslogar do site
    Acessar a pagina home do site
    Clicar em Sign in 
    Digitar email/senha e logar
    Conferir se esta logado
    Deslogar do Site 
    Conferir se esta deslogado

    
    
   
#  *** Keywords ***
 