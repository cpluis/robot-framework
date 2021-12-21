*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${BROWSER}       chrome
${URL}          https://mgpt-front-api.dev.sicredi.cloud/mgpt/
${CV}         C:\\Users\\luis.pires\\Desktop\\teste.pdf
${LGPD}         C:\\Users\\luis.pires\\Desktop\\LGPD.pdf

*** Keywords ***
### Setup e Teardown
Abrir navegador
    Open Browser    about:blank    ${BROWSER}
Fechar navegador
   Close Browser

### Passo a Passo
acessar a página login do sistema MGPT
    Go To   ${URL}

Digitar o login com perfil preposto "${LOGIN}" e senha "${SENHA}"
      Wait Until Element Is Visible     css=.login-page
      Input Text   id=fieldUser         ${LOGIN}
      Input Text   id=fieldPassword     ${SENHA}
 Clicar no botão logar
      Click Element                     id=btnSubmit

Conferir se a tela é tem "${TITULO_DA_TELA}"
      Wait Until Element Is Visible    css=sicredi-h1
      Page Should Contain    text   "${TITULO_DA_TELA}"

Selecionar uma vaga
        Wait Until Element Is Visible     css=tr td:nth-child(9) div:nth-child(1) sicredi-detail-action button
        Click Element                     css=tr td:nth-child(9) div:nth-child(1) sicredi-detail-action button
        
        Wait Until Element Is Visible     css=sicredi-button-primary button
        Click Element                     css=sicredi-button-primary button
        
Adicionar informacões do candidato         
    Wait Until Element Is Visible    css=[label="Nome completo do(a) profissional terceiro(a)"] input       
    Input Text                       css=[label="Nome completo do(a) profissional terceiro(a)"] input    Luis Pires Teste
    Input Text                       css=[label="E-mail"] input                                          luis@teste.com
    
    Input Text                       css=[label="CPF"] input                                              25257564017
    Click Element                    css=sicredi-select[label="Fornecedor"] div:nth-child(3)
    Wait Until Element Is Visible    css=p-dropdownitem:nth-child(1) li:nth-child(1)
    Click Element                    css=p-dropdownitem:nth-child(1) li:nth-child(1)
    Input Text                       css=[label="Data de nascimento"] input     01011978
    Click Element                    css=[label="Origem"] label    
    Click Element                    css=p-dropdownitem:nth-child(1) li:nth-child(1)    
    Choose File                      css=app-file-upload input    ${LGPD}
    Choose File                      css=app-file-upload input    ${CV}
    Click Element                    css=sicredi-button-primary:nth-child(1) button
    Click Element                    css=app-positive-modal sicredi-button-primary button


