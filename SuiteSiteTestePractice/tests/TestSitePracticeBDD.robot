*** Settings ***   
Resource       ../resource/Resource.robot
Test Setup     Abrir navegador
Task Teardown  Fechar navegador

*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   chrome

*** Test Cases ***
Cenario 01: Pesquisar produto existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na pagina de resultado da busca

Caso de teste 02: Pesquisar produto não existente
    Dado que estou na pagina home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a pagina deve exibir a mensagem "No results were found for your search "itemNãoExistente""

Caso de teste 03: Fazer login 
    Dado que estou na pagina home do site
    Quando eu clicar em Sign in
    Então devo informar email e senha
    Então a pagina deve exibir a mensagem de Sign out

Caso de teste 04: Deslogar do site
    Dado que estou na pagina home do site
    Quando eu clicar em Sign in
    Então devo informar email e senha
    Então a pagina deve exibir a mensagem de Sign out
    Então devo clicar em Sign out
    E conferir se o campo Sign in esta disponivel
   
*** Keywords ***
Abrir navegador
    Open Browser    ${URL}  ${BROWSER}

Fechar navegador
    Close Browser

Dado que estou na pagina home do site
    Acessar a pagina home do site
Quando eu pesquisar pelo produto "${PRODUTO}"
    Digitar o nome do produto "${PRODUTO}" no campo de Pesquisar
    Clicar no botão Pesquisar
Então o produto "${PRODUTO}" deve ser listado na pagina de resultado da busca
    Conferir se o produto "${PRODUTO}" foi listado no site
Então a pagina deve exibir a mensagem "${MENSAGEM_ERRO}"
    Conferir mensagem de erro "${MENSAGEM_ERRO}"
Quando eu clicar em Sign in
    Clicar em Sign in 
Então devo informar email e senha
    Digitar email/senha e logar
Então a pagina deve exibir a mensagem de Sign out
    Conferir se esta logado 
Então devo clicar em Sign out
    Deslogar do site
E conferir se o campo Sign in esta disponivel
    Conferir se esta deslogado






