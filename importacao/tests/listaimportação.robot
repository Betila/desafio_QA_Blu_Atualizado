***Settings***
Documentation    Suite dos Testes de Lista de Importação

Resource    ../resources/base.robot

Test Setup       Open Session
Test Teardown    Close Session

# BDD
***Test Cases***
Validar Total Bruto
    Dado que acesso a página
    Quando contém o título "Lista de importações da sua loja"
    Então sistema deve exibir de Total bruto da importação

