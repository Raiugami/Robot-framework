*** Settings ***
Library  SeleniumLibrary
Library  String

*** Variables ***
${URL}    http://Amazon.com.br
${BROWSER}  Chrome
${EMAIL}     gaah_aguiar@hotmail.com
${SENHA}     gabriel1533  


*** Keywords ***
Abrir navegador
    Open Browser    http://google.com.br  ${BROWSER}

Fechar navegador
    Close Browser

Acessar a pagina home do site
    Title Should Be   Amazon.com.br | Compre livros, Kindle, Echo, Fire Tv e mais.
Clicar em faça seu login
Informar email e continuar
Informar senha e clicar em fazer login
Pular etapa de registrar telefone
Verificar se esta logado

