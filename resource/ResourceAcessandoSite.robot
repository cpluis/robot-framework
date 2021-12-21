

*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${BROWSER}     chrome
${URL}         http://4alltests.com.br/


*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser     ${BROWSER}
  
### Passo a Passo
acessar a página login do sistema MGPT
    Go To   ${URL}

