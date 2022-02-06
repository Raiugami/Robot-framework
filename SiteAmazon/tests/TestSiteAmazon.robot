*** Settings ***
Resource    ../resource/ResourceAmazon.robot
Test Setup     Abrir navegador
Task Teardown  Fechar navegador


*** Variables ***

*** Test Cases ***
Caso de teste 01: Login
     Acessar a pagina home do site
     Clicar em faça seu login
     Informar email e continuar
     Informar senha e clicar em fazer login
     Pular etapa de registrar telefone
     Verificar se esta logado
     


    