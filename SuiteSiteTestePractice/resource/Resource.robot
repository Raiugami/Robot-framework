*** Settings ***
Library    SeleniumLibrary
Library    String
*** Variables ***
${URL}       http://automationpractice.com
${BROWSER}   chrome
${EMAIL}     gaah_aguiar@hotmail.com
${SENHA}     gabriel1533   

*** Keywords ***
Abrir navegador
    Open Browser    http://automationpractice.com   ${BROWSER}

Fechar navegador
    Close Browser

Acessar a pagina home do site
    Title Should Be   My Store

Digitar o nome do produto "${PRODUTO}" no campo de Pesquisar
    Input Text   id=search_query_top  ${PRODUTO}
 
Clicar no botão Pesquisar
    Click Button    name=submit_search
    
Conferir se o produto "${PRODUTO}" foi listado no site
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/h1
    Title Should Be                  Search - My Store
    Page Should Contain Image        xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']                                
    Page Should Contain Link         xpath=//*[@id="center_column"]/ul/li/div/div[2]/h5/a
    Sleep    5

Conferir mensagem de erro "${MENSAGEM_ERRO}"
    Wait Until Element Is Visible    xpath=//*[@id="center_column"]/p 
    Sleep    5
    Element Text Should Be           xpath=//*[@id="center_column"]/p   ${MENSAGEM_ERRO}    

Clicar em Sign in 
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a 

Digitar email/senha e logar
     Wait Until Element Is Visible    xpath=//*[@id="login_form"]/h3
     Input Text        id=email      ${EMAIL}
     Input Password    id=passwd     ${SENHA}
     Sleep    2
     Click Button      id=SubmitLogin
     
Conferir se esta logado 
     Wait Until Element Is Visible    xpath=//*[@id="header"]/div[2]/div/div/nav/div[2]/a
     Page Should Contain Element      xpath=//*[@id="header"]/div[2]/div/div/nav/div[2]/a
     Sleep    5

Conferir se esta deslogado
    Page Should Contain Element   xpath=//*[@id="header"]/div[2]/div/div/nav/div[1]/a  

Deslogar do site
    Click Element    xpath=//*[@id="header"]/div[2]/div/div/nav/div[2]/a








 




					
