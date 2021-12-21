*** Settings ***
#Library           SeleniumLibrary
Resource          ../resource/ResourceAcessandoSite.robot
# Resource    ../resource/ResourceAdicionandoCurriculo.robot
# Test SETUP        Abrir navegador
# Test TEARDOWN     Fechar navegador


*** Variables ***

# robot -d ./results tests\Test.....
*** Test Case ***

*** Test Case ***
Caso de Teste 01: Acessando site
       Abrir navegador
       acessar a página login do sistema MGPT

