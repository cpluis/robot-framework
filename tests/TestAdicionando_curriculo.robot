*** Settings ***
#Library           SeleniumLibrary
# Resource          ../resource/ResourceAdicionandoCurriculo.robot
Resource          ../resource/ResourceGSO.robot

#Test SETUP        Abrir navegador
#Test Teardown     Fechar navegador

*** Variables ***
${SENHA}        teste123
${PREPOSTO}     carlos_poitevin
${GSO}          rodrigo_cunha


# robot -d ./results tests\TestSitePretice.robot


*** Test Case ***
Caso de Teste 01: Logar como GSO
        Abrir navegador
        acessar a página login do sistema MGPT
        Digitar o login GSO "${GSO}" e senha "${SENHA}"
        Clicar no botão logar
        Conferir se a tela é tem "Lista de vagas"
        Clicar para Abrir vaga
        Preencher campos da vaga



# *** Test Case ***
# Caso de Teste 01: Adicionar Curriculo
#         acessar a página login do sistema MGPT
#         Digitar o login com perfil preposto "${PREPOSTO}" e senha "${SENHA}"
#         Clicar no botão logar
#         Conferir se a tela é tem "Lista de vagas"
#         Selecionar uma vaga
#         Adicionar informacões do candidato
#         Fechar navegador




